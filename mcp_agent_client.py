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
    "synth_setup":    {"design": "",        "tech": "FreePDK45", "version_idx": 0, "force": False},
    "synth_compile":  {"design": "",        "tech": "FreePDK45", "version_idx": 0, "force": False},
    "floorplan":      {"design": "", "top_module": "", "tech": "FreePDK45", "syn_ver": "", "g_idx": 0, "p_idx": 0, "force": False, "restore_enc": None},
    "powerplan":      {"design": "", "top_module": "", "tech": "FreePDK45", "impl_ver": "", "restore_enc": "", "force": False, "g_idx": 0},
    "placement":      {"design": "", "top_module": "", "tech": "FreePDK45", "impl_ver": "", "restore_enc": "", "force": False, "g_idx": 0, "p_idx": 0},
    "cts":            {"design": "", "top_module": "", "tech": "FreePDK45", "impl_ver": "", "restore_enc": "", "force": False, "g_idx": 0, "c_idx": 0},
    "route":          {"design": "", "top_module": "", "tech": "FreePDK45", "impl_ver": "", "restore_enc": "", "force": False, "g_idx": 0, "p_idx": 0, "c_idx": 0},
    "save":           {"design": "", "top_module": "", "tech": "FreePDK45", "impl_ver": "", "archive": True, "force": False},
}

def detect_syn_ver(design: str) -> str:
    synth_dir = os.path.join("designs", design, "FreePDK45", "synthesis")
    if not os.path.exists(synth_dir):
        return ""
    subdirs = [os.path.join(synth_dir, d) for d in os.listdir(synth_dir)
               if os.path.isdir(os.path.join(synth_dir, d))]
    if not subdirs:
        return ""
    return os.path.basename(max(subdirs, key=os.path.getmtime))

def make_impl_ver(syn_ver: str, g_idx: int, p_idx: int) -> str:
    return f"{syn_ver}__g{g_idx}_p{p_idx}"

def check_enc_file_status(tool: str, design: str, impl_ver: str) -> dict:
    base_path = os.path.join("designs", design, "FreePDK45", "implementation", impl_ver, "pnr_save")
    
    enc_files = {
        "floorplan": "floorplan.enc.dat",
        "powerplan": "powerplan.enc.dat", 
        "placement": "placement.enc.dat",
        "cts": "cts.enc.dat",
        "route": "route.enc.dat"
    }
    
    if tool not in enc_files:
        return {"enc_file_status": "not_applicable", "enc_file_path": ""}
    
    enc_file_name = enc_files[tool]
    enc_file_path = os.path.join(base_path, enc_file_name)
    
    if os.path.exists(enc_file_path):
        return {
            "enc_file_status": "generated", 
            "enc_file_path": enc_file_path,
            "file_size": os.path.getsize(enc_file_path) if os.path.isfile(enc_file_path) else "directory"
        }
    else:
        return {
            "enc_file_status": "not_found", 
            "enc_file_path": enc_file_path
        }

@app.post("/agent", response_model=AgentResponse)
def agent_endpoint(inst: Instruction):
    SYSTEM_PROMPT = (
        "You are an MCP-EDA agent. Given a user request, select one tool and "
        "return a valid JSON with 'tool' and 'tool_input'. Use double quotes only.\n"
        f"Available tools: {', '.join(TOOLS.keys())}\n"
        "Tool descriptions:\n"
        "- synth_setup: Synthesis setup stage\n"
        "- synth_compile: Synthesis compile stage\n"
        "- floorplan: Floorplanning stage\n"
        "- powerplan: Power planning stage\n"
        "- placement: Placement stage\n"
        "- cts: Clock tree synthesis stage\n"
        "- route: Routing stage\n"
        "- save: Save design artifacts stage\n"
        "Important: Always extract 'design' parameter from user query."
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
        import re
        design_match = re.search(r'design\s+(\w+)', inst.user_query, re.IGNORECASE)
        if design_match:
            user_input["design"] = design_match.group(1)
        else:
            raise HTTPException(status_code=400, detail="Please tell me your design name (designs/<design>) ")
    
    if tool not in ["synth_setup", "synth_compile"] and not user_input.get("top_module"):
        import re
        top_module_match = re.search(r'top_module\s+(\w+)', inst.user_query, re.IGNORECASE)
        if top_module_match:
            user_input["top_module"] = top_module_match.group(1)
        else:
            raise HTTPException(status_code=400, detail="Please tell me your top_module name (The module name corresponding to the .v file) ")
    
    import re
    if not user_input.get("g_idx") and "g_idx" in inst.user_query:
        g_idx_match = re.search(r'g_idx\s*=\s*(\d+)', inst.user_query)
        if g_idx_match:
            user_input["g_idx"] = int(g_idx_match.group(1))
    
    if not user_input.get("p_idx") and "p_idx" in inst.user_query:
        p_idx_match = re.search(r'p_idx\s*=\s*(\d+)', inst.user_query)
        if p_idx_match:
            user_input["p_idx"] = int(p_idx_match.group(1))
    
    if not user_input.get("c_idx") and "c_idx" in inst.user_query:
        c_idx_match = re.search(r'c_idx\s*=\s*(\d+)', inst.user_query)
        if c_idx_match:
            user_input["c_idx"] = int(c_idx_match.group(1))
    
    if not user_input.get("version_idx") and "version_idx" in inst.user_query:
        version_idx_match = re.search(r'version_idx\s*=\s*(\d+)', inst.user_query)
        if version_idx_match:
            user_input["version_idx"] = int(version_idx_match.group(1))
    
    if not user_input.get("impl_ver") and "impl_ver" in inst.user_query:
        impl_ver_match = re.search(r'impl_ver\s*=\s*["\']([^"\']+)["\']', inst.user_query)
        if impl_ver_match:
            user_input["impl_ver"] = impl_ver_match.group(1)
    
    if not user_input.get("restore_enc") and "restore_enc" in inst.user_query:
        restore_enc_match = re.search(r'restore_enc\s*=\s*["\']([^"\']+)["\']', inst.user_query)
        if restore_enc_match:
            user_input["restore_enc"] = restore_enc_match.group(1)

    design     = user_input["design"]
    top_module = user_input.get("top_module", "")

    if tool == "floorplan":
        if not user_input.get("syn_ver"):
            user_input["syn_ver"] = detect_syn_ver(design)
        if not user_input["syn_ver"]:
            raise HTTPException(status_code=400, detail=f"No synthesis version found for design {design}")

    if tool in ["powerplan", "placement", "cts", "route", "save"]:
        g_idx = user_input.get("g_idx", 0)
        p_idx = user_input.get("p_idx", 0)
        c_idx = user_input.get("c_idx", 0)
        
        syn_ver = user_input.get("syn_ver", detect_syn_ver(design))
        if not syn_ver:
            raise HTTPException(status_code=400, detail=f"No synthesis version found for design {design}")
        
        if not user_input.get("impl_ver"):
            impl_ver = make_impl_ver(syn_ver, g_idx, p_idx)
            user_input["impl_ver"] = impl_ver

        if tool in ["powerplan", "placement", "cts", "route"] and not user_input.get("restore_enc"):
            raise HTTPException(status_code=400, detail=f"Please specify restore_enc path for {tool} stage")

    payload = {**DEFAULTS[tool], **user_input}

    info = TOOLS[tool]
    url = f"{MCP_SERVER_HOST}:{info['port']}/{info['endpoint']}/run"
    
    try:
        res = requests.post(url, json=payload, timeout=300)
        if not res.ok:
            raise HTTPException(status_code=500, detail=f"Error calling {tool}: {res.text}")
    except requests.exceptions.RequestException as e:
        raise HTTPException(status_code=500, detail=f"Network error calling {tool}: {str(e)}")

    tool_output = res.json()
    
    if tool in ["floorplan", "powerplan", "placement", "cts", "route"]:
        impl_ver = user_input.get("impl_ver", "")
        enc_status = check_enc_file_status(tool, design, impl_ver)
        tool_output.update(enc_status)

    return AgentResponse(tool_called=tool, tool_input=payload, tool_output=tool_output)

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)
