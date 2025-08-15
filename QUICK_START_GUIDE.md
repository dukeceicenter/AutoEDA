# MCP EDA Quick Start Guide

## Prerequisites

Before starting, ensure you have the following installed:

- **Python 3.9+**
- **Synopsys Design Compiler** (for synthesis)
- **Cadence Innovus** (for physical implementation)
- **FreePDK45** technology library (included)
- **OpenAI API Key** (for GPT-4 integration)

## Step 1: Environment Setup

### 1.1 Clone and Setup Repository

```bash
# Clone the repository
git clone https://github.com/your-org/mcp-eda-example.git
cd mcp-eda-example

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

# Server Configuration (optional)
MCP_SERVER_HOST=http://localhost
LOG_ROOT=./logs

# Unified Server Port Configuration (optional - uses defaults if not set)
UNIFIED_SYNTHESIS_PORT=18001
UNIFIED_PLACEMENT_PORT=18002
UNIFIED_CTS_PORT=18003
UNIFIED_ROUTING_PORT=18004

# EDA Tool Paths (adjust to your installation)
SYNOPSYS_ROOT=/opt/synopsys
CADENCE_ROOT=/opt/cadence
```

### 1.3 Verify EDA Tools

```bash
# Check Design Compiler
dc_shell -version

# Check Innovus
innovus -version

# Check license servers
lmstat -a

# Verify FreePDK45 library
ls libraries/FreePDK45/
```

## Step 2: Start the Services

### 2.1 Start All Unified Servers

```bash
# Start all four unified servers
python3 src/run_server.py --server all
```

This command starts the unified server architecture:
- **Synthesis Service** (port 18001) - RTL to gate-level netlist
- **Placement Service** (port 18002) - floorplan, powerplan, and placement
- **CTS Service** (port 18003) - clock tree synthesis and optimization  
- **Routing Service** (port 18004) - global/detailed routing and final save

**Alternative: Start servers individually**

```bash
# Start each service individually using run_server.py
python3 src/run_server.py --server synthesis --port 18001 &
python3 src/run_server.py --server placement --port 18002 &
python3 src/run_server.py --server cts --port 18003 &
python3 src/run_server.py --server routing --port 18004 &

# Or use the server files directly
python3 src/server/synthesis_server.py --port 18001 &
python3 src/server/placement_server.py --port 18002 &
python3 src/server/cts_server.py --port 18003 &
python3 src/server/routing_server.py --port 18004 &
```

### 2.2 Start AI Agent Client

```bash
# Start the intelligent agent (GPT-4 powered)
python3 src/mcp_agent_client.py

# Or using uvicorn for production
uvicorn src.mcp_agent_client:app --host 0.0.0.0 --port 8000
```

### 2.3 Verify Services are Running

```bash
# Check if all ports are listening
netstat -tlnp | grep -E "(8000|1800[1-4])"

# Expected output:
# tcp6       0      0 :::8000     :::*        LISTEN      [PID]/python3  (Agent)
# tcp6       0      0 :::18001    :::*        LISTEN      [PID]/python3  (Synthesis)
# tcp6       0      0 :::18002    :::*        LISTEN      [PID]/python3  (Placement)
# tcp6       0      0 :::18003    :::*        LISTEN      [PID]/python3  (CTS)
# tcp6       0      0 :::18004    :::*        LISTEN      [PID]/python3  (Routing)

# Check service health and API documentation
curl http://localhost:18001/docs  # Synthesis API docs
curl http://localhost:18002/docs  # Placement API docs
curl http://localhost:18003/docs  # CTS API docs
curl http://localhost:18004/docs  # Routing API docs
```

## Step 3: Your First Design

### 3.1 Using Natural Language Interface (AI Agent)

The easiest way to run designs is through the AI-powered natural language interface:

```bash
# Test synthesis for a design
curl -X POST http://localhost:8000/agent \
  -H "Content-Type: application/json" \
  -d '{"user_query":"Run synthesis for design aes with high performance", "session_id":"demo"}'
```

**Expected Response:**
```json
{
  "tool_called": "synth",
  "tool_input": {
    "design": "aes",
    "tech": "FreePDK45",
    "clk_period": 5.0,
    "force": false,
    "syn_version": "cpV1_clkP1_drcV1"
  },
  "tool_output": {
    "status": "ok",
    "log_path": "/home/yl996/proj/mcp-eda-example/logs/synthesis/aes_synthesis_20241201_143022.log",
    "reports": {...},
    "tcl_path": "/home/yl996/proj/mcp-eda-example/result/aes/FreePDK45/complete_synthesis.tcl"
  },
  "ai_reasoning": "Selected synthesis with performance optimization strategy",
  "suggestions": ["Consider running placement after synthesis completion"]
}
```

### 3.2 Complete RTL-to-GDSII Flow

Run a complete design flow using natural language:

```bash
# Complete flow for AES design
curl -X POST http://localhost:8000/agent \
  -H "Content-Type: application/json" \
  -d '{"user_query":"Run complete full_flow for design aes with performance optimization", "session_id":"demo"}'
```

This will automatically execute:
1. **Synthesis** - RTL to gate-level netlist
2. **Placement** - Floorplan + Powerplan + Placement
3. **CTS** - Clock tree synthesis and optimization
4. **Route & Save** - Global/detail routing + final GDS generation

### 3.3 Multi-Stage Flow Control

You can also run specific flow stages:

```bash
# Just the physical design flow (P&R)
curl -X POST http://localhost:8000/agent \
  -H "Content-Type: application/json" \
  -d '{"user_query":"Run pnr flow for design aes using synthesis version cpV1_clkP1_drcV1_20241201_143022", "session_id":"demo"}'

# Individual stages
curl -X POST http://localhost:8000/agent \
  -H "Content-Type: application/json" \
  -d '{"user_query":"Run placement for design aes with target utilization 0.8", "session_id":"demo"}'
```

### 3.4 Session Management

The AI agent remembers your previous parameters and preferences:

```bash
# First request - specify full parameters
curl -X POST http://localhost:8000/agent \
  -H "Content-Type: application/json" \
  -d '{"user_query":"Run synthesis for design aes with 500MHz clock", "session_id":"my_session"}'

# Follow-up request - agent remembers design and parameters
curl -X POST http://localhost:8000/agent \
  -H "Content-Type: application/json" \
  -d '{"user_query":"Now run placement with high utilization", "session_id":"my_session"}'

# Check session history
curl -X GET http://localhost:8000/session/my_session/history
```

### 3.5 Strategy-Based Optimization

The system supports different optimization strategies:

```bash
# Fast flow (for quick verification)
curl -X POST http://localhost:8000/agent \
  -d '{"user_query":"Run fast synthesis for design aes", "session_id":"demo"}'

# Performance optimization
curl -X POST http://localhost:8000/agent \
  -d '{"user_query":"Run high performance full_flow for design aes", "session_id":"demo"}'

# Power optimization
curl -X POST http://localhost:8000/agent \
  -d '{"user_query":"Run low power placement for design aes", "session_id":"demo"}'

# Area optimization
curl -X POST http://localhost:8000/agent \
  -d '{"user_query":"Run small area routing for design aes", "session_id":"demo"}'
```

## Step 4: Direct Service API Usage

### 4.1 Synthesis Service (Port 18001)

```bash
curl -X POST http://localhost:18001/run \
  -H "Content-Type: application/json" \
  -d '{
    "design": "des",
    "tech": "FreePDK45",
    "clk_period": 5.0,
    "force": true
  }'
```

### 4.2 Placement Service (Port 18002)

```bash
curl -X POST http://localhost:18002/run \
  -H "Content-Type: application/json" \
  -d '{
    "design": "des",
    "tech": "FreePDK45",
    "syn_ver": "cpV1_clkP1_drcV1_20241201_143022",
    "top_module": "aes_cipher_top",
    "target_util": 0.8,
    "ASPECT_RATIO": 1.0,
    "force": true
  }'
```

### 4.3 CTS Service (Port 18003)

```bash
curl -X POST http://localhost:18003/run \
  -H "Content-Type: application/json" \
  -d '{
    "design": "des",
    "tech": "FreePDK45",
    "syn_ver": "20250804_172427",
    "impl_ver": "20250804_172512",
    "force": true
  }'
```

### 4.4 Routing Service (Port 18004)

```bash
curl -X POST http://localhost:18004/run \
  -H "Content-Type: application/json" \
  -d '{
    "design": "des",
    "tech": "FreePDK45",
    "syn_ver": "20250804_172427",
    "impl_ver": "20250804_172512",
    "force": true
  }'
```

## Step 5: Experimental Framework

### 5.1 Running CodeBLEU Evaluation Experiments

The project includes a comprehensive experimental framework for evaluating TCL generation quality:

```bash
# Navigate to CodeBLEU-TCL directory
cd src/codebleu_tcl

# Basic TCL evaluation example
python3 -c "
from tcl_codebleu_evaluator import TCLCodeBLEUEvaluator
from pathlib import Path

evaluator = TCLCodeBLEUEvaluator()

# Example evaluation (requires TCL files)
# result = evaluator.evaluate_generated_tcl(
#     generated_tcl_file=Path('generated.tcl'),
#     reference_tcl_file=Path('reference.tcl'),
#     tool_type='auto'
# )
# print(f'CodeBLEU Score: {result[\"summary\"][\"overall_score\"]:.2f}')
print('CodeBLEU-TCL evaluator loaded successfully')
"

# View CodeBLEU documentation
cat README.md
```

### 5.2 CodeBLEU-TCL Features

The evaluation framework provides specialized capabilities for EDA TCL scripts:

1. **EDA Command Recognition**: Supports 271+ domain-specific EDA commands
2. **Stage-Specific Weights**: Optimized evaluation for synthesis, placement, CTS, and routing
3. **Multi-Dimensional Analysis**: N-gram matching, syntax analysis, and dataflow analysis
4. **Automatic Tool Detection**: Auto-detects EDA tool type from script content

### 5.3 Advanced Usage

```python
from tcl_codebleu_evaluator import TCLCodeBLEUEvaluator
from codebleu.codebleu import calc_codebleu

# Initialize evaluator
evaluator = TCLCodeBLEUEvaluator()

# Custom weights for different EDA stages
eda_weights = {
    'synthesis': (0.20, 0.30, 0.25, 0.25),           # Emphasize weighted n-gram
    'unified_placement': (0.15, 0.25, 0.30, 0.30),   # Focus on syntax and dataflow
    'cts': (0.20, 0.25, 0.30, 0.25),                # Emphasize syntax structure
    'unified_route_save': (0.20, 0.25, 0.25, 0.30),  # Highlight dataflow connectivity
}

# Direct CodeBLEU calculation
result = calc_codebleu([reference_tcl], [generated_tcl], 'tcl', 
                      weights=eda_weights['synthesis'])
```

### 5.4 Evaluation Metrics

The CodeBLEU-TCL framework evaluates four key dimensions:

- **N-gram Match (BLEU)**: Traditional token-level similarity (0.0-1.0)
- **Weighted N-gram Match**: EDA keyword-aware scoring with domain-specific terms (0.0-1.0)
- **Syntax Match**: Structural analysis of TCL command hierarchies (0.0-1.0)
- **Dataflow Match**: Variable dependency and data flow analysis (0.0-1.0)

## Step 6: Testing and Validation

### 6.1 Service Health Checks

```bash
# Check all services are responsive
curl http://localhost:18001/docs  # Synthesis service
curl http://localhost:18002/docs  # Placement service
curl http://localhost:18003/docs  # CTS service
curl http://localhost:18004/docs  # Routing service
curl http://localhost:8000/docs   # AI agent

# Check agent functionality
curl -X POST http://localhost:8000/agent \
  -H "Content-Type: application/json" \
  -d '{"user_query":"test connection", "session_id":"test"}'
```

### 6.2 Test Different Designs

Available designs in the system:

```bash
# List available designs
ls designs/

# Test with AES design
curl -X POST http://localhost:8000/agent \
  -d '{"user_query":"Run synthesis for design aes", "session_id":"test"}'

# Test with DES design  
curl -X POST http://localhost:8000/agent \
  -d '{"user_query":"Run synthesis for design des", "session_id":"test"}'

# Test with B14 benchmark
curl -X POST http://localhost:8000/agent \
  -d '{"user_query":"Run synthesis for design b14", "session_id":"test"}'
```

## Step 7: Working with Different Designs

### 7.1 Design Configuration

Each design has a configuration file that defines key parameters:

```bash
# Check AES configuration
cat designs/aes/config.tcl

# Check DES configuration  
cat designs/des/config.tcl

# Check B14 configuration (VHDL design)
cat designs/b14/config.tcl
```

### 7.2 Design-Specific Parameters

Different designs may require different parameters:

```bash
# AES design with specific clock frequency
curl -X POST http://localhost:8000/agent \
  -d '{"user_query":"Run synthesis for design aes with 1GHz clock frequency", "session_id":"demo"}'

# DES design with power optimization
curl -X POST http://localhost:8000/agent \
  -d '{"user_query":"Run low power full_flow for design des", "session_id":"demo"}'

# B14 design (VHDL) with area optimization
curl -X POST http://localhost:8000/agent \
  -d '{"user_query":"Run small area synthesis for design b14", "session_id":"demo"}'
```

### 7.3 Adding New Designs

To add a new design:

1. Create design directory structure:
```bash
mkdir -p designs/your_design/rtl
mkdir -p designs/your_design/FreePDK45/{synthesis,implementation}
```

2. Add RTL files to `designs/your_design/rtl/`

3. Create configuration file `designs/your_design/config.tcl`:
```tcl
set TOP_NAME "your_module_name"
set FILE_FORMAT "verilog"  # or "vhdl"
set CLOCK_NAME "clk"       # must match RTL port name
set clk_period 10.0        # default clock period in ns
```

4. Test the new design:
```bash
curl -X POST http://localhost:8000/agent \
  -d '{"user_query":"Run synthesis for design your_design", "session_id":"test"}'
```

## Step 8: Monitoring and Debugging

### 8.1 Check Logs

All unified services generate detailed logs:

```bash
# Monitor synthesis logs
tail -f logs/synthesis/des_synthesis_*.log

# Monitor placement logs
tail -f logs/unified_placement/des_unified_placement_*.log

# Monitor CTS logs
tail -f logs/unified_cts/des_unified_cts_*.log

# Monitor routing logs
tail -f logs/unified_routing/des_unified_routing_*.log
```

### 8.2 Check Design Status

```bash
# List available designs
ls designs/

# Check design results
ls designs/aes/FreePDK45/synthesis/
ls designs/aes/FreePDK45/implementation/

# Check generated TCL scripts
ls result/aes/FreePDK45/

# Check final deliverables
ls deliverables/
```

### 8.3 Debug Common Issues

#### Service Connection Issues
```bash
# Check if services are running
ps aux | grep -E "(run_server|server.*\.py)"

# Restart services if needed
python3 src/run_server.py --server all

# Check specific service
curl http://localhost:18001/docs
```

#### AI Agent Issues
```bash
# Check OpenAI API key
echo $OPENAI_API_KEY

# Test agent connectivity
curl -X POST http://localhost:8000/agent \
  -d '{"user_query":"test", "session_id":"debug"}'
```

#### EDA Tool Issues
```bash
# Check tool installation
which dc_shell
which innovus

# Set up environment variables
export SNPSLMD_LICENSE_FILE=/path/to/synopsys/license
export CDS_LIC_FILE=/path/to/cadence/license

# Check license servers
lmstat -a
```

#### Clock Port Mismatch
```bash
# Check RTL clock port name
grep -r "input.*clk" designs/aes/rtl/
grep -r "input.*clock" designs/b14/rtl/

# Update config.tcl to match RTL
nano designs/your_design/config.tcl
```

#### File Path Issues
```bash
# Check if required files exist
ls designs/aes/FreePDK45/synthesis/*/results/
ls designs/aes/FreePDK45/implementation/*/pnr_save/

# Check restore_enc file paths in logs
grep "restore_enc" logs/cts/aes_cts_*.log
```

## Step 9: Advanced Usage

### 9.1 Batch Processing Multiple Designs

Create a script for batch processing:

```bash
#!/bin/bash
# batch_process.sh

DESIGNS=("aes" "des" "b14")

for design in "${DESIGNS[@]}"; do
    echo "Processing design: $design"
    
    # Run complete flow
    curl -X POST http://localhost:8000/agent \
      -H "Content-Type: application/json" \
      -d "{\"user_query\":\"Run full_flow for design $design with performance optimization\", \"session_id\":\"batch_$design\"}"
    
    echo "Completed flow for $design"
    sleep 10  # Wait between designs
done
```

### 9.2 Custom Parameter Control

Use specific parameters for fine-tuned control:

```bash
# Synthesis with custom clock period
curl -X POST http://localhost:18001/run \
  -H "Content-Type: application/json" \
  -d '{
    "design": "des",
    "clk_period": 2.0,
    "DRC_max_fanout": 15,
    "power_effort": "high",
    "force": true
  }'

# Placement with custom utilization
curl -X POST http://localhost:18002/run \
  -H "Content-Type: application/json" \
  -d '{
    "design": "des",
    "syn_ver": "20250804_172427",
    "target_util": 0.85,
    "ASPECT_RATIO": 1.2,
    "force": true
  }'
```

### 9.3 Production Deployment

For production deployment, consider using process managers:

```bash
# Using systemd (recommended for production)
# Create service files for each server in /etc/systemd/system/

# Using PM2 (Node.js process manager)
npm install -g pm2
pm2 start run_server.py --name "eda-servers" --interpreter python3 -- --server all

# Using supervisord
# Add configuration to /etc/supervisor/conf.d/eda-servers.conf
```

## Step 10: Results and Deliverables

### 10.1 Check Final Results

```bash
# Check final GDS files from unified routing server
ls designs/des/FreePDK45/implementation/*/pnr_out/*.gds*

# Check checkpoint files from each stage
ls designs/des/FreePDK45/implementation/*/pnr_save/*.enc

# Check generated TCL scripts
ls result/des/FreePDK45/complete_*.tcl
```

### 10.2 Performance Analysis

```bash
# Check synthesis reports
ls designs/des/FreePDK45/synthesis/*/reports/
cat designs/des/FreePDK45/synthesis/*/reports/qor.rpt

# Check implementation reports
ls designs/des/FreePDK45/implementation/*/pnr_reports/
cat designs/des/FreePDK45/implementation/*/pnr_reports/route_summary.rpt

# Check timing analysis
gunzip -c designs/des/FreePDK45/implementation/*/pnr_reports/route_timing.rpt.gz
```

### 10.3 Session History and Analysis

```bash
# View session history
curl -X GET http://localhost:8000/session/demo/history

# Check agent reasoning and suggestions
curl -X POST http://localhost:8000/agent \
  -d '{"user_query":"analyze the results for design des", "session_id":"demo"}'
```

## Next Steps

1. **Explore Different Designs**: Try running the system with different designs (aes, des, b14)
2. **Experiment with Strategies**: Test different optimization strategies (fast, performance, power, area)
3. **Run Experiments**: Use the CodeBLEU experimental framework to evaluate generation quality
4. **Add Your Own Designs**: Create new designs following the existing structure
5. **Customize Parameters**: Fine-tune synthesis and implementation parameters
6. **Session Management**: Leverage the AI agent's memory for complex multi-stage workflows
7. **Integration**: Integrate with your existing EDA toolchain and CI/CD pipeline

## Getting Help

- **API Documentation**: Check `/docs` endpoint on each service for detailed API reference
- **Service Health**: Use the health check endpoints to monitor system status
- **Logs**: Check service logs in the `logs/` directory for detailed execution information
- **GitHub Issues**: Report problems and request features
- **Natural Language**: Use the AI agent to ask questions about the system itself

---

**Congratulations!** You've successfully set up and run your first design through the MCP EDA system. The AI-powered agent provides intelligent orchestration while the microservice architecture ensures scalability and maintainability. 