#!/usr/bin/env python3
"""
Health check script for MCP EDA servers.
Checks if all MCP servers are running and responding.
"""

import requests
import sys
import os
from typing import List, Dict

# MCP server ports
MCP_PORTS = [13333, 13334, 13335, 13336, 13337, 13338, 13339, 13440]

def check_server_health(port: int, timeout: int = 5) -> bool:
    """Check if a server is healthy by making a health request."""
    try:
        response = requests.get(f"http://localhost:{port}/health", timeout=timeout)
        return response.status_code == 200
    except requests.RequestException:
        return False

def check_eda_tools() -> bool:
    """Check if EDA tools are accessible from the container."""
    try:
        # Check if EDA tools host is reachable
        eda_host = os.getenv('EDA_TOOLS_HOST', 'host.docker.internal')
        
        # Simple ping test (if ping is available)
        import subprocess
        result = subprocess.run(['ping', '-c', '1', eda_host], 
                              capture_output=True, text=True, timeout=10)
        return result.returncode == 0
    except Exception:
        # If ping fails, assume tools are accessible (they might be on host)
        return True

def main():
    """Main health check function."""
    print("Starting MCP EDA health check...")
    
    # Check EDA tools accessibility
    eda_accessible = check_eda_tools()
    if not eda_accessible:
        print("WARNING: EDA tools host might not be accessible")
    
    # Check each MCP server
    healthy_servers = []
    unhealthy_servers = []
    
    for port in MCP_PORTS:
        if check_server_health(port):
            healthy_servers.append(port)
            print(f"✓ Server on port {port} is healthy")
        else:
            unhealthy_servers.append(port)
            print(f"✗ Server on port {port} is unhealthy")
    
    # Overall health status
    if len(unhealthy_servers) == 0:
        print("All MCP servers are healthy!")
        return 0
    else:
        print(f"Health check failed: {len(unhealthy_servers)} servers unhealthy")
        return 1

if __name__ == "__main__":
    sys.exit(main()) 