import os
import json
import requests
from fastapi import FastAPI, HTTPException
from pydantic import BaseModel
from dotenv import load_dotenv
from openai import OpenAI
from typing import Any, Dict

def load_env():
    load_dotenv()
    OPENAI_API_KEY = os.getenv("OPENAI_API_KEY")
    MCP_SERVER_HOST = os.getenv("MCP_SERVER_HOST", "http://localhost")
    if not OPENAI_API_KEY:
        raise RuntimeError("OPENAI_API_KEY is not set in .env")
    return OPENAI_API_KEY, MCP_SERVER_HOST

OPENAI_API_KEY, MCP_SERVER_HOST = load_env()

client = OpenAI(api_key=OPENAI_API_KEY)
app = FastAPI(title="MCP EDA Agent Client")

class Instruction(BaseModel):
    user_query: str

class AgentResponse(BaseModel):
    tool_called: str
    tool_input: dict
    tool_output: dict

TOOLS = {
    "synth_setup": {"endpoint": "setup",   "port": 13333},
    "synth_compile": {"endpoint": "compile", "port": 13334},
    "floorplan": {"endpoint": "floorplan", "port": 13335},
    "powerplan": {"endpoint": "power",     "port": 13336},
    "placement": {"endpoint": "place",     "port": 13337},
    "cts": {"endpoint": "cts",             "port": 13338},
    "route": {"endpoint": "route",         "port": 13339},
    "save": {"endpoint": "save",           "port": 13440},
}

DEFAULTS = {
    "synth_setup":    {"design": "",        "tech": "FreePDK45", "version_idx": 0, "force": True},
    "synth_compile":  {"design": "",        "tech": "FreePDK45", "version_idx": 0, "force": True},
    "floorplan":      {"design": "", "top_module": "", "tech": "FreePDK45", "syn_ver": "", "g_idx": 0, "p_idx": 0, "force": True},
    "powerplan":      {"design": "", "top_module": "", "tech": "FreePDK45", "impl_ver": "", "restore_enc": "", "force": True},
    "placement":      {"design": "", "top_module": "", "tech": "FreePDK45", "impl_ver": "", "g_idx": 0, "p_idx": 0, "restore_enc": "", "force": True},
    "cts":            {"design": "", "top_module": "", "tech": "FreePDK45", "impl_ver": "", "g_idx": 0, "c_idx": 0, "restore_enc": "", "force": True},
    "route":          {"design": "", "top_module": "", "tech": "FreePDK45", "impl_ver": "", "g_idx": 0, "p_idx": 0, "c_idx": 0, "restore_enc": "", "force": True},
    "save":           {"design": "", "top_module": "", "tech": "FreePDK45", "impl_ver": "", "archive": True, "force": True},
}

def detect_syn_ver(design: str) -> str:
    synth_dir = os.path.join("designs", design, "FreePDK45", "synthesis")
    subdirs = [os.path.join(synth_dir, d) for d in os.listdir(synth_dir)
               if os.path.isdir(os.path.join(synth_dir, d))]
    return os.path.basename(max(subdirs, key=os.path.getmtime))


def make_impl_ver(syn_ver: str, g_idx: int, p_idx: int) -> str:
    return f"{syn_ver}__g{g_idx}_p{p_idx}"

@app.post("/agent", response_model=AgentResponse)
def agent_endpoint(inst: Instruction):
    SYSTEM_PROMPT = (
        "You are an MCP-EDA agent. Given a user request, select one tool and "
        "return a valid JSON with 'tool' and 'tool_input'. Use double quotes only.\n"
        f"Available tools: {', '.join(TOOLS.keys())}"
    )

    resp = client.chat.completions.create(
        model="gpt-4",
        messages=[
            {"role": "system", "content": SYSTEM_PROMPT},
            {"role": "user",   "content": inst.user_query}
        ],
        temperature=0.0,
        max_tokens=256,
    )
    assistant_msg = resp.choices[0].message.content.strip()

    try:
        plan = json.loads(assistant_msg)
        tool = plan["tool"]
        user_input = plan.get("tool_input", {})
    except Exception as e:
        raise HTTPException(status_code=400, detail=f"Invalid JSON: {e}\n{assistant_msg}")

    if tool not in TOOLS:
        raise HTTPException(status_code=400, detail=f"Unknown tool: {tool}")

    if not user_input.get("design"):
        raise HTTPException(status_code=400, detail="Please tell me your design name (designs/<design>) ")
    if tool not in ["synth_setup", "synth_compile"] and not user_input.get("top_module"):
        raise HTTPException(status_code=400, detail="Please tell me your top_module name (The module name corresponding to the .v file) ")

    design     = user_input["design"]
    top_module = user_input.get("top_module", "")

    if tool == "floorplan" and not user_input.get("syn_ver"):
        user_input["syn_ver"] = detect_syn_ver(design)

    if tool in ["powerplan", "placement", "cts", "route", "save"]:
        g_idx = user_input.get("g_idx", 0)
        p_idx = user_input.get("p_idx", 0)
        c_idx = user_input.get("c_idx", 0)
        syn_ver = user_input.get("syn_ver", detect_syn_ver(design))
        impl_ver = user_input.get("impl_ver", make_impl_ver(syn_ver, g_idx, p_idx))
        user_input["impl_ver"] = impl_ver

        base = os.path.join("designs", design, "FreePDK45", "implementation", impl_ver, "pnr_save")
        if tool == "powerplan"   and not user_input.get("restore_enc"):
            user_input["restore_enc"] = os.path.join(base, "floorplan.enc.dat")
        if tool == "placement"   and not user_input.get("restore_enc"):
            user_input["restore_enc"] = os.path.join(base, "powerplan.enc.dat")
        if tool == "cts"         and not user_input.get("restore_enc"):
            user_input["restore_enc"] = os.path.join(base, "placement.enc.dat")
        if tool == "route"       and not user_input.get("restore_enc"):
            user_input["restore_enc"] = os.path.join(base, "cts.enc.dat")

    payload = {**DEFAULTS[tool], **user_input}

    info = TOOLS[tool]
    url = f"{MCP_SERVER_HOST}:{info['port']}/{info['endpoint']}/run"
    res = requests.post(url, json=payload)
    if not res.ok:
        raise HTTPException(status_code=500, detail=f"Error calling {tool}: {res.text}")

    return AgentResponse(tool_called=tool, tool_input=payload, tool_output=res.json())

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)
