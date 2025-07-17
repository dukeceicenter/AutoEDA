#!/usr/bin/env python3


from typing import Optional, Dict
import subprocess, pathlib, datetime, os, logging, sys, csv, argparse
from fastapi import FastAPI
from pydantic import BaseModel

os.environ["PATH"] = (
    "/opt/cadence/innovus221/tools/bin:"
    "/opt/cadence/genus172/bin:" + os.environ.get("PATH", "")
)

ROOT     = pathlib.Path(__file__).resolve().parent.parent
LOG_ROOT = ROOT / "logs"; LOG_ROOT.mkdir(exist_ok=True)
LOG_DIR  = LOG_ROOT / "route"; LOG_DIR.mkdir(parents=True, exist_ok=True)

logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s [%(levelname)s] %(message)s",
    handlers=[
        logging.FileHandler(LOG_ROOT / "route_api.log"),
        logging.StreamHandler(sys.stdout),
    ],
)

BACKEND_DIR_TMPL = ROOT / "scripts" / "{tech}" / "backend"
IMP_CSV = ROOT / "config" / "imp_global.csv"
PLC_CSV = ROOT / "config" / "placement.csv"
CTS_CSV = ROOT / "config" / "cts.csv"

ROUTE_RPTS = [
    "route_summary.rpt",
    "postRoute_drc_max1M.rpt",
    "congestion.rpt",
    "postOpt_drc_max1M.rpt",
    "route_timing.rpt.gz",
]

class RtReq(BaseModel):
    design:      str
    tech:        str = "FreePDK45"
    impl_ver:    str
    g_idx:       int = 0
    p_idx:       int = 0
    c_idx:       int = 0
    restore_enc: str
    force:       bool = False
    top_module:  Optional[str] = None

class RtResp(BaseModel):
    status:    str
    log_path:  str
    rpt_paths: Dict[str, str]

def safe_unlink(path: pathlib.Path):
    try:
        path.unlink()
    except FileNotFoundError:
        pass

def read_csv_row(path: pathlib.Path, idx: int) -> dict:
    rows = list(csv.DictReader(path.open()))
    if idx >= len(rows):
        raise IndexError("%s row %d OOR" % (path.name, idx))
    return rows[idx]

def run(cmd: str, log_file: pathlib.Path, cwd: pathlib.Path, env_extra: dict):
    env = os.environ.copy(); env.update(env_extra)
    with log_file.open("w") as lf, subprocess.Popen(
        cmd, cwd=str(cwd), shell=True, executable="/bin/bash",
        universal_newlines=True,
        stdout=subprocess.PIPE, stderr=subprocess.STDOUT, env=env,
    ) as p:
        for ln in p.stdout: lf.write(ln)
        p.wait()
    if p.returncode != 0:
        raise RuntimeError("Innovus exited %d" % p.returncode)

app = FastAPI(title="MCP · Routing Service")

@app.post("/route/run", response_model=RtResp)
def route_run(req: RtReq):
    des_root = ROOT / "designs" / req.design / req.tech
    impl_dir = des_root / "implementation" / req.impl_ver
    if not impl_dir.exists():
        return RtResp(status="error: implementation dir not found", log_path="", rpt_paths={})

    cts_enc = pathlib.Path(req.restore_enc)
    if not cts_enc.exists():
        return RtResp(status="error: restore_enc not found", log_path="", rpt_paths={})

    rpt_dir = impl_dir / "pnr_reports"; rpt_dir.mkdir(exist_ok=True)
    if req.force:
        for rpt in ROUTE_RPTS:
            safe_unlink(rpt_dir / rpt)
        safe_unlink(impl_dir / "pnr_save" / "route.enc")

    top = req.top_module or parse_top_from_config(des_root.parent / "config.tcl") or req.design

    env = {"BASE_DIR": str(ROOT), "TOP_NAME": top, "FILE_FORMAT": "verilog"}
    env.update(read_csv_row(IMP_CSV, req.g_idx))
    env.update(read_csv_row(PLC_CSV, req.p_idx))
    env.update(read_csv_row(CTS_CSV, req.c_idx))

    backend_dir = pathlib.Path(str(BACKEND_DIR_TMPL).format(tech=req.tech))
    route_tcl   = backend_dir / "7_route.tcl"

    exec_cmd   = 'restoreDesign "{}" "{}"'.format(cts_enc.resolve(), top)
    innovus_cmd = 'innovus -no_gui -batch -files "{}" -execute "{}"'.format(route_tcl, exec_cmd)

    ts       = datetime.datetime.now().strftime("%Y%m%d_%H%M%S")
    log_file = LOG_DIR / f"{req.design}_route_{ts}.log"

    try:
        run(innovus_cmd, log_file, impl_dir, env)
    except Exception as e:
        return RtResp(status="error: %s" % e, log_path=str(log_file), rpt_paths={})

    rpt_paths = {r: (rpt_dir / r).exists() and str((rpt_dir / r).relative_to(ROOT)) or "not found"
                 for r in ROUTE_RPTS}

    return RtResp(status="ok", log_path=str(log_file), rpt_paths=rpt_paths)

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--port", type=int,
                        default=int(os.getenv("ROUTE_PORT", 13339)),
                        help="listen port (env ROUTE_PORT overrides; default 13339)")
    args = parser.parse_args()

    import uvicorn
    uvicorn.run("route_server:app", host="0.0.0.0", port=args.port, reload=False)