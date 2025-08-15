# MCP EDA API Documentation

## Overview

The MCP EDA (Model Context Protocol for Electronic Design Automation) framework provides multiple interfaces for automating digital design implementation flows using natural language processing, RESTful APIs, and MCP protocol. The system integrates multiple EDA tools (Synopsys Design Compiler and Cadence Innovus) through a modern 4-server microservice architecture, enabling intelligent automation of the complete RTL-to-GDSII design flow.

### Architecture

The framework consists of:
- **MCP Agent Client** (Port 8000): AI-powered HTTP API interface that processes natural language queries and orchestrates EDA flows
- **MCP EDA Server**: MCP protocol server for Claude Desktop integration with unified tool functions
- **Interactive MCP Client**: Command-line interface for direct MCP tool interaction
- **4 Unified EDA Servers**: Modern microservice architecture for complete EDA flow
- **EDA Tools**: Synopsys Design Compiler for synthesis, Cadence Innovus for physical implementation
- **Experimental Framework**: CodeBLEU evaluation system for TCL generation quality

### Unified 4-Server Architecture

| Stage | Service | Port | Description |
|-------|---------|------|-------------|
| **Synthesis** | `synthesis_server.py` | 18001 | Complete RTL-to-gate synthesis (setup + compile) |
| **Placement** | `placement_server.py` | 18002 | Integrated placement flow (floorplan + powerplan + placement) |
| **Clock Tree Synthesis** | `cts_server.py` | 18003 | Clock distribution network synthesis |
| **Routing** | `routing_server.py` | 18004 | Integrated routing and save flow (routing + final save) |

## Interface Types

### 1. HTTP API (MCP Agent Client)

The main HTTP interface for natural language EDA operations.

#### POST `/agent`

**Endpoint:** `http://localhost:8000/agent`

**Request Body:**
```json
{
  "user_query": "Run synth_setup for design=\"des\" and return the log path."
}
```

**Response:**
```json
{
  "tool_called": "synth_setup",
  "tool_input": {
    "design": "des",
    "tech": "FreePDK45",
    "version_idx": 0,
    "force": true
  },
  "tool_output": {
    "status": "ok",
    "log_path": "/home/yl996/proj/mcp-eda-example/logs/setup/des_setup_20241219_143022.log",
    "reports": {
      "check_design.rpt": "Design check report content"
    }
  }
}
```

### 2. MCP Protocol Server

Direct MCP protocol interface for Claude Desktop integration with unified 4-server architecture.

#### Available MCP Tools

1. **synthesis**
   - **Function**: Complete RTL-to-gate synthesis (setup + compile)
   - **Parameters**: design, tech, version_idx, force
   - **Returns**: JSON string with synthesis results including timing, area, and power reports

2. **unified_placement**
   - **Function**: Placement flow (floorplan + powerplan + placement)
   - **Parameters**: design, top_module, tech, syn_ver, g_idx, p_idx, force, restore_enc
   - **Returns**: JSON string with placement results and checkpoint data

3. **clock_tree_synthesis**
   - **Function**: Clock distribution network synthesis
   - **Parameters**: design, top_module, restore_enc, tech, impl_ver, force, g_idx, c_idx
   - **Returns**: JSON string with CTS results and checkpoint data

4. **unified_route_save**
   - **Function**: Routing and save flow (routing + final save)
   - **Parameters**: design, top_module, restore_enc, tech, impl_ver, force, g_idx, p_idx, r_idx, archive
   - **Returns**: JSON string with routing results and final deliverables

5. **complete_eda_flow**
   - **Function**: Complete RTL to GDSII flow using unified 4-server architecture
   - **Parameters**: design, top_module, tech, force
   - **Returns**: JSON string with complete flow results and step-by-step status

### 3. Interactive MCP Client

Command-line interface for direct MCP tool interaction.

**Usage:**
```bash
python3 src/mcp_eda_client_simple.py
```

**Example Session:**
```
=== Interactive MCP EDA Client ===
Connected to MCP server. Type help for commands, exit to quit.

MCP> help
Available commands:
  list                List all tools
  call <tool> <args>  Call specific tool (supports natural language)
  Direct input        Smart recognition and tool calling
  exit                Exit client

MCP> Please run synthesis setup for b14 design
Calling tool: synthesis_setup, parameters: {'design': 'b14', 'tech': 'FreePDK45', 'version_idx': 0, 'force': False}
```

## Direct Server APIs

### 1. Synthesis Server

**Endpoint:** `http://localhost:18001/run`

**Request Body:**
```json
{
  "design": "des",
  "tech": "FreePDK45",
  "version_idx": 0,
  "force": true
}
```

**Parameters:**
- `design` (string, required): Design name (e.g., "des", "b14", "leon2")
- `tech` (string, required): Technology library (currently supports "FreePDK45")
- `version_idx` (integer, required): Configuration version index (0-based)
- `force` (boolean, optional): Force re-run even if output exists (default: false)

**Response:**
```json
{
  "status": "ok",
  "log_path": "/home/yl996/proj/mcp-eda-example/logs/synthesis/des_synthesis_20241219_143022.log",
  "reports": {
    "timing.rpt": "Timing analysis report",
    "area.rpt": "Area utilization report",
    "power.rpt": "Power analysis report",
    "check_design.rpt": "Design check report content"
  },
  "tcl_path": "/home/yl996/proj/mcp-eda-example/result/des/FreePDK45/synthesis_complete.tcl"
}
```

### 2. Placement Server

**Endpoint:** `http://localhost:18002/run`

**Request Body:**
```json
{
  "design": "des",
  "top_module": "des3",
  "tech": "FreePDK45",
  "syn_ver": "cpV1_clkP1_drcV1",
  "g_idx": 0,
  "p_idx": 0,
  "force": true,
  "restore_enc": ""
}
```

**Parameters:**
- `design` (string, required): Design name
- `top_module` (string, required): Top-level module name (from config.tcl)
- `tech` (string, required): Technology library
- `syn_ver` (string, required): Synthesis version string (from previous synthesis)
- `g_idx` (integer, required): Global configuration index (0-based)
- `p_idx` (integer, required): Parameter configuration index (0-based)
- `force` (boolean, optional): Force re-run (default: false)
- `restore_enc` (string, optional): Path to restore checkpoint file

**Response:**
```json
{
  "status": "ok",
  "log_path": "/home/yl996/proj/mcp-eda-example/logs/unified_placement/des_unified_placement_20241219_143100.log",
  "reports": {
    "workspace": "Workspace setup completed",
    "placement": "Placement completed successfully",
    "floorplan_summary.rpt": "Floorplan summary report",
    "power_summary.rpt": "Power planning summary report",
    "placement_summary.rpt": "Placement summary report"
  },
  "tcl_path": "/home/yl996/proj/mcp-eda-example/result/des/FreePDK45/unified_placement_complete.tcl"
}
```

### 3. Clock Tree Synthesis Server

**Endpoint:** `http://localhost:18003/run`

**Request Body:**
```json
{
  "design": "des",
  "top_module": "des3",
  "tech": "FreePDK45",
  "impl_ver": "cpV1_clkP1_drcV1__g0_p0",
  "g_idx": 0,
  "c_idx": 0,
  "restore_enc": "/home/yl996/proj/mcp-eda-example/designs/des/FreePDK45/implementation/placement.enc.dat",
  "force": true
}
```

**Parameters:**
- `design` (string, required): Design name
- `top_module` (string, required): Top-level module name
- `tech` (string, required): Technology library
- `impl_ver` (string, required): Implementation version string (from placement)
- `g_idx` (integer, required): Global configuration index
- `c_idx` (integer, required): Clock tree parameter index
- `restore_enc` (string, required): Path to placement checkpoint file
- `force` (boolean, optional): Force re-run (default: false)

**Response:**
```json
{
  "status": "ok",
  "log_path": "/home/yl996/proj/mcp-eda-example/logs/unified_cts/des_unified_cts_20241219_143145.log",
  "report": "CTS summary report content",
  "tcl_path": "/home/yl996/proj/mcp-eda-example/result/des/FreePDK45/cts_complete.tcl"
}
```

### 4. Routing Server

**Endpoint:** `http://localhost:18004/run`

**Request Body:**
```json
{
  "design": "des",
  "top_module": "des3",
  "tech": "FreePDK45",
  "impl_ver": "cpV1_clkP1_drcV1__g0_p0",
  "g_idx": 0,
  "p_idx": 0,
  "r_idx": 0,
  "restore_enc": "/home/yl996/proj/mcp-eda-example/designs/des/FreePDK45/implementation/cts.enc.dat",
  "archive": true,
  "force": true
}
```

**Parameters:**
- `design` (string, required): Design name
- `top_module` (string, required): Top-level module name
- `tech` (string, required): Technology library
- `impl_ver` (string, required): Implementation version string (from CTS)
- `g_idx` (integer, required): Global configuration index
- `p_idx` (integer, required): Placement parameter index
- `r_idx` (integer, required): Routing parameter index
- `restore_enc` (string, required): Path to CTS checkpoint file
- `archive` (boolean, optional): Create archive of final results (default: true)
- `force` (boolean, optional): Force re-run (default: false)

**Response:**
```json
{
  "status": "ok",
  "log_path": "/home/yl996/proj/mcp-eda-example/logs/unified_routing/des_unified_routing_20241219_143200.log",
  "reports": {
    "workspace": "Workspace setup completed",
    "route_save": "Routing and save completed successfully",
    "routing_summary.rpt": "Routing summary report",
    "timing_summary.rpt": "Final timing report",
    "drc_summary.rpt": "DRC check report"
  },
  "artifacts": {
    "gdsii": "/path/to/final.gds",
    "def": "/path/to/final.def",
    "netlist": "/path/to/final.v",
    "sdf": "/path/to/final.sdf"
  },
  "tcl_path": "/home/yl996/proj/mcp-eda-example/result/des/FreePDK45/unified_route_save_complete.tcl",
  "archive_path": "/home/yl996/proj/mcp-eda-example/deliverables/des_20241219_143215.tar.gz"
}
```

## Experimental Framework API

### CodeBLEU Evaluation Framework

The experimental framework provides APIs for evaluating TCL generation quality using CodeBLEU metrics.

#### Evaluation Metrics

The framework evaluates TCL code quality using CodeBLEU across multiple dimensions:

- **CodeBLEU Score** (0.00-1.00): Combined code similarity metric
- **Syntax Match** (0.00-1.00): TCL syntax tree similarity
- **Dataflow Analysis** (0.00-1.00): Variable and data flow correctness
- **N-gram Matching** (0.00-1.00): Token sequence similarity

#### Running Experiments

```bash
# Navigate to experiment directory
cd src/codebleu_tcl

# Basic CodeBLEU evaluation
python3 -c "
from tcl_codebleu_evaluator import TCLCodeBLEUEvaluator
evaluator = TCLCodeBLEUEvaluator()
print('CodeBLEU-TCL evaluator loaded successfully')
"

# Evaluate generated TCL scripts
python3 -c "
from tcl_codebleu_evaluator import TCLCodeBLEUEvaluator
from pathlib import Path

evaluator = TCLCodeBLEUEvaluator()
# result = evaluator.evaluate_generated_tcl(
#     generated_tcl_file=Path('generated.tcl'),
#     reference_tcl_file=Path('reference.tcl'),
#     tool_type='auto'
# )
"

# View CodeBLEU documentation
cat README.md
```

#### CodeBLEU-TCL Features

1. **EDA Command Recognition**: Supports 271+ domain-specific EDA commands
2. **Stage-Specific Weights**: Optimized evaluation for synthesis, placement, CTS, and routing
3. **Multi-Dimensional Analysis**: N-gram matching, syntax analysis, and dataflow analysis
4. **Automatic Tool Detection**: Auto-detects EDA tool type from script content

#### CodeBLEU Evaluation Results

```json
{
  "evaluation_summary": {
    "timestamp": "2024-08-10 11:37:46",
    "total_scripts": 90,
    "eda_stages_evaluated": ["synthesis", "placement", "cts", "routing"]
  },
  "evaluation_results": {
    "synthesis_scripts": {
      "avg_codebleu": 0.8947,
      "avg_syntax_match": 0.9234,
      "avg_dataflow_match": 0.8765,
      "avg_ngram_match": 0.8901,
      "total_scripts": 25
    },
    "placement_scripts": {
      "avg_codebleu": 0.8612,
      "avg_syntax_match": 0.8890,
      "avg_dataflow_match": 0.8445,
      "avg_ngram_match": 0.8567,
      "total_scripts": 25
    },
    "cts_scripts": {
      "avg_codebleu": 0.8789,
      "avg_syntax_match": 0.9001,
      "avg_dataflow_match": 0.8623,
      "avg_ngram_match": 0.8712,
      "total_scripts": 20
    },
    "routing_scripts": {
      "avg_codebleu": 0.8523,
      "avg_syntax_match": 0.8756,
      "avg_dataflow_match": 0.8334,
      "avg_ngram_match": 0.8445,
      "total_scripts": 20
    }
  },
  "performance_analysis": {
    "best_stage": "synthesis",
    "evaluation_speed": "~100 script pairs per second",
    "memory_usage": "<500MB for typical workloads"
  }
}
```

## Configuration Management

### Design Configuration

Each design requires a `config.tcl` file in `designs/<design>/config.tcl`:

```tcl
# Top-level module name
set TOP_NAME "des3"

# File format (verilog/vhdl)
set FILE_FORMAT "verilog"

# Clock port name (must match RTL)
set CLOCK_NAME "clk"

# Clock period in nanoseconds
set clk_period 1.0
```

### Synthesis Parameters (`config/synthesis.csv`)

| Parameter | Description | Default | Range |
|-----------|-------------|---------|-------|
| `clk_period` | Target clock period (ns) | 1.0 | 0.1-100.0 |
| `DRC_max_fanout` | Maximum fanout | 10 | 1-100 |
| `DRC_max_transition` | Maximum transition time (ns) | 0.5 | 0.1-10.0 |
| `DRC_max_capacitance` | Maximum capacitance (pF) | 5.0 | 0.1-50.0 |
| `compile_cmd` | Compilation command | `compile_ultra` | `compile_ultra`, `compile` |
| `map_effort` | Mapping effort | `high` | `low`, `medium`, `high` |
| `power_effort` | Power optimization effort | `medium` | `low`, `medium`, `high` |
| `area_effort` | Area optimization effort | `medium` | `low`, `medium`, `high` |

### Implementation Parameters (`config/imp_global.csv`)

| Parameter | Description | Default | Range |
|-----------|-------------|---------|-------|
| `ASPECT_RATIO` | Die aspect ratio | 1.0 | 0.1-10.0 |
| `target_util` | Target utilization | 0.7 | 0.1-0.9 |
| `design_flow_effort` | Flow effort level | `standard` | `low`, `standard`, `high` |
| `design_power_effort` | Power optimization effort | `medium` | `low`, `medium`, `high` |

## Usage Examples

### Example 1: Complete Design Flow Using HTTP API (4-Server Architecture)

```bash
# Option 1: Complete EDA Flow (Recommended)
curl -X POST http://localhost:8000/agent \
  -H "Content-Type: application/json" \
  -d '{"user_query":"Run complete EDA flow for design=\"des\", top_module=\"des3\" using the 4-server architecture."}'

# Option 2: Individual Stages
# 1. Synthesis (Complete setup + compile)
curl -X POST http://localhost:8000/agent \
  -H "Content-Type: application/json" \
  -d '{"user_query":"Run synthesis for design=\"des\" and return the log path."}'

# 2. Placement (Floorplan + Power + Placement)
curl -X POST http://localhost:8000/agent \
  -H "Content-Type: application/json" \
  -d '{"user_query":"Run unified_placement for design=\"des\", top_module=\"des3\" and return the checkpoint path."}'

# 3. Clock Tree Synthesis
curl -X POST http://localhost:8000/agent \
  -H "Content-Type: application/json" \
  -d '{"user_query":"Run CTS for design=\"des\", top_module=\"des3\" and return the checkpoint path."}'

# 4. Route Save (Routing + Final Save)
curl -X POST http://localhost:8000/agent \
  -H "Content-Type: application/json" \
  -d '{"user_query":"Run unified_route_save for design=\"des\", top_module=\"des3\" with archive=true and return all deliverables."}'

# Option 3: Multi-Stage Flows
# PnR Flow (Placement + CTS + Route Save)
curl -X POST http://localhost:8000/agent \
  -H "Content-Type: application/json" \
  -d '{"user_query":"Run pnr flow for design=\"des\", top_module=\"des3\" starting from synthesis results."}'
```

### Example 2: Using MCP Protocol with Claude Desktop

In Claude Desktop, you can directly use natural language to call the unified tools:

```
Please run the complete EDA flow for design "des" with top module "des3" using the unified 4-server architecture
```

```
Run synthesis for design "b14" and then placement with top module "b14"
```

```
Execute the pnr flow for design "leon2" starting from existing synthesis results
```

### Example 3: Using Interactive MCP Client

```bash
# Start interactive client
python3 src/mcp_eda_client_simple.py

# In the interactive session:
MCP> Please run synthesis for b14 design
MCP> Run unified_placement for b14 design with top module b14
MCP> call clock_tree_synthesis design b14 top_module b14
MCP> Execute complete_eda_flow for design b14 top_module b14
```

### Example 4: Direct API Usage (4-Server Architecture)

```bash
# Direct synthesis (complete setup + compile)
curl -X POST http://localhost:18001/run \
  -H "Content-Type: application/json" \
  -d '{
    "design": "des",
    "tech": "FreePDK45",
    "version_idx": 0,
    "force": true
  }'

# Direct placement (floorplan + power + placement)
curl -X POST http://localhost:18002/run \
  -H "Content-Type: application/json" \
  -d '{
    "design": "des",
    "top_module": "des3",
    "tech": "FreePDK45",
    "syn_ver": "cpV1_clkP1_drcV1",
    "g_idx": 0,
    "p_idx": 0,
    "force": true,
    "restore_enc": ""
  }'

# Direct CTS
curl -X POST http://localhost:18003/run \
  -H "Content-Type: application/json" \
  -d '{
    "design": "des",
    "top_module": "des3",
    "tech": "FreePDK45",
    "impl_ver": "cpV1_clkP1_drcV1__g0_p0",
    "g_idx": 0,
    "c_idx": 0,
    "restore_enc": "/path/to/placement.enc.dat",
    "force": true
  }'

# Direct routing (routing + final save)
curl -X POST http://localhost:18004/run \
  -H "Content-Type: application/json" \
  -d '{
    "design": "des",
    "top_module": "des3",
    "tech": "FreePDK45",
    "impl_ver": "cpV1_clkP1_drcV1__g0_p0",
    "g_idx": 0,
    "p_idx": 0,
    "r_idx": 0,
    "restore_enc": "/path/to/cts.enc.dat",
    "archive": true,
    "force": true
  }'
```

### Example 5: Automated Pipeline (Updated)

```bash
# Run complete pipeline using the restart script
./restart_servers.sh

# Start the AI agent
python3 src/mcp_agent_client.py

# The agent automatically:
# 1. Runs complete synthesis (setup + compile)
# 2. Detects synthesis version
# 3. Runs placement (floorplan + power + placement)
# 4. Executes CTS with proper checkpoint handling
# 5. Runs route save (routing + final save)
# 6. Provides intelligent status updates and error handling
# 7. Supports multi-stage flows (pnr, full_flow)
```

## Error Handling

### Common Error Responses

```json
{
  "status": "error",
  "error": "Design 'invalid_design' not found in designs directory",
  "details": "Available designs: ['des', 'b14', 'leon2']"
}
```

```json
{
  "status": "error",
  "error": "Clock port 'clk' not found in design",
  "details": "Available ports: ['clock', 'reset', 'data_in']"
}
```

```json
{
  "status": "error",
  "error": "Required checkpoint file not found",
  "details": "Expected: /path/to/previous_stage.enc.dat"
}
```

### Status Codes

- `200 OK`: Operation completed successfully
- `400 Bad Request`: Invalid parameters or missing required fields
- `404 Not Found`: Design, file, or service not found
- `500 Internal Server Error`: EDA tool execution failed

## Monitoring and Logs

All operations generate detailed logs in the `logs/` directory using the unified 4-server architecture:

```
logs/
├── synthesis/           # Complete synthesis logs (setup + compile)
├── unified_placement/   # Placement logs (floorplan + power + placement)
├── cts/                # Clock tree synthesis logs
├── unified_route_save/  # Route save logs (routing + final save)
└── agent/              # AI agent orchestration logs
```

Each log file contains:
- Complete command execution details
- EDA tool output and warnings
- Checkpoint file paths and status
- Timing and resource information
- Error messages and debugging information
- Stage-specific reports and metrics

## Health Check

### Check Service Status

```bash
# Check all services are running
python3 src/run_server.py --check

# Check specific services
curl -X GET http://localhost:18001/docs    # Synthesis Server
curl -X GET http://localhost:18002/docs    # Placement Server
curl -X GET http://localhost:18003/docs    # CTS Server
curl -X GET http://localhost:18004/docs    # Routing Server
curl -X GET http://localhost:8000/health   # Agent Client
```

### Service Monitoring

```bash
# Check if all ports are listening (updated ports)
netstat -tlnp | grep -E "(18001|18002|18003|18004|8000)"

# Check server processes (updated server names)
ps aux | grep -E "(run_server|server.*\.py|synthesis_server|placement_server|cts_server|routing_server|mcp_agent_client)"

# Monitor logs in real-time (updated log paths)
tail -f logs/synthesis/des_synthesis_*.log
tail -f logs/unified_placement/des_unified_placement_*.log
tail -f logs/unified_cts/des_unified_cts_*.log
tail -f logs/unified_routing/des_unified_routing_*.log

# Monitor agent logs
tail -f logs/agent/agent_*.log
```

### Advanced Monitoring

```bash
# Check service health with detailed output
python3 src/run_server.py --status

# Monitor all services simultaneously
watch -n 5 'netstat -tlnp | grep -E "(18001|18002|18003|18004|8000)"'

# Check EDA tool connectivity
which dc_shell && which innovus

# View service documentation
open http://localhost:18001/docs  # Synthesis
open http://localhost:18002/docs  # Placement  
open http://localhost:18003/docs  # CTS
open http://localhost:18004/docs  # Routing
open http://localhost:8000/docs   # Agent Client
``` 