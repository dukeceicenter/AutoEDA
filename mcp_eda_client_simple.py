#!/usr/bin/env python3
import asyncio
import json
import re
from pathlib import Path
from mcp.client.stdio import StdioServerParameters, stdio_client
from mcp.client.session import ClientSession

def extract_params(user_input: str) -> dict:
    params = {}
    m = re.search(r"design\s*([\w\d_]+)", user_input, re.IGNORECASE)
    if m:
        params["design"] = m.group(1)
    m = re.search(r"top[_ ]?module\s*([\w\d_]+)", user_input, re.IGNORECASE)
    if m:
        params["top_module"] = m.group(1)
    m = re.search(r"tech\s*([\w\d_]+)", user_input, re.IGNORECASE)
    if m:
        params["tech"] = m.group(1)
    m = re.search(r"version[_ ]?idx\s*(\d+)", user_input, re.IGNORECASE)
    if m:
        params["version_idx"] = int(m.group(1))
    for key in ["g_idx", "p_idx", "c_idx"]:
        m = re.search(rf"{key}\s*(\d+)", user_input)
        if m:
            params[key] = int(m.group(1))
    for key in ["syn_ver", "impl_ver", "restore_enc"]:
        m = re.search(rf"{key}\s*([\w\d_\-]+)", user_input)
        if m:
            params[key] = m.group(1)
    if re.search(r"force", user_input, re.IGNORECASE):
        params["force"] = True
    return params

def smart_complete(tool: str, params: dict) -> dict:
    if "tech" not in params:
        params["tech"] = "FreePDK45"
    if "version_idx" not in params:
        params["version_idx"] = 0
    if "force" not in params:
        params["force"] = False
    if tool in ["floor_planning", "power_planning", "placement", "clock_tree_synthesis", "routing", "save_design", "run_complete_flow"]:
        if "top_module" not in params and "design" in params:
            config_path = Path("designs") / params["design"] / "config.tcl"
            if config_path.exists():
                content = config_path.read_text(errors="ignore")
                m = re.search(r'(TOP_MODULE|TOP_NAME)\s*=\s*"([^"]+)"', content)
                if m:
                    params["top_module"] = m.group(2)
    if tool == "floor_planning" and "syn_ver" not in params and "design" in params:
        synth_dir = Path("designs") / params["design"] / "FreePDK45" / "synthesis"
        if synth_dir.exists():
            subdirs = [d for d in synth_dir.iterdir() if d.is_dir()]
            if subdirs:
                params["syn_ver"] = max(subdirs, key=lambda p: p.stat().st_mtime).name
    return params

TOOL_ALIASES = {
    "synthesis_setup": "synthesis_setup",
    "setup": "synthesis_setup",
    "compile": "synthesis_compile",
    "synthesis_compile": "synthesis_compile",
    "floor_planning": "floor_planning",
    "floorplan": "floor_planning",
    "power_planning": "power_planning",
    "power": "power_planning",
    "placement": "placement",
    "clock_tree_synthesis": "clock_tree_synthesis",
    "cts": "clock_tree_synthesis",
    "routing": "routing",
    "route": "routing",
    "save_design": "save_design",
    "save": "save_design",
    "run_complete_flow": "run_complete_flow",
    "flow": "run_complete_flow"
}

def match_tool(user_input: str, tool_list: list) -> str:
    for k, v in TOOL_ALIASES.items():
        if k in user_input.lower():
            return v
    for tool in tool_list:
        if tool in user_input.lower():
            return tool
    return ""

async def interactive_client():
    server_path = Path(__file__).parent / "server" / "mcp" / "mcp_eda_server.py"
    server_params = StdioServerParameters(
        command="python3",
        args=[str(server_path)],
        env={"PYTHONPATH": str(Path(__file__).parent)}
    )
    print("=== Interactive MCP EDA Client ===")
    async with stdio_client(server_params) as (read_stream, write_stream):
        async with ClientSession(read_stream, write_stream) as session:
            await session.initialize()
            print("Connected to MCP server. Type help for commands, exit to quit.\n")
            tools_result = await session.list_tools()
            tool_names = [t.name for t in tools_result.tools]
            while True:
                user_input = input("MCP> ").strip()
                if user_input.lower() in ["exit", "quit", "q"]:
                    print("Goodbye!")
                    break
                if user_input.lower() in ["help", "h", "?"]:
                    print("""
Available commands:
  list                List all tools
  call <tool> <args>  Call specific tool (supports natural language)
  Direct input        Smart recognition and tool calling
  exit                Exit client
Examples:
  call synthesis_setup design b14
  call floorplan design b14 top_module b14
  Please run synthesis setup for b14 design
  Run floorplan for b14 design with top module b14
                    """)
                    continue
                if user_input.lower() == "list":
                    print("Available tools:")
                    for t in tools_result.tools:
                        print(f"  - {t.name}: {t.description}")
                    continue
                if user_input.startswith("call "):
                    parts = user_input[5:].strip().split()
                    if not parts:
                        print("Please specify tool name!")
                        continue
                    tool = match_tool(parts[0], tool_names)
                    if not tool:
                        print(f"Unknown tool: {parts[0]}")
                        continue
                    param_str = " ".join(parts[1:])
                    params = extract_params(param_str)
                    params = smart_complete(tool, params)
                else:
                    tool = match_tool(user_input, tool_names)
                    if not tool:
                        print("Cannot recognize tool to call, please type help for usage.")
                        continue
                    params = extract_params(user_input)
                    params = smart_complete(tool, params)
                tool_obj = next((t for t in tools_result.tools if t.name == tool), None)
                missing = []
                param_keys = []
                if tool_obj is not None:
                    if hasattr(tool_obj, 'parameters') and tool_obj.parameters:
                        param_keys = [p for p in tool_obj.parameters if getattr(tool_obj.parameters[p], 'required', False)]
                    elif hasattr(tool_obj, 'signature') and tool_obj.signature:
                        for pname, param in tool_obj.signature.parameters.items():
                            if param.default is param.empty:
                                param_keys.append(pname)
                    else:
                        print(f"Cannot automatically get parameter definitions, tool object attributes: {dir(tool_obj)}")
                    for p in param_keys:
                        if p not in params:
                            missing.append(p)
                    if missing:
                        print(f"Missing parameters: {missing}, please add them and try again.")
                        continue
                else:
                    print(f"Unknown tool: {tool}, please check tool name.")
                    continue
                print(f"Calling tool: {tool}, parameters: {params}")
                try:
                    result = await session.call_tool(tool, arguments=params)
                    if result.content and len(result.content) > 0:
                        print("Result:")
                        print(result.content[0].text)
                    else:
                        print("Tool returned empty result")
                except Exception as e:
                    print(f" Tool call failed: {e}")

if __name__ == "__main__":
    asyncio.run(interactive_client()) 