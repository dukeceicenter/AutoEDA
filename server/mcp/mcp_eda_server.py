#!/usr/bin/env python3
"""
MCP EDA Server - Complete RTL to GDSII Electronic Design Automation Flow
Provides comprehensive EDA tools for digital design implementation using Synopsys Design Compiler and Cadence Innovus
"""
import json
import os
import pathlib
import requests
import subprocess
import sys
from typing import Optional, Dict, Any
from mcp.server.fastmcp import FastMCP

# Project root directory
ROOT = pathlib.Path(__file__).resolve().parent.parent.parent

# EDA microservices configuration
EDA_SERVERS = {
    "synth_setup": {"port": 13333, "endpoint": "setup"},
    "synth_compile": {"port": 13334, "endpoint": "compile"},
    "floorplan": {"port": 13335, "endpoint": "floorplan"},
    "powerplan": {"port": 13336, "endpoint": "power"},
    "placement": {"port": 13337, "endpoint": "place"},
    "cts": {"port": 13338, "endpoint": "cts"},
    "route": {"port": 13339, "endpoint": "route"},
    "save": {"port": 13440, "endpoint": "save"},
}

# Create FastMCP instance
mcp = FastMCP("eda-server")

def call_eda_server(tool_name: str, payload: Dict[str, Any]) -> Dict[str, Any]:
    """Call EDA microservice with specified payload"""
    if tool_name not in EDA_SERVERS:
        return {"status": "error", "detail": f"Unknown tool: {tool_name}"}
    
    server_info = EDA_SERVERS[tool_name]
    url = f"http://localhost:{server_info['port']}/{server_info['endpoint']}/run"
    
    try:
        response = requests.post(url, json=payload, timeout=300)
        response.raise_for_status()
        return response.json()
    except requests.exceptions.RequestException as e:
        return {"status": "error", "detail": f"Failed to call EDA server: {str(e)}"}

def detect_synthesis_version(design: str) -> str:
    """Automatically detect the latest synthesis version for a design"""
    synth_dir = ROOT / "designs" / design / "FreePDK45" / "synthesis"
    if not synth_dir.exists():
        return ""
    
    subdirs = [d for d in synth_dir.iterdir() if d.is_dir()]
    if not subdirs:
        return ""
    
    # Return the most recent version directory
    return max(subdirs, key=lambda p: p.stat().st_mtime).name

def make_implementation_version(syn_ver: str, g_idx: int = 0, p_idx: int = 0) -> str:
    """Generate implementation version name from synthesis version and indices"""
    return f"{syn_ver}__g{g_idx}_p{p_idx}"

@mcp.tool()
async def synthesis_setup(
    design: str,
    tech: str = "FreePDK45",
    version_idx: int = 0,
    force: bool = False
) -> str:
    """
    Setup synthesis environment for RTL design
    
    This tool initializes the synthesis environment by setting up design libraries,
    technology files, and configuration parameters. It prepares the design for
    RTL-to-gate synthesis using Synopsys Design Compiler.
    
    Args:
        design: Design name (e.g., "b14", "leon2", "des"). Must exist in designs/ directory
        tech: Technology library name (default: "FreePDK45"). Currently supports FreePDK45
        version_idx: Configuration version index (default: 0). Used to select different synthesis configurations
        force: Force re-run even if output exists (default: False). Set to True to overwrite existing results
    
    Returns:
        JSON string containing synthesis setup results with status, log path, and reports
        
    Example:
        synthesis_setup(design="b14", tech="FreePDK45", version_idx=0, force=False)
        
    Prerequisites:
        - Design RTL files must exist in designs/{design}/rtl/
        - Technology library must be available
        - Synthesis configuration files must be present in config/synthesis.csv
    """
    payload = {
        "design": design,
        "tech": tech,
        "version_idx": version_idx,
        "force": force
    }
    result = call_eda_server("synth_setup", payload)
    return json.dumps(result, ensure_ascii=False, indent=2)

@mcp.tool()
async def synthesis_compile(
    design: str,
    tech: str = "FreePDK45",
    version_idx: int = 0,
    force: bool = False
) -> str:
    """
    Perform RTL-to-gate synthesis compilation
    
    This tool executes the complete RTL synthesis process using Synopsys Design Compiler.
    It transforms RTL design into optimized gate-level netlist while meeting timing,
    area, and power constraints. The tool generates timing reports, area reports,
    and power analysis results.
    
    Args:
        design: Design name (e.g., "b14", "leon2", "des"). Must have completed synthesis setup
        tech: Technology library name (default: "FreePDK45"). Must match setup configuration
        version_idx: Configuration version index (default: 0). Must match setup configuration
        force: Force re-run even if output exists (default: False). Set to True to overwrite existing results
    
    Returns:
        JSON string containing synthesis compilation results with status, log path, timing reports, area reports, and power reports
        
    Example:
        synthesis_compile(design="b14", tech="FreePDK45", version_idx=0, force=False)
        
    Prerequisites:
        - synthesis_setup must be completed successfully
        - RTL design must be synthesizable
        - Timing constraints must be properly defined
    """
    payload = {
        "design": design,
        "tech": tech,
        "version_idx": version_idx,
        "force": force
    }
    result = call_eda_server("synth_compile", payload)
    return json.dumps(result, ensure_ascii=False, indent=2)

@mcp.tool()
async def floor_planning(
    design: str,
    top_module: str,
    tech: str = "FreePDK45",
    syn_ver: str = "",
    g_idx: int = 0,
    p_idx: int = 0,
    force: bool = False,
    restore_enc: str = ""
) -> str:
    """
    Perform chip floorplanning and I/O placement
    
    This tool creates the initial chip floorplan by defining die size, aspect ratio,
    and I/O placement. It sets up the physical design environment for subsequent
    implementation steps using Cadence Innovus. The tool generates floorplan files
    and checkpoint data for the next stage.
    
    Args:
        design: Design name (e.g., "b14", "leon2", "des"). Must have completed synthesis
        top_module: Top-level module name from RTL design (e.g., "b14", "leon2mp")
        tech: Technology library name (default: "FreePDK45"). Must match synthesis configuration
        syn_ver: Synthesis version string (auto-detected if empty). Format: "cpV1_clkP1_drcV1"
        g_idx: Global configuration index (default: 0). Used for implementation configuration selection
        p_idx: Floorplan parameter index (default: 0). Used for floorplan configuration selection
        force: Force re-run even if output exists (default: False). Set to True to overwrite existing results
        restore_enc: Path to restore checkpoint file (optional). Used to restore from previous floorplan
    
    Returns:
        JSON string containing floorplanning results with status, log path, floorplan files, and checkpoint data
        
    Example:
        floor_planning(design="b14", top_module="b14", tech="FreePDK45", g_idx=0, p_idx=0)
        
    Prerequisites:
        - synthesis_compile must be completed successfully
        - Top module must be correctly identified
        - Implementation configuration files must be available
    """
    if not syn_ver:
        syn_ver = detect_synthesis_version(design)
        if not syn_ver:
            return json.dumps({
                "status": "error",
                "detail": f"No synthesis version found for design {design}. Please run synthesis first."
            }, ensure_ascii=False, indent=2)
    
    payload = {
        "design": design,
        "top_module": top_module,
        "tech": tech,
        "syn_ver": syn_ver,
        "g_idx": g_idx,
        "p_idx": p_idx,
        "force": force
    }
    if restore_enc:
        payload["restore_enc"] = restore_enc
    
    result = call_eda_server("floorplan", payload)
    return json.dumps(result, ensure_ascii=False, indent=2)

@mcp.tool()
async def power_planning(
    design: str,
    top_module: str,
    restore_enc: str,
    tech: str = "FreePDK45",
    impl_ver: str = "",
    force: bool = False,
    g_idx: int = 0
) -> str:
    """
    Perform power distribution network planning
    
    This tool designs the power distribution network (PDN) by creating power rails,
    power rings, and power straps. It ensures proper power delivery to all cells
    while meeting IR drop and electromigration requirements. The tool generates
    power planning files and updated checkpoint data.
    
    Args:
        design: Design name (e.g., "b14", "leon2", "des"). Must have completed floorplanning
        top_module: Top-level module name from RTL design (e.g., "b14", "leon2mp")
        restore_enc: Path to floorplan checkpoint file. Required to restore floorplan state
        tech: Technology library name (default: "FreePDK45"). Must match previous stages
        impl_ver: Implementation version string (auto-generated if empty). Format: "syn_ver__g{g_idx}_p{p_idx}"
        force: Force re-run even if output exists (default: False). Set to True to overwrite existing results
        g_idx: Global configuration index (default: 0). Used for power planning configuration
    
    Returns:
        JSON string containing power planning results with status, log path, power files, and checkpoint data
        
    Example:
        power_planning(design="b14", top_module="b14", restore_enc="/path/to/floorplan.enc.dat")
        
    Prerequisites:
        - floor_planning must be completed successfully
        - Floorplan checkpoint file must be valid
        - Power planning configuration must be available
    """
    if not impl_ver:
        syn_ver = detect_synthesis_version(design)
        if not syn_ver:
            return json.dumps({
                "status": "error",
                "detail": f"No synthesis version found for design {design}. Please run synthesis first."
            }, ensure_ascii=False, indent=2)
        impl_ver = make_implementation_version(syn_ver, g_idx, 0)
    
    payload = {
        "design": design,
        "top_module": top_module,
        "tech": tech,
        "impl_ver": impl_ver,
        "restore_enc": restore_enc,
        "force": force,
        "g_idx": g_idx
    }
    result = call_eda_server("powerplan", payload)
    return json.dumps(result, ensure_ascii=False, indent=2)

@mcp.tool()
async def placement(
    design: str,
    top_module: str,
    restore_enc: str,
    tech: str = "FreePDK45",
    impl_ver: str = "",
    force: bool = False,
    g_idx: int = 0,
    p_idx: int = 0
) -> str:
    """
    Perform standard cell placement optimization
    
    This tool places all standard cells within the floorplan area while optimizing
    for timing, area, and power. It performs global placement, detailed placement,
    and placement optimization using Cadence Innovus. The tool generates placement
    files and updated checkpoint data for subsequent stages.
    
    Args:
        design: Design name (e.g., "b14", "leon2", "des"). Must have completed power planning
        top_module: Top-level module name from RTL design (e.g., "b14", "leon2mp")
        restore_enc: Path to power planning checkpoint file. Required to restore previous state
        tech: Technology library name (default: "FreePDK45"). Must match previous stages
        impl_ver: Implementation version string (auto-generated if empty). Format: "syn_ver__g{g_idx}_p{p_idx}"
        force: Force re-run even if output exists (default: False). Set to True to overwrite existing results
        g_idx: Global configuration index (default: 0). Used for placement configuration
        p_idx: Placement parameter index (default: 0). Used for placement optimization settings
    
    Returns:
        JSON string containing placement results with status, log path, placement files, and checkpoint data
        
    Example:
        placement(design="b14", top_module="b14", restore_enc="/path/to/powerplan.enc.dat", g_idx=0, p_idx=0)
        
    Prerequisites:
        - power_planning must be completed successfully
        - Power planning checkpoint file must be valid
        - Placement configuration must be available
    """
    if not impl_ver:
        syn_ver = detect_synthesis_version(design)
        if not syn_ver:
            return json.dumps({
                "status": "error",
                "detail": f"No synthesis version found for design {design}. Please run synthesis first."
            }, ensure_ascii=False, indent=2)
        impl_ver = make_implementation_version(syn_ver, g_idx, p_idx)
    
    payload = {
        "design": design,
        "top_module": top_module,
        "tech": tech,
        "impl_ver": impl_ver,
        "restore_enc": restore_enc,
        "force": force,
        "g_idx": g_idx,
        "p_idx": p_idx
    }
    result = call_eda_server("placement", payload)
    return json.dumps(result, ensure_ascii=False, indent=2)

@mcp.tool()
async def clock_tree_synthesis(
    design: str,
    top_module: str,
    restore_enc: str,
    tech: str = "FreePDK45",
    impl_ver: str = "",
    force: bool = False,
    g_idx: int = 0,
    c_idx: int = 0
) -> str:
    """
    Perform clock tree synthesis and optimization
    
    This tool synthesizes the clock distribution network by inserting clock buffers
    and optimizing clock tree topology. It ensures balanced clock distribution
    while meeting clock skew and transition time requirements. The tool generates
    clock tree files and updated checkpoint data.
    
    Args:
        design: Design name (e.g., "b14", "leon2", "des"). Must have completed placement
        top_module: Top-level module name from RTL design (e.g., "b14", "leon2mp")
        restore_enc: Path to placement checkpoint file. Required to restore placement state
        tech: Technology library name (default: "FreePDK45"). Must match previous stages
        impl_ver: Implementation version string (auto-generated if empty). Format: "syn_ver__g{g_idx}_p{p_idx}"
        force: Force re-run even if output exists (default: False). Set to True to overwrite existing results
        g_idx: Global configuration index (default: 0). Used for CTS configuration
        c_idx: Clock tree parameter index (default: 0). Used for CTS optimization settings
    
    Returns:
        JSON string containing clock tree synthesis results with status, log path, clock tree files, and checkpoint data
        
    Example:
        clock_tree_synthesis(design="b14", top_module="b14", restore_enc="/path/to/placement.enc.dat", c_idx=0)
        
    Prerequisites:
        - placement must be completed successfully
        - Placement checkpoint file must be valid
        - Clock tree synthesis configuration must be available
    """
    if not impl_ver:
        syn_ver = detect_synthesis_version(design)
        if not syn_ver:
            return json.dumps({
                "status": "error",
                "detail": f"No synthesis version found for design {design}. Please run synthesis first."
            }, ensure_ascii=False, indent=2)
        impl_ver = make_implementation_version(syn_ver, g_idx, 0)
    
    payload = {
        "design": design,
        "top_module": top_module,
        "tech": tech,
        "impl_ver": impl_ver,
        "restore_enc": restore_enc,
        "force": force,
        "g_idx": g_idx,
        "c_idx": c_idx
    }
    result = call_eda_server("cts", payload)
    return json.dumps(result, ensure_ascii=False, indent=2)

@mcp.tool()
async def routing(
    design: str,
    top_module: str,
    restore_enc: str,
    tech: str = "FreePDK45",
    impl_ver: str = "",
    force: bool = False,
    g_idx: int = 0,
    p_idx: int = 0,
    c_idx: int = 0
) -> str:
    """
    Perform signal routing and optimization
    
    This tool routes all signal nets between placed cells while meeting timing,
    design rules, and manufacturability requirements. It performs global routing,
    detailed routing, and post-route optimization using Cadence Innovus. The tool
    generates routing files, timing reports, and final checkpoint data.
    
    Args:
        design: Design name (e.g., "b14", "leon2", "des"). Must have completed clock tree synthesis
        top_module: Top-level module name from RTL design (e.g., "b14", "leon2mp")
        restore_enc: Path to clock tree synthesis checkpoint file. Required to restore CTS state
        tech: Technology library name (default: "FreePDK45"). Must match previous stages
        impl_ver: Implementation version string (auto-generated if empty). Format: "syn_ver__g{g_idx}_p{p_idx}"
        force: Force re-run even if output exists (default: False). Set to True to overwrite existing results
        g_idx: Global configuration index (default: 0). Used for routing configuration
        p_idx: Placement parameter index (default: 0). Must match placement configuration
        c_idx: Clock tree parameter index (default: 0). Must match CTS configuration
    
    Returns:
        JSON string containing routing results with status, log path, routing files, timing reports, and checkpoint data
        
    Example:
        routing(design="b14", top_module="b14", restore_enc="/path/to/cts.enc.dat", g_idx=0, p_idx=0, c_idx=0)
        
    Prerequisites:
        - clock_tree_synthesis must be completed successfully
        - Clock tree synthesis checkpoint file must be valid
        - Routing configuration must be available
    """
    if not impl_ver:
        syn_ver = detect_synthesis_version(design)
        if not syn_ver:
            return json.dumps({
                "status": "error",
                "detail": f"No synthesis version found for design {design}. Please run synthesis first."
            }, ensure_ascii=False, indent=2)
        impl_ver = make_implementation_version(syn_ver, g_idx, p_idx)
    
    payload = {
        "design": design,
        "top_module": top_module,
        "tech": tech,
        "impl_ver": impl_ver,
        "restore_enc": restore_enc,
        "force": force,
        "g_idx": g_idx,
        "p_idx": p_idx,
        "c_idx": c_idx
    }
    result = call_eda_server("route", payload)
    return json.dumps(result, ensure_ascii=False, indent=2)

@mcp.tool()
async def save_design(
    design: str,
    top_module: str,
    tech: str = "FreePDK45",
    impl_ver: str = "",
    archive: bool = True,
    force: bool = False
) -> str:
    """
    Save final design results and generate output files
    
    This tool saves the completed design and generates all required output files
    for manufacturing. It creates GDSII files, DEF files, Verilog netlists,
    timing reports, and other deliverables. The tool also archives the complete
    design database for future reference.
    
    Args:
        design: Design name (e.g., "b14", "leon2", "des"). Must have completed routing
        top_module: Top-level module name from RTL design (e.g., "b14", "leon2mp")
        tech: Technology library name (default: "FreePDK45"). Must match previous stages
        impl_ver: Implementation version string (auto-generated if empty). Format: "syn_ver__g{g_idx}_p{p_idx}"
        archive: Create archive of complete design database (default: True). Set to False to skip archiving
        force: Force re-run even if output exists (default: False). Set to True to overwrite existing results
    
    Returns:
        JSON string containing save results with status, log path, and list of generated files
        
    Example:
        save_design(design="b14", top_module="b14", tech="FreePDK45", archive=True)
        
    Prerequisites:
        - routing must be completed successfully
        - All previous stages must be completed in order
        - Sufficient disk space for output files and archives
    """
    if not impl_ver:
        syn_ver = detect_synthesis_version(design)
        if not syn_ver:
            return json.dumps({
                "status": "error",
                "detail": f"No synthesis version found for design {design}. Please run synthesis first."
            }, ensure_ascii=False, indent=2)
        impl_ver = make_implementation_version(syn_ver, 0, 0)
    
    payload = {
        "design": design,
        "top_module": top_module,
        "tech": tech,
        "impl_ver": impl_ver,
        "archive": archive,
        "force": force
    }
    result = call_eda_server("save", payload)
    return json.dumps(result, ensure_ascii=False, indent=2)

@mcp.tool()
async def run_complete_flow(
    design: str,
    top_module: str,
    tech: str = "FreePDK45",
    force: bool = False
) -> str:
    """
    Execute complete RTL-to-GDSII design implementation flow
    
    This tool orchestrates the entire digital design implementation flow from RTL
    to GDSII. It automatically executes all stages in the correct order:
    1. Synthesis setup and compilation
    2. Floorplanning and power planning
    3. Placement and clock tree synthesis
    4. Routing and final design saving
    
    This is the recommended tool for complete design implementation as it ensures
    proper stage dependencies and generates all required deliverables.
    
    Args:
        design: Design name (e.g., "b14", "leon2", "des"). Must exist in designs/ directory
        top_module: Top-level module name from RTL design (e.g., "b14", "leon2mp")
        tech: Technology library name (default: "FreePDK45"). Currently supports FreePDK45
        force: Force re-run even if output exists (default: False). Set to True to overwrite existing results
    
    Returns:
        JSON string containing complete flow results with status, design info, and results from all stages
        
    Example:
        run_complete_flow(design="b14", top_module="b14", tech="FreePDK45", force=False)
        
    Prerequisites:
        - Design RTL files must exist in designs/{design}/rtl/
        - All configuration files must be available
        - Sufficient disk space for complete implementation
        - All EDA tools must be properly licensed and configured
    """
    results = []
    
    # 1. Synthesis setup
    print("1. Executing synthesis setup...")
    setup_result = await synthesis_setup(design, tech, 0, force)
    results.append({"step": "synthesis_setup", "result": setup_result})
    
    # 2. Synthesis compile
    print("2. Executing synthesis compilation...")
    compile_result = await synthesis_compile(design, tech, 0, force)
    results.append({"step": "synthesis_compile", "result": compile_result})
    
    # 3. Floorplanning
    print("3. Executing floorplanning...")
    floorplan_result = await floor_planning(design, top_module, tech, "", 0, 0, force)
    results.append({"step": "floor_planning", "result": floorplan_result})
    
    # 4. Power planning
    print("4. Executing power planning...")
    power_result = await power_planning(design, top_module, "", tech, "", force, 0)
    results.append({"step": "power_planning", "result": power_result})
    
    # 5. Placement
    print("5. Executing placement...")
    placement_result = await placement(design, top_module, "", tech, "", force, 0, 0)
    results.append({"step": "placement", "result": placement_result})
    
    # 6. Clock tree synthesis
    print("6. Executing clock tree synthesis...")
    cts_result = await clock_tree_synthesis(design, top_module, "", tech, "", force, 0, 0)
    results.append({"step": "clock_tree_synthesis", "result": cts_result})
    
    # 7. Routing
    print("7. Executing routing...")
    route_result = await routing(design, top_module, "", tech, "", force, 0, 0, 0)
    results.append({"step": "routing", "result": route_result})
    
    # 8. Save design
    print("8. Saving design results...")
    save_result = await save_design(design, top_module, tech, "", True, force)
    results.append({"step": "save_design", "result": save_result})
    
    return json.dumps({
        "status": "complete",
        "design": design,
        "top_module": top_module,
        "tech": tech,
        "steps": results
    }, ensure_ascii=False, indent=2)

if __name__ == "__main__":
    print("=== MCP EDA Server Starting ===")
    print(f"Current directory: {os.getcwd()}")
    print(f"Python version: {sys.version}")
    print("Starting MCP server (stdio mode) - Waiting for Claude Desktop connection")
    print("Press Ctrl+C to stop server")
    
    try:
        mcp.run(transport='stdio')
    except KeyboardInterrupt:
        print("\n=== MCP EDA Server Stopped ===")
    except Exception as e:
        print(f"Server startup failed: {e}")
        sys.exit(1) 