#!/bin/bash

# MCP EDA Server Startup Script
# This script provides a convenient way to start the MCP EDA Server with proper environment setup

echo "=== MCP EDA Server Startup Script ==="
echo "Starting MCP EDA Server with 4-server architecture (synthesis, placement, cts, routing)"
echo ""

# Function to check if command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Function to check Python package
check_package() {
    python3 -c "import $1" 2>/dev/null
    return $?
}

# Check Python environment
echo "Checking Python environment..."
if ! command_exists python3; then
    echo "Error: python3 not found"
    echo "Please install Python 3.8 or higher"
    exit 1
fi

echo "Python3 found: $(python3 --version)"

# Check required Python packages
echo ""
echo "Checking required Python packages..."

required_packages=("mcp.server.fastmcp" "requests" "pathlib" "json")
missing_packages=()

for package in "${required_packages[@]}"; do
    if check_package "$package"; then
        echo "FOUND: $package"
    else
        echo "MISSING: $package"
        missing_packages+=("$package")
    fi
done

if [ ${#missing_packages[@]} -ne 0 ]; then
    echo ""
    echo "Missing required packages. Please install:"
    echo "pip install mcp fastmcp requests"
    exit 1
fi

echo "All required packages found"

# Check server file
echo ""
echo "Checking server files..."
if [ ! -f "mcp_eda_server.py" ]; then
    echo "Error: mcp_eda_server.py not found in current directory"
    echo "Please run this script from the MCP server directory"
    exit 1
fi

echo "MCP server file found"

# Check if EDA servers are running (optional check)
echo ""
echo "Checking EDA server availability (optional)..."
eda_ports=(18001 18002 18003 18004)
eda_names=("synthesis" "placement" "cts" "routing")

for i in "${!eda_ports[@]}"; do
    port=${eda_ports[$i]}
    name=${eda_names[$i]}
    
    if command_exists curl; then
        if curl -s "http://localhost:$port" >/dev/null 2>&1; then
            echo "AVAILABLE: $name server (port $port)"
        else
            echo "WARNING: $name server (port $port) is not responding"
        fi
    else
        echo "INFO: Cannot check $name server (curl not available)"
    fi
done

# Set environment variables
echo ""
echo "Setting up environment..."
export PYTHONPATH="${PYTHONPATH}:$(pwd)/..:$(pwd)/../../.."

echo "Environment variables set"
echo "   Current directory: $(pwd)"
echo "   Python path: $PYTHONPATH"

# Start MCP server (stdio mode, Claude Desktop standard)
echo ""
echo "Starting MCP EDA Server (stdio mode)..."
echo "   Server will communicate with Claude Desktop via stdin/stdout"
echo "   Available tools: synthesis, placement, clock_tree_synthesis, routing"
echo ""
echo "   Waiting for Claude Desktop connection..."
echo "   Press Ctrl+C to stop server"
echo ""

python3 mcp_eda_server.py

echo ""
echo "MCP EDA Server Stopped" 