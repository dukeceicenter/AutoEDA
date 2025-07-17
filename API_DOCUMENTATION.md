# MCP EDA API Documentation

## Overview

The MCP EDA (Model Context Protocol for Electronic Design Automation) framework provides multiple interfaces for automating digital design implementation flows using natural language processing, RESTful APIs, and MCP protocol. The system integrates multiple EDA tools (Synopsys Design Compiler and Cadence Innovus) through independent microservices, enabling intelligent automation of the complete RTL-to-GDSII design flow.

### Architecture

The framework consists of:
- **MCP Agent Client** (Port 8000): HTTP API interface that processes natural language queries and routes to appropriate services
- **MCP EDA Server**: MCP protocol server for Claude Desktop integration
- **Interactive MCP Client**: Command-line interface for direct MCP tool interaction
- **MCP Servers** (Ports 13333-13440): Individual microservices for each design stage
- **EDA Tools**: Synopsys Design Compiler for synthesis, Cadence Innovus for physical implementation
- **Experimental Framework**: TCL accuracy evaluation system

### Supported Design Stages

| Stage | Service | Port | Description |
|-------|---------|------|-------------|
| **Synthesis Setup** | `synth_setup_server.py` | 13333 | RTL synthesis setup and configuration |
| **Synthesis Compile** | `synth_compile_server.py` | 13334 | RTL-to-gate synthesis compilation |
| **Floorplan** | `floorplan_server.py` | 13335 | Chip floorplanning and I/O placement |
| **Power Planning** | `powerplan_server.py` | 13336 | Power distribution network generation |
| **Placement** | `placement_server.py` | 13337 | Standard cell placement optimization |
| **Clock Tree Synthesis** | `cts_server.py` | 13338 | Clock distribution network synthesis |
| **Routing** | `route_server.py` | 13339 | Signal routing and optimization |
| **Save Design** | `save_server.py` | 13440 | Final design saving and output generation |

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

Direct MCP protocol interface for Claude Desktop integration.

#### Available MCP Tools

1. **synthesis_setup**
   - **Function**: Setup synthesis environment for RTL design
   - **Parameters**: design, tech, version_idx, force
   - **Returns**: JSON string with synthesis setup results

2. **synthesis_compile**
   - **Function**: Perform RTL-to-gate synthesis compilation
   - **Parameters**: design, tech, version_idx, force
   - **Returns**: JSON string with synthesis compilation results

3. **floor_planning**
   - **Function**: Perform chip floorplanning and I/O placement
   - **Parameters**: design, top_module, tech, syn_ver, g_idx, p_idx, force, restore_enc
   - **Returns**: JSON string with floorplanning results

4. **power_planning**
   - **Function**: Perform power distribution network planning
   - **Parameters**: design, top_module, restore_enc, tech, impl_ver, force, g_idx
   - **Returns**: JSON string with power planning results

5. **placement**
   - **Function**: Perform standard cell placement optimization
   - **Parameters**: design, top_module, restore_enc, tech, impl_ver, force, g_idx, p_idx
   - **Returns**: JSON string with placement results

6. **clock_tree_synthesis**
   - **Function**: Perform clock distribution network synthesis
   - **Parameters**: design, top_module, restore_enc, tech, impl_ver, force, g_idx, c_idx
   - **Returns**: JSON string with CTS results

7. **routing**
   - **Function**: Perform signal routing and optimization
   - **Parameters**: design, top_module, restore_enc, tech, impl_ver, force, g_idx, p_idx, c_idx
   - **Returns**: JSON string with routing results

8. **save_design**
   - **Function**: Save design results and generate deliverables
   - **Parameters**: design, top_module, tech, impl_ver, archive, force
   - **Returns**: JSON string with save results

9. **run_complete_flow**
   - **Function**: Run complete RTL to GDSII flow
   - **Parameters**: design, top_module, tech, force
   - **Returns**: JSON string with complete flow results

### 3. Interactive MCP Client

Command-line interface for direct MCP tool interaction.

**Usage:**
```bash
python3 mcp_eda_client_simple.py
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

### 1. Synthesis Setup Server

**Endpoint:** `http://localhost:13333/setup/run`

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
  "log_path": "/home/yl996/proj/mcp-eda-example/logs/setup/des_setup_20241219_143022.log",
  "reports": {
    "check_design.rpt": "Design check report content",
    "link.rpt": "Design linking report"
  }
}
```

### 2. Synthesis Compile Server

**Endpoint:** `http://localhost:13334/compile/run`

**Request Body:**
```json
{
  "design": "des",
  "tech": "FreePDK45",
  "version_idx": 0,
  "force": true
}
```

**Parameters:** Same as Synthesis Setup Server

**Response:**
```json
{
  "status": "ok",
  "log_path": "/home/yl996/proj/mcp-eda-example/logs/compile/des_compile_20241219_143045.log",
  "reports": {
    "timing.rpt": "Timing analysis report",
    "area.rpt": "Area utilization report",
    "power.rpt": "Power analysis report"
  }
}
```

### 3. Floorplan Server

**Endpoint:** `http://localhost:13335/floorplan/run`

**Request Body:**
```json
{
  "design": "des",
  "top_module": "des3",
  "tech": "FreePDK45",
  "syn_ver": "cpV1_clkP1_drcV1",
  "g_idx": 0,
  "p_idx": 0,
  "force": true
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

**Response:**
```json
{
  "status": "ok",
  "log_path": "/home/yl996/proj/mcp-eda-example/logs/floorplan/des_floorplan_20241219_143100.log",
  "report": "Floorplan summary report content"
}
```

### 4. Power Planning Server

**Endpoint:** `http://localhost:13336/power/run`

**Request Body:**
```json
{
  "design": "des",
  "top_module": "des3",
  "tech": "FreePDK45",
  "impl_ver": "cpV1_clkP1_drcV1__g0_p0",
  "g_idx": 0,
  "p_idx": 0,
  "restore_enc": "/home/yl996/proj/mcp-eda-example/designs/des/FreePDK45/implementation/floorplan.enc.dat",
  "force": true
}
```

**Parameters:**
- `design` (string, required): Design name
- `top_module` (string, required): Top-level module name
- `tech` (string, required): Technology library
- `impl_ver` (string, required): Implementation version string (from floorplan)
- `g_idx` (integer, required): Global configuration index
- `p_idx` (integer, required): Parameter configuration index
- `restore_enc` (string, required): Path to floorplan checkpoint file
- `force` (boolean, optional): Force re-run (default: false)

**Response:**
```json
{
  "status": "ok",
  "log_path": "/home/yl996/proj/mcp-eda-example/logs/powerplan/des_powerplan_20241219_143115.log",
  "report": "Power planning summary report content"
}
```

### 5. Placement Server

**Endpoint:** `http://localhost:13337/place/run`

**Request Body:**
```json
{
  "design": "des",
  "top_module": "des3",
  "tech": "FreePDK45",
  "impl_ver": "cpV1_clkP1_drcV1__g0_p0",
  "g_idx": 0,
  "p_idx": 0,
  "restore_enc": "/home/yl996/proj/mcp-eda-example/designs/des/FreePDK45/implementation/powerplan.enc.dat",
  "force": true
}
```

**Parameters:** Same as Power Planning Server

**Response:**
```json
{
  "status": "ok",
  "log_path": "/home/yl996/proj/mcp-eda-example/logs/placement/des_placement_20241219_143130.log",
  "report": "Placement summary report content"
}
```

### 6. Clock Tree Synthesis Server

**Endpoint:** `http://localhost:13338/cts/run`

**Request Body:**
```json
{
  "design": "des",
  "top_module": "des3",
  "tech": "FreePDK45",
  "impl_ver": "cpV1_clkP1_drcV1__g0_p0",
  "g_idx": 0,
  "p_idx": 0,
  "restore_enc": "/home/yl996/proj/mcp-eda-example/designs/des/FreePDK45/implementation/placement.enc.dat",
  "force": true
}
```

**Parameters:** Same as Placement Server

**Response:**
```json
{
  "status": "ok",
  "log_path": "/home/yl996/proj/mcp-eda-example/logs/cts/des_cts_20241219_143145.log",
  "report": "CTS summary report content"
}
```

### 7. Routing Server

**Endpoint:** `http://localhost:13339/route/run`

**Request Body:**
```json
{
  "design": "des",
  "top_module": "des3",
  "tech": "FreePDK45",
  "impl_ver": "cpV1_clkP1_drcV1__g0_p0",
  "g_idx": 0,
  "p_idx": 0,
  "restore_enc": "/home/yl996/proj/mcp-eda-example/designs/des/FreePDK45/implementation/cts.enc.dat",
  "force": true
}
```

**Parameters:** Same as CTS Server

**Response:**
```json
{
  "status": "ok",
  "log_path": "/home/yl996/proj/mcp-eda-example/logs/routing/des_routing_20241219_143200.log",
  "report": "Routing summary report content"
}
```

### 8. Save Design Server

**Endpoint:** `http://localhost:13440/save/run`

**Request Body:**
```json
{
  "design": "des",
  "top_module": "des3",
  "tech": "FreePDK45",
  "impl_ver": "cpV1_clkP1_drcV1__g0_p0",
  "g_idx": 0,
  "p_idx": 0,
  "restore_enc": "/home/yl996/proj/mcp-eda-example/designs/des/FreePDK45/implementation/route_opt.enc.dat",
  "force": true
}
```

**Parameters:** Same as Routing Server

**Response:**
```json
{
  "status": "ok",
  "log_path": "/home/yl996/proj/mcp-eda-example/logs/save/des_save_20241219_143215.log",
  "archive_path": "/home/yl996/proj/mcp-eda-example/deliverables/des_20241219_143215.tar.gz"
}
```

## Experimental Framework API

### TCL Accuracy Evaluation

The experimental framework provides APIs for evaluating TCL generation quality across different methods.

#### Evaluation Metrics

The framework evaluates TCL code quality across multiple dimensions:

- **Syntax** (0.00-1.00): Correctness of TCL syntax and commands
- **Completeness** (0.00-1.00): Presence of essential commands
- **Executability** (0.00-1.00): Likelihood of successful execution
- **Professionalism** (0.00-1.00): Use of advanced EDA features
- **Overall** (0.00-1.00): Combined score

#### Running Experiments

```bash
# Navigate to experiment directory
cd experiment

# Run complete experiment (generate + evaluate)
python run_experiment.py --full

# Run only generation for specific methods
python run_experiment.py --generate baseline1 ours

# Run only evaluation on existing results
python run_experiment.py --evaluate --summary

# Clean previous results and run
python run_experiment.py --clean --full
```

#### Experiment Methods

1. **Baseline1**: Pure LLM-based TCL generation
2. **Baseline2**: LLM + template-based generation
3. **Ours**: MCP agent with real EDA tool execution

#### Evaluation Results

```json
{
  "evaluation_info": {
    "name": "TCL Accuracy Evaluation",
    "description": "Evaluation of TCL generation quality between different methods",
    "total_cases": 1,
    "timestamp": "2024-12-19 14:30:22"
  },
  "case_results": {
    "case_0": {
      "case_id": "case_0",
      "methods": {
        "baseline1": {
          "generation_success": true,
          "execution_time": 2.5,
          "tcl_quality": {
            "overall": "0.75",
            "syntax": "1.00",
            "completeness": "0.67",
            "executability": "0.67",
            "professionalism": "0.67"
          },
          "notes": "Pure LLM generation",
          "timestamp": "2024-12-19 14:30:22"
        },
        "ours": {
          "generation_success": true,
          "execution_time": 15.2,
          "tcl_quality": {
            "overall": "1.00",
            "syntax": "1.00",
            "completeness": "1.00",
            "executability": "1.00",
            "professionalism": "1.00"
          },
          "notes": "MCP agent execution",
          "timestamp": "2024-12-19 14:30:22"
        }
      }
    }
  },
  "statistics": {
    "baseline1": {
      "success_rate": 1.0,
      "avg_quality": 0.75,
      "avg_time": 2.5,
      "total_cases": 1,
      "successful_cases": 1
    },
    "ours": {
      "success_rate": 1.0,
      "avg_quality": 1.0,
      "avg_time": 15.2,
      "total_cases": 1,
      "successful_cases": 1
    }
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

### Example 1: Complete Design Flow Using HTTP API

```bash
# 1. Synthesis Setup
curl -X POST http://localhost:8000/agent \
  -H "Content-Type: application/json" \
  -d '{"user_query":"Run synth_setup for design=\"des\" and return the log path."}'

# 2. Synthesis Compile
curl -X POST http://localhost:8000/agent \
  -H "Content-Type: application/json" \
  -d '{"user_query":"Run synth_compile for design=\"des\" and return the log path."}'

# 3. Floorplan
curl -X POST http://localhost:8000/agent \
  -H "Content-Type: application/json" \
  -d '{"user_query":"Run floorplan for design=\"des\", top_module=\"des3\" and return the path to floorplan.enc.dat."}'

# 4. Power Planning
curl -X POST http://localhost:8000/agent \
  -H "Content-Type: application/json" \
  -d '{"user_query":"Run powerplan for design=\"des\", top_module=\"des3\", impl_ver=\"cpV1_clkP1_drcV1__g0_p0\" and return the path to powerplan.enc.dat."}'

# 5. Placement
curl -X POST http://localhost:8000/agent \
  -H "Content-Type: application/json" \
  -d '{"user_query":"Run placement for design=\"des\", top_module=\"des3\", impl_ver=\"cpV1_clkP1_drcV1__g0_p0\" and return the path to placement.enc.dat."}'

# 6. Clock Tree Synthesis
curl -X POST http://localhost:8000/agent \
  -H "Content-Type: application/json" \
  -d '{"user_query":"Run CTS for design=\"des\", top_module=\"des3\", impl_ver=\"cpV1_clkP1_drcV1__g0_p0\" and return the path to cts.enc.dat."}'

# 7. Routing
curl -X POST http://localhost:8000/agent \
  -H "Content-Type: application/json" \
  -d '{"user_query":"Run routing for design=\"des\", top_module=\"des3\", impl_ver=\"cpV1_clkP1_drcV1__g0_p0\" and return the path to route_opt.enc.dat."}'

# 8. Save Design
curl -X POST http://localhost:8000/agent \
  -H "Content-Type: application/json" \
  -d '{"user_query":"Run save for design=\"des\", top_module=\"des3\", impl_ver=\"cpV1_clkP1_drcV1__g0_p0\" and return the archive path."}'
```

### Example 2: Using MCP Protocol with Claude Desktop

In Claude Desktop, you can directly use natural language to call tools:

```
Please run the complete RTL to GDSII flow for design "my_design" with top module "top_module"
```

### Example 3: Using Interactive MCP Client

```bash
# Start interactive client
python3 mcp_eda_client_simple.py

# In the interactive session:
MCP> Please run synthesis setup for b14 design
MCP> Run floorplan for b14 design with top module b14
MCP> call placement design b14 top_module b14
```

### Example 4: Direct API Usage

```bash
# Direct synthesis setup
curl -X POST http://localhost:13333/setup/run \
  -H "Content-Type: application/json" \
  -d '{
    "design": "des",
    "tech": "FreePDK45",
    "version_idx": 0,
    "force": true
  }'

# Direct floorplan
curl -X POST http://localhost:13335/floorplan/run \
  -H "Content-Type: application/json" \
  -d '{
    "design": "des",
    "top_module": "des3",
    "tech": "FreePDK45",
    "syn_ver": "cpV1_clkP1_drcV1",
    "g_idx": 0,
    "p_idx": 0,
    "force": true
  }'
```

### Example 5: Automated Pipeline

```bash
# Run complete pipeline for DES design
./run_pipeline.sh

# The script automatically:
# 1. Runs synthesis setup and compile
# 2. Detects synthesis version
# 3. Runs floorplan, powerplan, placement, CTS, routing
# 4. Saves final design
# 5. Provides status updates and error checking
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

All operations generate detailed logs in the `logs/` directory:

```
logs/
├── setup/           # Synthesis setup logs
├── compile/         # Synthesis compile logs
├── floorplan/       # Floorplanning logs
├── powerplan/       # Power planning logs
├── placement/       # Placement logs
├── cts/            # Clock tree synthesis logs
├── route/          # Routing logs
└── save/           # Design save logs
```

Each log file contains:
- Command execution details
- Tool output and warnings
- Timing and resource information
- Error messages and debugging information 

## Health Check

### Check Service Status

```bash
# Run health check for all services
python docker/health_check.py

# Check specific service
curl -X GET http://localhost:13333/health
```

### Service Monitoring

```bash
# Check if all ports are listening
netstat -tlnp | grep -E "(1333[3-9]|13440|8000)"

# Check server processes
ps aux | grep -E "(synth_setup|floorplan|placement|cts|route)"

# Monitor logs in real-time
tail -f logs/setup/des_setup_*.log
``` 