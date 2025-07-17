#!/usr/bin/env python3

from typing import Optional
import subprocess, pathlib, datetime, os, logging, sys, csv, argparse   
from fastapi import FastAPI
from pydantic import BaseModel

os.environ["PATH"] = (
    "/opt/cadence/innovus221/tools/bin:"
    "/opt/cadence/genus172/bin:" + os.environ.get("PATH", "")
)

ROOT     = pathlib.Path(__file__).resolve().parent.parent
LOG_ROOT = ROOT / "logs"
LOG_ROOT.mkdir(exist_ok=True)
LOG_DIR  = LOG_ROOT / "placement"
LOG_DIR.mkdir(parents=True, exist_ok=True)

logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s [%(levelname)s] %(message)s",
    handlers=[
        logging.FileHandler(LOG_ROOT / "pl_api.log"), 
        logging.StreamHandler(sys.stdout),
    ],
)

BACKEND = ROOT / "scripts" / "FreePDK45" / "backend"
IMP_CSV = ROOT / "config" / "imp_global.csv"
PLC_CSV = ROOT / "config" / "placement.csv"

class PlReq(BaseModel):
    design:      str
    tech:        str = "FreePDK45"
    impl_ver:    str
    restore_enc: str
    force:       bool = False
    top_module:  Optional[str] = None
    g_idx:       int = 0
    p_idx:       int = 0

class PlResp(BaseModel):
    status:     str
    log_path:   str
    report:     str

def read_csv_row(path: pathlib.Path, idx: int) -> dict:
    rows = list(csv.DictReader(path.open()))
    if idx >= len(rows):
        raise IndexError(f"{path.name}: row {idx} out of range (total {len(rows)})")
    return rows[idx]

def run(cmd: str, log_file: pathlib.Path, cwd: pathlib.Path, env_extra: dict):
    env = os.environ.copy()
    env.update(env_extra)
    with log_file.open("w") as lf, subprocess.Popen(
        cmd,
        cwd=str(cwd),
        shell=True,
        universal_newlines=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        executable="/bin/bash",
        env=env,
    ) as p:
        for line in p.stdout:
            lf.write(line)
        p.wait()
    if p.returncode != 0:
        raise RuntimeError(f"command exited {p.returncode}")

app = FastAPI(title="MCP · Placement Service")

@app.post("/place/run", response_model=PlResp)
def place_run(req: PlReq):
    des_root = ROOT / "designs" / req.design / req.tech
    impl_dir = des_root / "implementation" / req.impl_ver
    if not impl_dir.exists():
        return PlResp(status="error: implementation dir not found", log_path="", report="")

    floor_enc = pathlib.Path(req.restore_enc)
    if not floor_enc.exists():
        return PlResp(status="error: restore_enc not found", log_path="", report="")

    top = req.top_module
    
    env = {"BASE_DIR": str(ROOT)}
    env.update(read_csv_row(IMP_CSV, req.g_idx))
    env.update(read_csv_row(PLC_CSV, req.p_idx))
    env.setdefault("TOP_NAME",    top)
    env.setdefault("FILE_FORMAT", "verilog")

    syn_ver     = req.impl_ver.split("__", 1)[0]
    netlist_dir = ROOT / "designs" / req.design / req.tech / "synthesis" / syn_ver / "results"
    env["NETLIST_DIR"] = str(netlist_dir)

    # place_tcl = BACKEND / "4_place.tcl"
    # files_arg = str(place_tcl)

    place_tcl = BACKEND / "4_place.tcl"

    files_list = [
        str(place_tcl),
    ]
    files_arg = " ".join(files_list)

    exec_cmd = (
        # f'set NETLIST_DIR "{netlist_dir}"; '
        f'restoreDesign "{floor_enc.resolve()}" {top}; '
    )

    innovus_cmd = (
        f'innovus -no_gui -batch '
        f'-execute "{exec_cmd}" '
        f'-files "{files_arg}"'
    )

    ts = datetime.datetime.now().strftime("%Y%m%d_%H%M%S")
    log_file = LOG_DIR / f"{req.design}_pl_{ts}.log"
    try:
        run(innovus_cmd, log_file, impl_dir, env)
    except Exception as e:
        return PlResp(status=f"error: {e}", log_path=str(log_file), report="")

    enc_path = impl_dir / "pnr_save" / "placement.enc"
    if not enc_path.exists():
        return PlResp(
            status="error: Placement did not produce placement.enc",
            log_path=str(log_file),
            report=""
        )

    rpt = impl_dir / "pnr_reports" / "check_place.out"
    report_text = rpt.read_text(errors="ignore") if rpt.exists() else "check_place.out not found"

    return PlResp(status="ok", log_path=str(log_file), report=report_text)

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--port",
        type=int,
        default=int(os.getenv("PLACEMENT_PORT", 13337)),
        help="listen port (env PLACEMENT_PORT overrides; default 13337)",
    )
    args = parser.parse_args()

    import uvicorn
    uvicorn.run(
        "placement_server:app",
        host="0.0.0.0",
        port=args.port,
        reload=False,
    )