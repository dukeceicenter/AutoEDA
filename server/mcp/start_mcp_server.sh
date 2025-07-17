#!/bin/bash

# MCP EDA Server Startup Script
echo "=== Starting MCP EDA Server ==="

# Check Python environment
if ! command -v python3 &> /dev/null; then
    echo "Error: python3 not found"
    exit 1
fi

echo "Python3 found: $(python3 --version)"

# Check MCP dependencies
echo "Checking MCP dependencies..."
python3 -c "import mcp.server.fastmcp" 2>/dev/null
if [ $? -ne 0 ]; then
    echo "Error: FastMCP dependency not installed"
    echo "Please run: pip install mcp[cli] fastmcp"
    exit 1
fi

echo "MCP dependencies check passed"

# Check server file
if [ ! -f "mcp_eda_server.py" ]; then
    echo "Error: mcp_eda_server.py not found"
    exit 1
fi

echo "Server file check passed"

# Set environment variables
export MCP_SERVER_HOST="http://localhost"
export PYTHONPATH="${PYTHONPATH}:$(pwd)/.."

echo "Environment variables set"
echo "Current directory: $(pwd)"
echo "Python path: $PYTHONPATH"

# Start MCP server (stdio mode, Claude Desktop standard)
echo ""
echo "Starting MCP EDA Server (stdio mode)..."
echo "Waiting for Claude Desktop connection..."
echo "Press Ctrl+C to stop server"
echo ""

python3 mcp_eda_server.py

echo ""
echo " MCP EDA Server Stopped " 