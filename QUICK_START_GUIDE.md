# MCP EDA Quick Start Guide

## Prerequisites

Before starting, ensure you have the following installed:

- **Python 3.9+**
- **Synopsys Design Compiler** (for synthesis)
- **Cadence Innovus** (for physical implementation)
- **FreePDK45** technology library
- **OpenAI API Key** (for GPT-4 integration)

## Step 1: Environment Setup

### 1.1 Clone and Setup Repository

```bash
# Clone the repository
git clone https://github.com/AndyLu666/MCP-EDA-Server.git
cd MCP-EDA-Server

# Create and activate virtual environment
python3 -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

# Install dependencies
pip install -r requirements.txt
```

### 1.2 Configure Environment Variables

Create a `.env` file in the project root:

```bash
# OpenAI API Configuration
OPENAI_API_KEY=your_openai_api_key_here

# MCP Server Configuration
MCP_SERVER_HOST=http://localhost
```

### 1.3 Verify EDA Tools

```bash
# Check Design Compiler
which dc_shell

# Check Innovus
which innovus

# Verify FreePDK45 library
ls libraries/FreePDK45/
```

## Step 2: Start the Services

### 2.1 Start MCP Agent Client

```bash
# Terminal 1: Start the main agent
conda activate eda310  # or your conda environment
uvicorn mcp_agent_client:app --reload --host 0.0.0.0 --port 8000
```

### 2.2 Start MCP Servers

```bash
# Terminal 2: Start all MCP servers
./restart_servers.sh
```

**Alternative: Start servers individually**

```bash
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

### 2.3 Verify Services are Running

```bash
# Check if all ports are listening
netstat -tlnp | grep -E "(1333[3-9]|13440|8000)"

# Expected output:
# tcp6       0      0 :::8000     :::*        LISTEN      [PID]/python3
# tcp6       0      0 :::13333    :::*        LISTEN      [PID]/python3
# tcp6       0      0 :::13334    :::*        LISTEN      [PID]/python3
# ... (and so on for all ports)
```

## Step 3: Your First Design

### 3.1 Using Natural Language Interface (Recommended)

The easiest way to run designs is through the natural language interface:

```bash
# Test the system with a simple synthesis setup
curl -X POST http://localhost:8000/agent \
  -H "Content-Type: application/json" \
  -d '{"user_query":"Run synth_setup for design=\"des\" and return the log path."}'
```

**Expected Response:**
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
    "log_path": "/home/yl996/proj/mcp-eda-example/logs/setup/des_setup_20241219_143022.log"
  }
}
```

### 3.2 Complete Design Flow Example

Run the complete design flow for the DES design:

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

## Step 4: Direct API Usage

### 4.1 Synthesis Setup

```bash
curl -X POST http://localhost:13333/setup/run \
  -H "Content-Type: application/json" \
  -d '{
    "design": "des",
    "tech": "FreePDK45",
    "version_idx": 0,
    "force": true
  }'
```

### 4.2 Floorplan

```bash
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

### 4.3 Placement

```bash
curl -X POST http://localhost:13337/place/run \
  -H "Content-Type: application/json" \
  -d '{
    "design": "des",
    "top_module": "des3",
    "tech": "FreePDK45",
    "impl_ver": "cpV1_clkP1_drcV1__g0_p0",
    "g_idx": 0,
    "p_idx": 0,
    "restore_enc": "/home/yl996/proj/mcp-eda-example/designs/des/FreePDK45/implementation/powerplan.enc.dat",
    "force": true
  }'
```

## Step 5: Working with Different Designs

### 5.1 VHDL Design (B14)

The B14 design uses VHDL and has a different clock port name:

```bash
# Check the B14 configuration
cat designs/b14/config.tcl

# Run synthesis for B14
curl -X POST http://localhost:8000/agent \
  -d '{"user_query":"Run synth_setup for design=\"b14\" and return the log path."}'
```

### 5.2 LEON2 Design

```bash
# Run synthesis for LEON2
curl -X POST http://localhost:8000/agent \
  -d '{"user_query":"Run synth_setup for design=\"leon2\" and return the log path."}'
```

## Step 6: Configuration Management

### 6.1 Design Configuration

Each design needs a `config.tcl` file:

```tcl
# designs/your_design/config.tcl
set TOP_NAME "your_module"
set FILE_FORMAT "verilog"  # or "vhdl"
set CLOCK_NAME "clk"       # must match RTL port name
set clk_period 1.0
```

### 6.2 Synthesis Parameters

Modify `config/synthesis.csv` for different synthesis configurations:

```csv
clk_period,DRC_max_fanout,DRC_max_transition,DRC_max_capacitance,compile_cmd,map_effort,power_effort,area_effort
1.0,10,0.5,5.0,compile_ultra,high,medium,medium
2.0,15,1.0,10.0,compile_ultra,high,high,low
```

### 6.3 Implementation Parameters

Modify `config/imp_global.csv` for different implementation configurations:

```csv
ASPECT_RATIO,target_util,design_flow_effort,design_power_effort
1.0,0.7,standard,medium
1.5,0.8,high,high
```

## Step 7: Monitoring and Debugging

### 7.1 Check Logs

```bash
# Monitor synthesis logs
tail -f logs/setup/des_setup_*.log

# Monitor implementation logs
tail -f logs/floorplan/des_floorplan_*.log
```

### 7.2 Check Design Status

```bash
# List available designs
ls designs/

# Check design configuration
cat designs/des/config.tcl

# Check synthesis results
ls designs/des/FreePDK45/synthesis/

# Check implementation results
ls designs/des/FreePDK45/implementation/
```

### 7.3 Common Issues

#### Port Already in Use
```bash
# Kill existing processes
pkill -f "synth_setup_server.py"
pkill -f "floorplan_server.py"
# ... repeat for other servers
```

#### EDA Tool Not Found
```bash
# Check tool installation
which dc_shell
which innovus

# Set up environment variables
export SNPSLMD_LICENSE_FILE=/path/to/synopsys/license
export CDS_LIC_FILE=/path/to/cadence/license
```

#### Clock Port Mismatch
```bash
# Check RTL clock port name
grep -r "input.*clk" designs/des/rtl/
grep -r "input.*clock" designs/b14/rtl/

# Update config.tcl to match
sed -i 's/set CLOCK_NAME "clk"/set CLOCK_NAME "clock"/' designs/b14/config.tcl
```

## Step 8: Advanced Usage

### 8.1 Using Different Configuration Versions

```bash
# Use version 1 for synthesis (different parameters)
curl -X POST http://localhost:13333/setup/run \
  -H "Content-Type: application/json" \
  -d '{
    "design": "des",
    "tech": "FreePDK45",
    "version_idx": 1,
    "force": true
  }'
```

### 8.2 Force Re-run

```bash
# Force re-run even if output exists
curl -X POST http://localhost:13333/setup/run \
  -H "Content-Type: application/json" \
  -d '{
    "design": "des",
    "tech": "FreePDK45",
    "version_idx": 0,
    "force": true
  }'
```

### 8.3 Batch Processing

Create a script for batch processing:

```bash
#!/bin/bash
# batch_process.sh

DESIGNS=("des" "b14" "leon2")

for design in "${DESIGNS[@]}"; do
    echo "Processing design: $design"
    
    # Synthesis
    curl -X POST http://localhost:8000/agent \
      -d "{\"user_query\":\"Run synth_setup for design=\\\"$design\\\" and return the log path.\"}"
    
    curl -X POST http://localhost:8000/agent \
      -d "{\"user_query\":\"Run synth_compile for design=\\\"$design\\\" and return the log path.\"}"
    
    echo "Completed synthesis for $design"
done
```

## Step 9: Results and Deliverables

### 9.1 Check Final Results

```bash
# List deliverables
ls deliverables/

# Extract and view results
tar -tzf deliverables/des_*.tar.gz

# View timing reports
cat designs/des/FreePDK45/implementation/timing.rpt
```

### 9.2 Performance Analysis

```bash
# Check area utilization
cat designs/des/FreePDK45/implementation/area.rpt

# Check power consumption
cat designs/des/FreePDK45/implementation/power.rpt

# Check timing violations
cat designs/des/FreePDK45/implementation/timing.rpt | grep -i violation
```

## Next Steps

1. **Explore Different Designs**: Try running the system with different designs (des, b14, leon2)
2. **Experiment with Parameters**: Modify synthesis and implementation parameters
3. **Add Your Own Designs**: Create new designs following the existing structure
4. **Customize Scripts**: Modify EDA tool scripts for your specific needs
5. **Integrate with CI/CD**: Set up automated testing and deployment

## Getting Help

- **Documentation**: See [API_DOCUMENTATION.md](API_DOCUMENTATION.md) for detailed API reference
- **Issues**: Report problems on [GitHub Issues](https://github.com/AndyLu666/MCP-EDA-Server/issues)
- **Discussions**: Join [GitHub Discussions](https://github.com/AndyLu666/MCP-EDA-Server/discussions)

---

**Congratulations!** You've successfully set up and run your first design through the MCP EDA system. The system is now ready for your digital design automation needs. 