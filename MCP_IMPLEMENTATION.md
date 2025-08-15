# MCP AutoEDA Implementation Guide

## Overview

This project implements a comprehensive MCP (Model Context Protocol) EDA server system, providing a complete digital design flow from RTL to GDSII using a modern 4-server architecture. The implementation leverages Claude Desktop integration for natural language EDA tool interaction and uses the FastMCP framework for robust server development.

## Architecture Design

### Unified 4-Server Architecture
- **FastMCP Framework**: Uses the officially recommended FastMCP framework for robust MCP server development
- **Consolidated Microservices**: 4 unified servers handle complete EDA stages:
  - **Synthesis Server** (port 18001): Complete RTL-to-gate synthesis using Synopsys Design Compiler
  - **Placement Server** (port 18002): Floorplan + power planning + placement using Cadence Innovus
  - **CTS Server** (port 18003): Clock tree synthesis and optimization using Cadence Innovus
  - **Routing Server** (port 18004): Global/detailed routing + final save using Cadence Innovus
- **Tool-based Design**: Each major EDA flow is encapsulated as an independent MCP tool with comprehensive parameter handling
- **Legacy Compatibility**: Backward compatibility mapping for legacy tool names

### Client Architecture
- **Claude Desktop Integration**: Direct integration with Claude Desktop for natural language interaction
- **Type Safety**: Complete type annotations with comprehensive error handling
- **Clean API**: Intuitive tool calling interface with natural language support
- **Session Management**: Context-aware tool execution with automatic version management

## File Structure

```
src/
├── server/
│   ├── mcp/
│   │   ├── mcp_eda_server.py           # Main MCP server (4-server architecture)
│   │   ├── claude_desktop_config.json  # Claude Desktop configuration examples
│   │   └── start_mcp_server.sh         # MCP server startup script
│   ├── synthesis_server.py             # Synthesis server (port 18001)
│   ├── placement_server.py             # Placement server (port 18002)
│   ├── cts_server.py                   # Clock tree synthesis server (port 18003)
│   ├── routing_server.py               # Routing server (port 18004)
│   ├── base_server.py                  # Base server class (BaseServer)
│   ├── executor.py                     # Unified executor class
│   └── __init__.py                     # Package initialization
├── mcp_agent_client.py                 # AI agent client with local LLM integration
├── run_server.py                       # Server management script
├── scripts/                            # TCL template scripts
└── codebleu_tcl/                      # CodeBLEU evaluation toolkit

MCP_IMPLEMENTATION.md                   # This document
```

## Available MCP Tools

### 1. synthesis
- **Function**: Complete RTL-to-gate synthesis using Synopsys Design Compiler
- **Description**: Performs the complete synthesis flow including environment setup, RTL analysis, and gate-level compilation. Transforms RTL design into optimized gate-level netlist while meeting timing, area, and power constraints.
- **Parameters**: 
  - `design` (str, required): Design name (e.g., "des", "b14", "leon2")
  - `tech` (str, optional): Technology library (default: "FreePDK45")
  - `syn_version` (str, optional): Synthesis version string (auto-generated if None)
  - `period` (float, optional): Clock period in ns (default: 1.0)
  - `fanout_value` (float, optional): Maximum fanout value (default: 10.0)
  - `transition_value` (float, optional): Maximum transition time in ns (default: 0.2)
  - `capacitance_value` (float, optional): Maximum capacitance in pF (default: 4.5)
  - `compile_cmd` (str, optional): Compilation command (default: "compile")
  - `power_effort` (str, optional): Power optimization effort (default: "none")
  - `area_effort` (str, optional): Area optimization effort (default: "none")
  - `map_effort` (str, optional): Mapping effort (default: "low")
  - `dynamic_optimization` (str, optional): Enable dynamic optimization (default: "false")
  - `leakage_optimization` (str, optional): Enable leakage optimization (default: "false")
  - `force` (bool, optional): Force re-run even if output exists (default: True)
  - `skip_execution` (bool, optional): Skip actual execution, only generate scripts (default: False)
- **Returns**: JSON string with synthesis results, timing/area/power reports
- **Server**: Synthesis Server (port 18001)
- **Prerequisites**: 
  - Design RTL files must exist in designs/{design}/rtl/
  - Technology library must be available
  - Synthesis scripts must be present in src/scripts/{tech}/frontend/

### 2. placement
- **Function**: Complete placement flow including floorplanning, power planning, and standard cell placement
- **Description**: Performs the complete placement flow including setup, floorplanning, power planning, and placement using Cadence Innovus. Creates all necessary design saves (floorplan.enc, powerplan.enc, placement.enc).
- **Parameters**:
  - `design` (str, required): Design name
  - `tech` (str, optional): Technology library (default: "FreePDK45")
  - `syn_ver` (str, optional): Synthesis version string (auto-detected if None)
  - `impl_ver` (str, optional): Implementation version string (auto-generated if None)
  - `force` (bool, optional): Force re-run even if output exists (default: True)
  - `skip_execution` (bool, optional): Skip actual execution, only generate scripts (default: False)
  - `flowEffort` (str, optional): Global flow effort (default: "standard")
  - `globalPowerEffort` (str, optional): Global power effort (default: "none")
  - `aspectRatio` (float, optional): Chip aspect ratio (default: 1.0)
  - `rowDensity` (float, optional): Row density for placement (default: 0.7)
  - `place_global_timing_effort` (str, optional): Global placement timing effort (default: "medium")
  - `place_global_cong_effort` (str, optional): Global placement congestion effort (default: "low")
  - `place_detail_wire_length_opt_effort` (str, optional): Detail placement wire length optimization effort (default: "none")
  - `place_global_max_density` (float, optional): Maximum placement density (default: 0.9)
- **Returns**: JSON string with placement results, placement files, and checkpoint data
- **Server**: Placement Server (port 18002)
- **Prerequisites**: 
  - Synthesis must be completed successfully
  - Placement scripts must be present in src/scripts/{tech}/backend/
  - Technology files must be available

### 3. clock_tree_synthesis
- **Function**: Clock distribution network synthesis and optimization
- **Description**: Synthesizes the clock distribution network by inserting clock buffers and optimizing clock tree topology. Ensures balanced clock distribution while meeting clock skew and transition time requirements.
- **Parameters**:
  - `design` (str, required): Design name
  - `tech` (str, optional): Technology library (default: "FreePDK45")
  - `syn_ver` (str, optional): Synthesis version string (auto-detected if None)
  - `impl_ver` (str, optional): Implementation version string (auto-detected if None)
  - `restore_enc` (str, optional): Path to placement checkpoint file (auto-detected if None)
  - `force` (bool, optional): Force re-run even if output exists (default: True)
  - `skip_execution` (bool, optional): Skip actual execution, only generate scripts (default: False)
  - `cell_density` (float, optional): Cell density for CTS (default: 0.5)
  - `clock_gate_buffering_location` (str, optional): Clock gate buffering location (default: "below")
  - `clone_clock_gates` (str, optional): Enable clock gate cloning (default: "true")
  - `maxDensity` (float, optional): Maximum density for CTS (default: 0.8)
  - `powerEffort` (str, optional): Power optimization effort for CTS (default: "low")
  - `reclaimArea` (str, optional): Area reclaim effort (default: "default")
  - `fixFanoutLoad` (str, optional): Fix fanout load during CTS (default: "true")
- **Returns**: JSON string with clock tree synthesis results, clock tree files, and checkpoint data
- **Server**: CTS Server (port 18003)
- **Prerequisites**: 
  - Placement must be completed successfully
  - Placement checkpoint file must be valid
  - Clock tree synthesis scripts must be present in src/scripts/{tech}/backend/

### 4. routing
- **Function**: Signal routing and final design save
- **Description**: Performs the complete routing and save flow including global and detailed signal routing, post-route optimization, final design verification, and output file generation (GDSII, DEF, netlist, etc.).
- **Parameters**:
  - `design` (str, required): Design name
  - `tech` (str, optional): Technology library (default: "FreePDK45")
  - `syn_ver` (str, optional): Synthesis version string (auto-detected if None)
  - `impl_ver` (str, optional): Implementation version string (auto-detected if None)
  - `force` (bool, optional): Force re-run even if output exists (default: True)
  - `skip_execution` (bool, optional): Skip actual execution, only generate scripts (default: False)
- **Returns**: JSON string with routing results, output files, and report data
- **Server**: Routing Server (port 18004)
- **Prerequisites**: 
  - Clock tree synthesis must be completed successfully
  - CTS checkpoint file must be valid
  - Routing scripts must be present in src/scripts/{tech}/backend/

## Installation and Configuration

### Prerequisites

1. **Python Environment**:
   ```bash
   # Python 3.8 or higher
   python3 --version
   
   # Required packages
   pip install mcp fastmcp requests
   ```

2. **EDA Server Dependencies**:
   ```bash
   # Install additional dependencies
   pip install fastapi pydantic uvicorn jinja2 python-dotenv
   
   # For local LLM support (optional)
   pip install transformers torch
   ```

3. **EDA Tools**: Ensure Synopsys Design Compiler and Cadence Innovus are properly installed and licensed

### Start EDA Servers

1. **Start all EDA servers**:
   ```bash
   cd /path/to/mcp-eda-example/src
   python run_server.py --server all
   ```

2. **Verify servers are running**:
   ```bash
   curl http://localhost:18001/docs  # Synthesis
   curl http://localhost:18002/docs  # Placement
   curl http://localhost:18003/docs  # CTS
   curl http://localhost:18004/docs  # Routing
   ```

### Configure Claude Desktop

1. **Edit Claude Desktop configuration**:
   ```bash
   # macOS
   ~/.config/claude/claude_desktop_config.json
   
   # Windows  
   %APPDATA%/Claude/claude_desktop_config.json
   ```

2. **Configuration file content**:
   ```json
   {
     "mcpServers": {
       "mcp-eda-server": {
         "command": "bash",
         "args": [
           "-c",
           "cd /path/to/your/mcp-eda-example/src/server/mcp && python3 mcp_eda_server.py"
         ],
         "env": {},
         "description": "MCP EDA Server with 4-server architecture"
       }
     }
   }
   ```

### Start MCP Server

**Option 1: Direct execution**
```bash
cd /path/to/mcp-eda-example/src/server/mcp
python3 mcp_eda_server.py
```

**Option 2: Using startup script**
```bash
cd /path/to/mcp-eda-example/src/server/mcp
chmod +x start_mcp_server.sh
./start_mcp_server.sh
```

### Test MCP Server

1. **Verify tools are available** (in Claude Desktop):
   ```
   What EDA tools are available?
   ```

2. **Test synthesis**:
   ```
   Run synthesis for design "des" with 2ns clock period
   ```

3. **Test placement**:
   ```
   Perform placement for design "des" with aspect ratio 1.2
   ```

## Usage Examples

### Basic EDA Flow

1. **Synthesis**:
   ```
   Run synthesis for design "des" with:
   - Clock period: 2.0 ns
   - Power effort: high
   - Area effort: medium
   ```

2. **Placement**:
   ```
   Perform placement for design "des" with:
   - Aspect ratio: 1.2
   - Row density: 0.8
   - Flow effort: standard
   ```

3. **Clock Tree Synthesis**:
   ```
   Run clock tree synthesis for design "des" with:
   - Power effort: medium
   - Maximum density: 0.85
   ```

4. **Routing**:
   ```
   Perform routing for design "des"
   ```

### Advanced Parameter Control

```
Run synthesis for design "des" with the following optimizations:
- Clock period: 1.5ns
- Power effort: high
- Area effort: medium
- Dynamic optimization: true
- Leakage optimization: true
- Compile command: compile_ultra
```

## Troubleshooting

### Common Issues

1. **MCP server not starting**:
   - Check Python version (3.8+ required)
   - Verify all dependencies are installed: `pip install mcp fastmcp requests`
   - Ensure EDA servers are running on ports 18001-18004

2. **Tool not found errors**:
   - Verify EDA servers are accessible: `curl http://localhost:18001/docs`
   - Check server logs in `logs/` directory
   - Restart EDA servers: `python src/run_server.py --server all`

3. **Design not found**:
   - Ensure design files exist in `designs/{design}/rtl/`
   - Check design directory structure
   - Verify RTL file permissions

4. **Checkpoint file errors**:
   - Ensure previous stages completed successfully
   - Check workspace directories in `designs/{design}/{tech}/`
   - Verify checkpoint file permissions

### Debug Methods

1. **Check MCP server logs**:
   ```bash
   cd /path/to/mcp-eda-example/src/server/mcp
   python3 mcp_eda_server.py
   # Watch for error messages in output
   ```

2. **Test EDA servers directly**:
   ```bash
   curl -X POST http://localhost:18001/run \
     -H "Content-Type: application/json" \
     -d '{"design": "des", "tech": "FreePDK45", "skip_execution": true}'
   ```

3. **Check server status**:
   ```bash
   ps aux | grep "run_server.py"
   netstat -tlnp | grep ":1800"
   ```

4. **Restart all services**:
   ```bash
   # Kill existing servers
   pkill -f "run_server.py"
   
   # Restart servers
   cd /path/to/mcp-eda-example/src
   python run_server.py --server all
   
   # Restart MCP server
   cd src/server/mcp
   python3 mcp_eda_server.py
   ```

## Development Guide

### Adding New Tools

1. **Create new tool function in mcp_eda_server.py**:
   ```python
   @mcp.tool()
   async def new_tool(
       design: str,
       tech: str = "FreePDK45",
       # ... other parameters
   ) -> str:
       """Tool description"""
       payload = {
           "design": design,
           "tech": tech,
           # ... other parameters
       }
       result = call_eda_server("target_server", payload)
       return json.dumps(result, ensure_ascii=False, indent=2)
   ```

2. **Update server mapping if needed**:
   ```python
   EDA_SERVERS = {
       "synthesis": {"port": 18001, "endpoint": "run"},
       "placement": {"port": 18002, "endpoint": "run"},
       "cts": {"port": 18003, "endpoint": "run"},
       "routing": {"port": 18004, "endpoint": "run"},
       "new_server": {"port": 18005, "endpoint": "run"},  # Add new server
   }
   ```

### Modifying Existing Tools

1. **Update tool parameters**:
   - Modify function signature in mcp_eda_server.py
   - Update payload construction
   - Handle None values properly to avoid validation errors

2. **Update documentation**:
   - Update tool description and parameter documentation
   - Update examples in this document

3. **Test changes**:
   ```bash
   cd /path/to/mcp-eda-example/src/server/mcp
   python3 mcp_eda_server.py
   # Test in Claude Desktop
   ```

### Configuration Options

The `claude_desktop_config.json` includes examples for:
- Local installation
- Remote server SSH connection
- Conda environment activation
- Startup script usage

Choose the appropriate configuration based on your deployment scenario.

## Architecture Benefits

1. **Modularity**: Each EDA stage is independent and can be called separately
2. **Scalability**: Each server can be scaled independently based on workload
3. **Flexibility**: Natural language interface allows complex parameter combinations
4. **Reliability**: Comprehensive error handling and automatic version management
5. **Maintainability**: Clean separation between MCP tools and EDA server implementations
6. **Extensibility**: Easy to add new tools or modify existing ones

## Support and Maintenance

1. **Regular Updates**: Keep FastMCP and dependencies updated
2. **Log Monitoring**: Monitor server logs for performance and errors
3. **Resource Management**: Monitor server resources and scale as needed
4. **Backup Strategy**: Regular backup of design data and configurations
5. **Version Control**: Track changes to scripts and configurations
