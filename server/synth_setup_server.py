#!/usr/bin/env python3

import subprocess, os, pathlib, datetime, argparse     
from fastapi import FastAPI
from pydantic import BaseModel

ROOT    = pathlib.Path(__file__).resolve().parent.parent
RUN_SH  = ROOT / "scripts" / "run_synthesis_example.sh"
LOG_DIR = ROOT / "logs" / "setup"
LOG_DIR.mkdir(parents=True, exist_ok=True)

class SetupReq(BaseModel):
    design:      str
    tech:        str = "FreePDK45"
    version_idx: int = 0
    force:       bool = False

class SetupResp(BaseModel):
    status:   str
    log_path: str
    reports:  dict

def run_shell(cmd: str, cwd: pathlib.Path, log_file: pathlib.Path):
    with log_file.open("w") as lf:
        p = subprocess.Popen(
            cmd,
            cwd=str(cwd),
            shell=True,
            universal_newlines=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
            executable="/bin/bash",
        )
        for line in p.stdout:
            lf.write(line)
        p.wait()
    if p.returncode != 0:
        raise RuntimeError(f"command exited {p.returncode}")

app = FastAPI(title="MCP · Synthesis-Setup Service")

@app.post("/setup/run", response_model=SetupResp)
def synth_setup(req: SetupReq):
    ts       = datetime.datetime.now().strftime("%Y%m%d_%H%M%S")
    log_file = LOG_DIR / f"{req.design}_setup_{ts}.log"

    cmd  = (
        f"SYN_ONLY=1 /usr/bin/python3 -u scripts/_helper/synthesis_config_row_no_dbg.py "
        f"--design {req.design} "
        f"--version-idx {req.version_idx} "
        f"--tech {req.tech}"
    )
    if req.force:
        cmd += " --force-overwrite"

    try:
        run_shell(cmd, ROOT, log_file)
    except Exception as e:
        return SetupResp(status=f"error: {e}", log_path=str(log_file), reports={})

    synth_root = ROOT / "designs" / req.design / req.tech / "synthesis"
    if not synth_root.exists():
        return SetupResp(status="error: synthesis directory not found",
                         log_path=str(log_file), reports={})

    latest_ver = max(synth_root.iterdir(), key=lambda p: p.stat().st_mtime)
    rpt_path   = latest_ver / "reports" / "check_design.rpt"
    rpt_text   = rpt_path.read_text() if rpt_path.exists() else "check_design.rpt not generated"

    return SetupResp(
        status   = "ok",
        log_path = str(log_file),
        reports  = {"check_design.rpt": rpt_text},
    )

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--port",
        type=int,
        default=int(os.getenv("SETUP_PORT", 13333)),
        help="listen port (env SETUP_PORT overrides; default 13333)",
    )
    args = parser.parse_args()

    import uvicorn
    uvicorn.run(
        "synth_setup_server:app",
        host="0.0.0.0",
        port=args.port,
        reload=False,
    )