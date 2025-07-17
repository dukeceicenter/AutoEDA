# MCP EDA - Model Context Protocol for Electronic Design Automation
[![Python 3.9+](https://img.shields.io/badge/python-3.9+-blue.svg)](https://www.python.org/downloads/)
[![FastAPI](https://img.shields.io/badge/FastAPI-0.100+-green.svg)](https://fastapi.tiangolo.com/)

A comprehensive **Model Context Protocol (MCP)** based Electronic Design Automation (EDA) system that provides intelligent automation for digital design implementation flows. This system integrates multiple EDA tools through a unified MCP interface, enabling natural language-driven design automation with experimental evaluation framework.

## Features

- **AI-Powered Automation**: Natural language interface for EDA operations using GPT-4
- **Multi-Tool Integration**: Seamless integration of Synopsys Design Compiler and Cadence Innovus
- **Complete Design Flow**: End-to-end digital design implementation from RTL to GDSII
- **RESTful API**: Standardized HTTP API for all EDA operations
- **Real-time Monitoring**: Live status tracking and detailed logging
- **Modular Architecture**: Independent microservices for each design stage
- **Configuration Management**: CSV-based parameter management for design optimization
- **Experimental Framework**: Comprehensive TCL accuracy evaluation system
- **Multiple Design Support**: Support for various benchmark designs (des, b14, leon2, etc.)

## System Architecture

```
┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐
│   User Query    │───▶│  MCP Agent      │───▶│  MCP Servers    │
│  (Natural Lang) │    │  Client (8000)  │    │  (13333-13440)  │
└─────────────────┘    └─────────────────┘    └─────────────────┘
                                │                       │
                                ▼                       ▼
                       ┌─────────────────┐    ┌─────────────────┐
                       │   OpenAI GPT-4  │    │   EDA Tools     │
                       │   (Tool Select) │    │  (DC/Innovus)   │
                       └─────────────────┘    └─────────────────┘
```

### MCP Server Architecture

| Service | Port | Endpoint | Description |
|---------|------|----------|-------------|
| **MCP Agent Client** | 8000 | `/agent` | Main interface for natural language processing |
| **Synthesis Setup** | 13333 | `/setup/run` | RTL synthesis setup and configuration |
| **Synthesis Compile** | 13334 | `/compile/run` | RTL-to-gate synthesis compilation |
| **Floorplan** | 13335 | `/floorplan/run` | Chip floorplanning and I/O placement |
| **Power Planning** | 13336 | `/power/run` | Power distribution network generation |
| **Placement** | 13337 | `/place/run` | Standard cell placement optimization |
| **Clock Tree Synthesis** | 13338 | `/cts/run` | Clock distribution network synthesis |
| **Routing** | 13339 | `/route/run` | Signal routing and optimization |
| **Save Design** | 13440 | `/save/run` | Final design saving and output generation |

## Experimental Framework

The project includes a comprehensive experimental framework for evaluating TCL generation accuracy across different methods:

### Experiment Methods

1. **Baseline1**: Pure LLM-based TCL generation
2. **Baseline2**: LLM + template-based generation  
3. **Ours**: MCP agent with real EDA tool execution

### Experiment Structure

```
experiment/
├── generate/                    # TCL generation scripts
│   ├── baseline1_generate.py   # Pure LLM generation
│   ├── baseline2_generate.py   # LLM + template generation
│   ├── ours_generate.py        # MCP agent generation
│   └── common_config.py        # Shared configuration
├── evaluate/                    # Evaluation scripts
│   ├── tcl_evaluator.py        # Main evaluator
│   └── evaluation_metrics.py   # Quality metrics
├── results/                     # Generation results
├── evaluation_results/          # Evaluation reports
└── run_experiment.py           # Main experiment runner
```

### Running Experiments

```bash
# Run complete experiment (generate + evaluate)
cd experiment
python run_experiment.py --full

# Run only generation for specific methods
python run_experiment.py --generate baseline1 ours

# Run only evaluation on existing results
python run_experiment.py --evaluate

# Clean previous results
python run_experiment.py --clean --full
```

## Prerequisites

### Software Requirements

- **Python 3.9+**
- **Synopsys Design Compiler** (for synthesis)
- **Cadence Innovus** (for physical implementation)
- **FreePDK45** technology library
- **OpenAI API Key** (for GPT-4 integration)

### System Requirements

- **OS**: Linux (tested on Ubuntu 20.04+)
- **Memory**: 8GB RAM minimum (16GB+ recommended)
- **Storage**: 10GB free space for design files and logs
- **Network**: Local network access for inter-service communication

## Installation

### Option 1: Docker Deployment (Recommended)

Due to licensing restrictions of commercial EDA tools, we use a **hybrid Docker approach**:

```bash
# Clone the repository
git clone https://github.com/AndyLu666/MCP-EDA-Server.git
cd MCP-EDA-Server

# Copy environment template
cp docker/env.example .env

# Edit .env file with your configuration
# - Set your OpenAI API key
# - Configure EDA tools host
# - Set license file paths

# Deploy using Docker
chmod +x docker/deploy.sh
./docker/deploy.sh deploy
```

**Note**: EDA tools (Design Compiler, Innovus) must be installed on the host system with valid licenses. The Docker containers communicate with these tools via network.

### Option 2: Local Installation

#### 1. Clone the Repository

```bash
git clone https://github.com/AndyLu666/MCP-EDA-Server.git
cd MCP-EDA-Server
```

#### 2. Set Up Python Environment

```bash
# Create virtual environment
python3 -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

# Install dependencies
pip install -r requirements.txt
```

#### 3. Configure Environment Variables

Create a `.env` file in the project root:

```bash
# OpenAI API Configuration
OPENAI_API_KEY=your_openai_api_key_here

# MCP Server Configuration
MCP_SERVER_HOST=http://localhost

# Optional: Custom ports (defaults shown)
SETUP_PORT=13333
COMPILE_PORT=13334
FLOORPLAN_PORT=13335
POWER_PORT=13336
PLACE_PORT=13337
CTS_PORT=13338
ROUTE_PORT=13339
SAVE_PORT=13440
```

#### 4. Verify EDA Tools Installation

```bash
# Check Design Compiler
which dc_shell

# Check Innovus
which innovus

# Verify FreePDK45 library
ls libraries/FreePDK45/
```

## Quick Start

### 1. Start MCP Agent Client

```bash
# Terminal 1: Start the main agent
conda activate eda310  # or your conda environment
uvicorn mcp_agent_client:app --reload --host 0.0.0.0 --port 8000
```

### 2. Start MCP Servers

```bash
# Terminal 2: Start all MCP servers
./restart_servers.sh

# Or start individually:
cd server
python3 synth_setup_server.py --port 13333 &
python3 synth_compile_server.py --port 13334 &
python3 floorplan_server.py --port 13335 &
python3 powerplan_server.py --port 13336 &
python3 placement_server.py --port 13337 &
python3 cts_server.py --port 13338 &
python3 route_server.py --port 13339 &
python3 save_server.py --port 13440 &
```

### 3. Run Your First Design

```bash
# Test with the example design
curl -X POST http://localhost:8000/agent \
  -H "Content-Type: application/json" \
  -d '{"user_query":"Run synth_setup for design=\"des\" and return the log path."}'
```

## Usage Guide

### Natural Language Interface

The MCP Agent Client understands natural language queries and automatically selects the appropriate EDA tool:

```bash
# Synthesis
curl -X POST http://localhost:8000/agent \
  -d '{"user_query":"Run synth_setup for design=\"my_design\" and return the log path."}'

curl -X POST http://localhost:8000/agent \
  -d '{"user_query":"Run synth_compile for design=\"my_design\" and return the log path."}'

# Physical Implementation
curl -X POST http://localhost:8000/agent \
  -d '{"user_query":"Run floorplan for design=\"my_design\", top_module=\"my_module\" and return the path to floorplan.enc.dat."}'

curl -X POST http://localhost:8000/agent \
  -d '{"user_query":"Run placement for design=\"my_design\", top_module=\"my_module\" and return the path to placement.enc.dat."}'

curl -X POST http://localhost:8000/agent \
  -d '{"user_query":"Run routing for design=\"my_design\", top_module=\"my_module\" and return the path to route_opt.enc.dat."}'

curl -X POST http://localhost:8000/agent \
  -d '{"user_query":"Run save for design=\"my_design\", top_module=\"my_module\" and return the archive path."}'
```

### Complete Design Flow Example

```bash
# 1. Synthesis Setup
curl -X POST http://localhost:8000/agent \
  -d '{"user_query":"Run synth_setup for design=\"des\" and return the log path."}'

# 2. Synthesis Compile
curl -X POST http://localhost:8000/agent \
  -d '{"user_query":"Run synth_compile for design=\"des\" and return the log path."}'

# 3. Floorplan
curl -X POST http://localhost:8000/agent \
  -d '{"user_query":"Run floorplan for design=\"des\", top_module=\"des3\" and return the syn_ver and the path to floorplan.enc.dat."}'

# 4. Power Planning
curl -X POST http://localhost:8000/agent \
  -d '{"user_query":"Run powerplan for design=\"des\", top_module=\"des3\", impl_ver=\"cpV1_clkP1_drcV1__g0_p0\" and return the path to powerplan.enc.dat."}'

# 5. Placement
curl -X POST http://localhost:8000/agent \
  -d '{"user_query":"Run placement for design=\"des\", top_module=\"des3\", impl_ver=\"cpV1_clkP1_drcV1__g0_p0\" and return the path to placement.enc.dat."}'

# 6. Clock Tree Synthesis
curl -X POST http://localhost:8000/agent \
  -d '{"user_query":"Run CTS for design=\"des\", top_module=\"des3\", impl_ver=\"cpV1_clkP1_drcV1__g0_p0\" and return the path to cts.enc.dat."}'

# 7. Routing
curl -X POST http://localhost:8000/agent \
  -d '{"user_query":"Run routing for design=\"des\", top_module=\"des3\", impl_ver=\"cpV1_clkP1_drcV1__g0_p0\" and return the path to route_opt.enc.dat."}'

# 8. Save Design
curl -X POST http://localhost:8000/agent \
  -d '{"user_query":"Run save for design=\"des\", top_module=\"des3\", impl_ver=\"cpV1_clkP1_drcV1__g0_p0\" and return the archive path."}'
```

## Project Structure

```
mcp-eda-example/
├── designs/                    # Design source files and results
│   ├── des/                   # DES encryption design
│   │   ├── rtl/              # RTL source files
│   │   ├── FreePDK45/        # Technology-specific results
│   │   │   ├── synthesis/    # Synthesis outputs
│   │   │   └── implementation/ # Physical implementation
│   │   └── config.tcl        # Design configuration
│   ├── b14/                  # VHDL benchmark design
│   ├── leon2/                # LEON2 processor design
│   └── des3/                 # Additional designs
├── server/                    # MCP server implementations
│   ├── synth_setup_server.py    # Synthesis setup service
│   ├── synth_compile_server.py  # Synthesis compile service
│   ├── floorplan_server.py      # Floorplanning service
│   ├── powerplan_server.py      # Power planning service
│   ├── placement_server.py      # Placement service
│   ├── cts_server.py           # Clock tree synthesis service
│   ├── route_server.py         # Routing service
│   ├── save_server.py          # Design save service
│   └── mcp/                   # MCP server implementations
│       ├── mcp_eda_server.py   # Main MCP server
│       └── start_mcp_server.sh # MCP server startup script
├── experiment/                 # Experimental framework
│   ├── generate/              # TCL generation methods
│   │   ├── baseline1_generate.py  # Pure LLM generation
│   │   ├── baseline2_generate.py  # LLM + template generation
│   │   ├── ours_generate.py       # MCP agent generation
│   │   └── common_config.py       # Shared configuration
│   ├── evaluate/              # Evaluation framework
│   │   ├── tcl_evaluator.py       # Main evaluator
│   │   └── evaluation_metrics.py  # Quality metrics
│   ├── results/               # Generation results
│   ├── evaluation_results/    # Evaluation reports
│   └── run_experiment.py      # Main experiment runner
├── scripts/                   # EDA tool scripts
│   ├── FreePDK45/           # Technology-specific scripts
│   │   ├── frontend/        # Synthesis scripts
│   │   └── backend/         # Physical implementation scripts
│   └── _helper/             # Python helper scripts
├── config/                    # Configuration files
│   ├── synthesis.csv           # Synthesis parameters
│   ├── imp_global.csv          # Implementation parameters
│   ├── placement.csv           # Placement parameters
│   └── cts.csv                 # CTS parameters
├── libraries/                 # Technology libraries
│   └── FreePDK45/           # FreePDK45 library files
├── logs/                      # Execution logs
├── deliverables/              # Final design outputs
├── mcp_agent_client.py          # Main MCP agent client
├── restart_servers.sh           # Server startup script
├── docker-compose.yml           # Docker Compose configuration
├── docker/                      # Docker configuration files
│   ├── Dockerfile.agent         # MCP Agent Client Dockerfile
│   ├── Dockerfile.servers       # MCP Servers Dockerfile
│   ├── health_check.py          # Health check script
│   ├── deploy.sh                # Deployment script
│   └── env.example              # Environment template
├── requirements.txt             # Python dependencies
└── README.md                    # This file
```

## Configuration

### Design Configuration (`designs/<design>/config.tcl`)

```tcl
# Top-level module name
set TOP_NAME "your_module"

# File format (verilog/vhdl)
set FILE_FORMAT "verilog"

# Clock port name
set CLOCK_NAME "clk"

# Clock period in nanoseconds
set clk_period 1.0
```

### Synthesis Configuration (`config/synthesis.csv`)

| Parameter | Description | Default Value |
|-----------|-------------|---------------|
| `clk_period` | Target clock period (ns) | 1.0 |
| `DRC_max_fanout` | Maximum fanout | 10 |
| `DRC_max_transition` | Maximum transition time (ns) | 0.5 |
| `DRC_max_capacitance` | Maximum capacitance (pF) | 5.0 |
| `compile_cmd` | Compilation command | `compile_ultra` |
| `map_effort` | Mapping effort | `high` |
| `power_effort` | Power optimization effort | `medium` |
| `area_effort` | Area optimization effort | `medium` |

### Implementation Configuration (`config/imp_global.csv`)

| Parameter | Description | Default Value |
|-----------|-------------|---------------|
| `ASPECT_RATIO` | Die aspect ratio | 1.0 |
| `target_util` | Target utilization | 0.7 |
| `design_flow_effort` | Flow effort level | `standard` |
| `design_power_effort` | Power optimization effort | `medium` |

## Experimental Framework

### Supported Designs

The system supports various benchmark designs:

- **des**: DES encryption design (Verilog)
- **b14**: VHDL benchmark design
- **leon2**: LEON2 processor design
- **des3**: Additional DES variant

### Experiment Methods

1. **Baseline1 (Pure LLM)**: Direct GPT-4 TCL generation without templates
2. **Baseline2 (LLM + Template)**: GPT-4 generation with template guidance
3. **Ours (MCP Agent)**: Real MCP agent execution with EDA tools

### Quality Metrics

The evaluation framework assesses TCL quality across multiple dimensions:

- **Syntax**: Valid TCL syntax and structure
- **Completeness**: Coverage of required commands
- **Executability**: Ability to run successfully
- **Professionalism**: Industry-standard practices

### Running Experiments

```bash
# Complete experiment
cd experiment
python run_experiment.py --full

# Specific methods only
python run_experiment.py --generate baseline1 ours

# Evaluation only
python run_experiment.py --evaluate --summary

# Clean and run
python run_experiment.py --clean --full
```

## API Reference

### MCP Agent Client API

#### POST `/agent`

Main endpoint for natural language EDA operations.

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
    "log_path": "/path/to/log/file",
    "reports": {
      "check_design.rpt": "report content"
    }
  }
}
```

### Individual MCP Server APIs

#### Synthesis Setup Server (Port 13333)

**POST `/setup/run`**

```json
{
  "design": "des",
  "tech": "FreePDK45",
  "version_idx": 0,
  "force": true
}
```

#### Floorplan Server (Port 13335)

**POST `/floorplan/run`**

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

#### Placement Server (Port 13337)

**POST `/place/run`**

```json
{
  "design": "des",
  "top_module": "des3",
  "tech": "FreePDK45",
  "impl_ver": "cpV1_clkP1_drcV1__g0_p0",
  "g_idx": 0,
  "p_idx": 0,
  "restore_enc": "/path/to/powerplan.enc.dat",
  "force": true
}
```

## Monitoring and Debugging

### Log Files

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

### Status Checking

```bash
# Check if all servers are running
netstat -tlnp | grep -E "(1333[3-9]|13440|8000)"

# Check server processes
ps aux | grep -E "(synth_setup|floorplan|placement|cts|route)"

# Monitor logs in real-time
tail -f logs/setup/des_setup_*.log
```

### Common Issues and Solutions

#### 1. Port Already in Use
```bash
# Kill existing processes
pkill -f "synth_setup_server.py"
pkill -f "floorplan_server.py"
# ... repeat for other servers
```

#### 2. EDA Tool Not Found
```bash
# Check tool installation
which dc_shell
which innovus

# Set up environment variables
export SNPSLMD_LICENSE_FILE=/path/to/synopsys/license
export CDS_LIC_FILE=/path/to/cadence/license
```

#### 3. Library Path Issues
```bash
# Verify FreePDK45 library
ls -la libraries/FreePDK45/

# Check library references in scripts
grep -r "FreePDK45" scripts/
```

## Testing

### Run Example Design

```bash
# Complete flow test
./run_pipeline.sh

# Individual stage test
python3 scripts/_helper/synthesis_config_row_no_dbg.py \
  --design des --version-idx 0 --tech FreePDK45
```

### Test Different Designs

```bash
# Test VHDL design (b14)
curl -X POST http://localhost:8000/agent \
  -d '{"user_query":"Run synth_setup for design=\"b14\" and return the log path."}'

# Test another design (leon2)
curl -X POST http://localhost:8000/agent \
  -d '{"user_query":"Run synth_setup for design=\"leon2\" and return the log path."}'
```

### Run Experiments

```bash
# Test experimental framework
cd experiment
python run_experiment.py --full --summary

# Test specific method
python run_experiment.py --generate ours --case_ids case_0
```

## Contributing

We welcome contributions! Please see our [Contributing Guide](CONTRIBUTING.md) for details.

### Development Setup

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests
5. Submit a pull request

### Code Style

- Use Python 3.9+ features
- Follow PEP 8 style guidelines
- Add type hints
- Include docstrings for all functions

## Documentation

- **[Quick Start Guide](QUICK_START_GUIDE.md)**: Step-by-step setup and usage
- **[API Documentation](API_DOCUMENTATION.md)**: Detailed API reference
- **[MCP Implementation](MCP_IMPLEMENTATION.md)**: MCP protocol details

## Acknowledgments

- **Synopsys** for Design Compiler
- **Cadence** for Innovus
- **OpenAI** for GPT-4 API
- **FreePDK45** for open-source technology library
- **FastAPI** for the web framework

## Support

- **Issues**: [GitHub Issues](https://github.com/AndyLu666/MCP-EDA-Server/issues)
- **Discussions**: [GitHub Discussions](https://github.com/AndyLu666/MCP-EDA-Server/discussions)
- **Documentation**: [Wiki](https://github.com/AndyLu666/MCP-EDA-Server/wiki)

## Version History

- **v2.0.0** - Added experimental framework and MCP server improvements
- **v1.2.0** - Enhanced monitoring and logging capabilities
- **v1.1.0** - Added VHDL support and improved error handling
- **v1.0.0** - Initial release with basic MCP EDA functionality

---

**Made with for the EDA community**

Author: Yiyi Lu, Jingyu Pan, Junyao Zhang

Email: czluyiyi@gmail.com

