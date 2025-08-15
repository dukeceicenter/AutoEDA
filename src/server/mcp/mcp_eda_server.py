#!/usr/bin/env python3
"""
MCP EDA Server - Complete RTL to GDSII Electronic Design Automation Flow
Provides comprehensive EDA tools for digital design implementation using Synopsys Design Compiler and Cadence Innovus

Updated to match current 4-server architecture with unified parameter formats:
- Synthesis Server (Port 18001): RTL synthesis using Synopsys Design Compiler
- Placement Server (Port 18002): Floorplan, power planning, and placement using Cadence Innovus
- CTS Server (Port 18003): Clock tree synthesis using Cadence Innovus
- Routing Server (Port 18004): Routing and final save using Cadence Innovus
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
ROOT = pathlib.Path(__file__).resolve().parent.parent.parent.parent

# EDA microservices configuration - Updated to 4-server architecture
EDA_SERVERS = {
    "synthesis": {"port": 18001, "endpoint": "run"},
    "placement": {"port": 18002, "endpoint": "run"},
    "cts": {"port": 18003, "endpoint": "run"},
    "routing": {"port": 18004, "endpoint": "run"},
}

# Legacy mapping for backward compatibility
LEGACY_TOOL_MAPPING = {
    "synth_setup": "synthesis",
    "synth_compile": "synthesis", 
    "synth": "synthesis",
    "floorplan": "placement",
    "powerplan": "placement",
    "unified_placement": "placement",
    "route": "routing",
    "save": "routing",
    "unified_route_save": "routing",
}

# Create FastMCP instance
mcp = FastMCP("eda-server")

def call_eda_server(tool_name: str, payload: Dict[str, Any]) -> Dict[str, Any]:
    """Call EDA microservice with specified payload"""
    # Handle legacy tool names
    if tool_name in LEGACY_TOOL_MAPPING:
        actual_tool = LEGACY_TOOL_MAPPING[tool_name]
        print(f"[MCP] Legacy tool '{tool_name}' mapped to '{actual_tool}'")
        tool_name = actual_tool
    
    if tool_name not in EDA_SERVERS:
        return {"status": "error", "detail": f"Unknown tool: {tool_name}. Available tools: {list(EDA_SERVERS.keys())}"}
    
    server_info = EDA_SERVERS[tool_name]
    url = f"http://localhost:{server_info['port']}/{server_info['endpoint']}"
    
    try:
        print(f"[MCP] Calling {tool_name} server at {url}")
        response = requests.post(url, json=payload, timeout=300)
        response.raise_for_status()
        result = response.json()
        print(f"[MCP] Server response status: {result.get('status', 'unknown')}")
        return result
    except requests.exceptions.RequestException as e:
        error_msg = f"Failed to call EDA server {tool_name}: {str(e)}"
        print(f"[MCP] Error: {error_msg}")
        return {"status": "error", "detail": error_msg}

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

# Helper function for implementation version generation (kept for compatibility)
def make_implementation_version(syn_ver: str, g_idx: int = 0, p_idx: int = 0) -> str:
    """Generate implementation version name from synthesis version and indices"""
    return f"{syn_ver}__g{g_idx}_p{p_idx}"

@mcp.tool()
async def synthesis(
    design: str,
    tech: str = "FreePDK45",
    syn_version: Optional[str] = None,
    period: float = 1.0,
    fanout_value: float = 10.0,
    transition_value: float = 0.2,
    capacitance_value: float = 4.5,
    compile_cmd: str = "compile",
    power_effort: str = "none",
    area_effort: str = "none",
    map_effort: str = "low",
    dynamic_optimization: str = "false",
    leakage_optimization: str = "false",
    force: bool = True,
    skip_execution: bool = False
) -> str:
    """
    Perform complete RTL-to-gate synthesis using Synopsys Design Compiler
    
    This unified tool performs the complete synthesis flow including environment setup,
    RTL analysis, and gate-level compilation. It transforms RTL design into optimized 
    gate-level netlist while meeting timing, area, and power constraints.
    
    Args:
        design: Design name (e.g., "b14", "leon2", "des"). Must exist in designs/ directory
        tech: Technology library name (default: "FreePDK45"). Currently supports FreePDK45
        syn_version: Synthesis version string (auto-generated if None). Format: timestamp-based
        period: Clock period in ns (default: 1.0). Sets timing constraints
        fanout_value: Maximum fanout value (default: 10.0). Controls cell drive strength
        transition_value: Maximum transition time in ns (default: 0.2). Controls slew rate
        capacitance_value: Maximum capacitance in pF (default: 4.5). Controls loading
        compile_cmd: Compilation command (default: "compile"). Options: compile, compile_ultra
        power_effort: Power optimization effort (default: "none"). Options: none, low, medium, high
        area_effort: Area optimization effort (default: "none"). Options: none, low, medium, high
        map_effort: Mapping effort (default: "low"). Options: low, medium, high
        dynamic_optimization: Enable dynamic optimization (default: "false"). Options: true, false
        leakage_optimization: Enable leakage optimization (default: "false"). Options: true, false
        force: Force re-run even if output exists (default: True). Set to False to skip if exists
        skip_execution: Skip actual execution, only generate scripts (default: False)
    
    Returns:
        JSON string containing synthesis results with status, log path, timing reports, area reports, and power reports
        
    Example:
        synthesis(design="des", tech="FreePDK45", period=2.0, power_effort="high")
        
    Prerequisites:
        - Design RTL files must exist in designs/{design}/rtl/
        - Technology library must be available
        - Synthesis scripts must be present in src/scripts/{tech}/frontend/
    """
    payload = {
        "design": design,
        "tech": tech,
        "period": period,
        "fanout_value": fanout_value,
        "transition_value": transition_value,
        "capacitance_value": capacitance_value,
        "compile_cmd": compile_cmd,
        "power_effort": power_effort,
        "area_effort": area_effort,
        "map_effort": map_effort,
        "dynamic_optimization": dynamic_optimization,
        "leakage_optimization": leakage_optimization,
        "force": force,
        "skip_execution": skip_execution
    }
    
    # Only include syn_version if it's not None
    if syn_version is not None:
        payload["syn_version"] = syn_version
    result = call_eda_server("synthesis", payload)
    return json.dumps(result, ensure_ascii=False, indent=2)

@mcp.tool()
async def placement(
    design: str,
    tech: str = "FreePDK45",
    syn_ver: Optional[str] = None,
    impl_ver: Optional[str] = None,
    force: bool = True,
    skip_execution: bool = False,
    flowEffort: str = "standard",
    globalPowerEffort: str = "none",
    aspectRatio: float = 1.0,
    rowDensity: float = 0.7,
    place_global_timing_effort: str = "medium",
    place_global_cong_effort: str = "low",
    place_detail_wire_length_opt_effort: str = "none",
    place_global_max_density: float = 0.9
) -> str:
    """
    Perform placement flow: floorplanning, power planning, and standard cell placement
    
    This tool performs the complete placement flow including:
    1. Setup: Initial design setup and configuration
    2. Floorplanning: Chip floorplan and I/O placement
    3. Power planning: Power grid and power mesh creation
    4. Placement: Standard cell placement optimization
    
    The tool uses Cadence Innovus for the complete placement flow and creates
    all necessary design saves (floorplan.enc, powerplan.enc, placement.enc).
    
    Args:
        design: Design name (e.g., "b14", "leon2", "des"). Must have completed synthesis
        tech: Technology library name (default: "FreePDK45"). Must match synthesis configuration
        syn_ver: Synthesis version string (auto-detected if None). Format: timestamp-based
        impl_ver: Implementation version string (auto-generated if None). Format: timestamp-based
        force: Force re-run even if output exists (default: True). Set to False to skip if exists
        skip_execution: Skip actual execution, only generate scripts (default: False)
        flowEffort: Global flow effort (default: "standard"). Options: express, standard, extreme
        globalPowerEffort: Global power effort (default: "none"). Options: none, low, high
        aspectRatio: Chip aspect ratio (default: 1.0). Controls chip shape (width/height)
        rowDensity: Row density for placement (default: 0.7). Controls cell density (0.0-1.0)
        place_global_timing_effort: Global placement timing effort (default: "medium"). Options: medium, high
        place_global_cong_effort: Global placement congestion effort (default: "low"). Options: low, medium, high, auto
        place_detail_wire_length_opt_effort: Detail placement wire length optimization effort (default: "none"). Options: none, medium, high
        place_global_max_density: Maximum placement density (default: 0.9). Controls maximum density (0.0-1.0)
    
    Returns:
        JSON string containing placement results with status, log path, placement files, and checkpoint data
        
    Example:
        placement(design="des", tech="FreePDK45", aspectRatio=1.2, rowDensity=0.8)
        
    Prerequisites:
        - synthesis must be completed successfully
        - Placement scripts must be present in src/scripts/{tech}/backend/
        - Technology files must be available
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
        "tech": tech,
        "force": force,
        "skip_execution": skip_execution,
        "flowEffort": flowEffort,
        "globalPowerEffort": globalPowerEffort,
        "aspectRatio": aspectRatio,
        "rowDensity": rowDensity,
        "place_global_timing_effort": place_global_timing_effort,
        "place_global_cong_effort": place_global_cong_effort,
        "place_detail_wire_length_opt_effort": place_detail_wire_length_opt_effort,
        "place_global_max_density": place_global_max_density
    }
    
    # Only include optional parameters if they're not None
    if syn_ver is not None:
        payload["syn_ver"] = syn_ver
    if impl_ver is not None:
        payload["impl_ver"] = impl_ver
    result = call_eda_server("placement", payload)
    return json.dumps(result, ensure_ascii=False, indent=2)

@mcp.tool()
async def clock_tree_synthesis(
    design: str,
    tech: str = "FreePDK45",
    syn_ver: Optional[str] = None,
    impl_ver: Optional[str] = None,
    restore_enc: Optional[str] = None,
    force: bool = True,
    skip_execution: bool = False,
    cell_density: float = 0.5,
    clock_gate_buffering_location: str = "below",
    clone_clock_gates: str = "true",
    maxDensity: float = 0.8,
    powerEffort: str = "low",
    reclaimArea: str = "default",
    fixFanoutLoad: str = "true"
) -> str:
    """
    Perform clock tree synthesis and optimization
    
    This tool synthesizes the clock distribution network by inserting clock buffers
    and optimizing clock tree topology. It ensures balanced clock distribution
    while meeting clock skew and transition time requirements. The tool generates
    clock tree files and updated checkpoint data.
    
    Args:
        design: Design name (e.g., "b14", "leon2", "des"). Must have completed placement
        tech: Technology library name (default: "FreePDK45"). Must match previous stages
        syn_ver: Synthesis version string (auto-detected if None). Format: timestamp-based
        impl_ver: Implementation version string (auto-detected if None). Format: timestamp-based
        restore_enc: Path to placement checkpoint file (auto-detected if None). Required to restore placement state
        force: Force re-run even if output exists (default: True). Set to False to skip if exists
        skip_execution: Skip actual execution, only generate scripts (default: False)
        cell_density: Cell density for CTS (default: 0.5). Controls clock tree density (0.0-1.0)
        clock_gate_buffering_location: Clock gate buffering location (default: "below"). Options: above, below
        clone_clock_gates: Enable clock gate cloning (default: "true"). Options: true, false
        maxDensity: Maximum density for CTS (default: 0.8). Controls maximum cell density (0.0-1.0)
        powerEffort: Power optimization effort for CTS (default: "low"). Options: none, low, medium, high
        reclaimArea: Area reclaim effort (default: "default"). Options: none, low, default, high
        fixFanoutLoad: Fix fanout load during CTS (default: "true"). Options: true, false
    
    Returns:
        JSON string containing clock tree synthesis results with status, log path, clock tree files, and checkpoint data
        
    Example:
        clock_tree_synthesis(design="des", tech="FreePDK45", maxDensity=0.9, powerEffort="medium")
        
    Prerequisites:
        - placement must be completed successfully
        - Placement checkpoint file must be valid
        - Clock tree synthesis scripts must be present in src/scripts/{tech}/backend/
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
        "tech": tech,
        "force": force,
        "skip_execution": skip_execution,
        "cell_density": cell_density,
        "clock_gate_buffering_location": clock_gate_buffering_location,
        "clone_clock_gates": clone_clock_gates,
        "maxDensity": maxDensity,
        "powerEffort": powerEffort,
        "reclaimArea": reclaimArea,
        "fixFanoutLoad": fixFanoutLoad
    }
    
    # Only include optional parameters if they're not None
    if syn_ver is not None:
        payload["syn_ver"] = syn_ver
    if impl_ver is not None:
        payload["impl_ver"] = impl_ver
    if restore_enc is not None:
        payload["restore_enc"] = restore_enc
    result = call_eda_server("cts", payload)
    return json.dumps(result, ensure_ascii=False, indent=2)

@mcp.tool()
async def routing(
    design: str,
    tech: str = "FreePDK45",
    syn_ver: Optional[str] = None,
    impl_ver: Optional[str] = None,
    force: bool = True,
    skip_execution: bool = False
) -> str:
    """
    Perform routing and save flow: signal routing and final design save
    
    This tool performs the complete routing and save flow including:
    1. Global and detailed signal routing
    2. Post-route optimization
    3. Final design verification
    4. Output file generation (GDSII, DEF, netlist, etc.)
    
    It routes all signal nets between placed cells while meeting timing requirements,
    performs final optimization, and generates all required output files including
    GDSII, DEF, netlist, and reports.
    
    Args:
        design: Design name (e.g., "b14", "leon2", "des"). Must have completed CTS
        tech: Technology library name (default: "FreePDK45"). Must match previous stages
        syn_ver: Synthesis version string (auto-detected if None). Format: timestamp-based
        impl_ver: Implementation version string (auto-detected if None). Format: timestamp-based
        force: Force re-run even if output exists (default: True). Set to False to skip if exists
        skip_execution: Skip actual execution, only generate scripts (default: False)
    
    Returns:
        JSON string containing routing results with status, log path, output files, and report data
        
    Example:
        routing(design="des", tech="FreePDK45", force=True)
        
    Prerequisites:
        - clock_tree_synthesis must be completed successfully
        - CTS checkpoint file must be valid
        - Routing scripts must be present in src/scripts/{tech}/backend/
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
        "tech": tech,
        "force": force,
        "skip_execution": skip_execution
    }
    
    # Only include optional parameters if they're not None
    if syn_ver is not None:
        payload["syn_ver"] = syn_ver
    if impl_ver is not None:
        payload["impl_ver"] = impl_ver
    result = call_eda_server("routing", payload)
    return json.dumps(result, ensure_ascii=False, indent=2)

if __name__ == "__main__":
    print("=== MCP EDA Server Starting (Updated 4-Server Architecture) ===")
    print(f"Current directory: {os.getcwd()}")
    print(f"Python version: {sys.version}")
    print("Available EDA servers:", list(EDA_SERVERS.keys()))
    print("Legacy tool mapping:", list(LEGACY_TOOL_MAPPING.keys()))
    print("Starting MCP server (stdio mode) - Waiting for Claude Desktop connection")
    print("Press Ctrl+C to stop server")
    
    try:
        mcp.run(transport='stdio')
    except KeyboardInterrupt:
        print("\n=== MCP EDA Server Stopped ===")
    except Exception as e:
        print(f"Server startup failed: {e}")
        sys.exit(1)