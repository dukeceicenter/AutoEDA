#!/usr/bin/env python3
"""
Health check script for MCP EDA servers.
Checks if all MCP servers are running and responding.
"""

import requests
import sys
import os
from typing import List, Dict, Optional

# MCP server ports and names
MCP_SERVERS = {
    13333: "Synthesis Setup",
    13334: "Synthesis Compile", 
    13335: "Floorplan",
    13336: "Power Planning",
    13337: "Placement",
    13338: "CTS",
    13339: "Routing",
    13440: "Save Design"
}

# Additional services
ADDITIONAL_SERVICES = {
    8000: "MCP Agent Client",
    8001: "MCP EDA Server"
}

def check_server_health(port: int, service_name: str, timeout: int = 5) -> bool:
    """Check if a server is healthy by making a health request."""
    try:
        response = requests.get(f"http://localhost:{port}/health", timeout=timeout)
        if response.status_code == 200:
            print(f"✓ {service_name} (port {port}) is healthy")
            return True
        else:
            print(f"✗ {service_name} (port {port}) returned status {response.status_code}")
            return False
    except requests.RequestException as e:
        print(f"✗ {service_name} (port {port}) is not responding: {e}")
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
        if result.returncode == 0:
            print(f"✓ EDA tools host ({eda_host}) is accessible")
            return True
        else:
            print(f"⚠ EDA tools host ({eda_host}) might not be accessible")
            return False
    except Exception as e:
        print(f"⚠ Could not check EDA tools host: {e}")
        # If ping fails, assume tools are accessible (they might be on host)
        return True

def check_license_files() -> Dict[str, bool]:
    """Check if license files are accessible."""
    license_checks = {}
    
    # Check Synopsys license
    snps_license = os.getenv('SNPSLMD_LICENSE_FILE')
    if snps_license:
        license_checks['Synopsys'] = os.path.exists(snps_license)
        status = "✓" if license_checks['Synopsys'] else "✗"
        print(f"{status} Synopsys license file: {snps_license}")
    else:
        print("⚠ SNPSLMD_LICENSE_FILE not set")
    
    # Check Cadence license
    cds_license = os.getenv('CDS_LIC_FILE')
    if cds_license:
        license_checks['Cadence'] = os.path.exists(cds_license)
        status = "✓" if license_checks['Cadence'] else "✗"
        print(f"{status} Cadence license file: {cds_license}")
    else:
        print("⚠ CDS_LIC_FILE not set")
    
    return license_checks

def check_directories() -> Dict[str, bool]:
    """Check if required directories exist."""
    required_dirs = {
        'designs': '/app/designs',
        'config': '/app/config',
        'scripts': '/app/scripts',
        'libraries': '/app/libraries',
        'logs': '/app/logs',
        'deliverables': '/app/deliverables',
        'experiment': '/app/experiment'
    }
    
    dir_checks = {}
    for name, path in required_dirs.items():
        exists = os.path.exists(path)
        dir_checks[name] = exists
        status = "✓" if exists else "✗"
        print(f"{status} {name} directory: {path}")
    
    return dir_checks

def main():
    """Main health check function."""
    print("Starting MCP EDA health check...")
    print("=" * 50)
    
    # Check EDA tools accessibility
    eda_accessible = check_eda_tools()
    
    # Check license files
    license_status = check_license_files()
    
    # Check directories
    dir_status = check_directories()
    
    print("\nChecking MCP servers...")
    print("-" * 30)
    
    # Check each MCP server
    healthy_servers = []
    unhealthy_servers = []
    
    for port, name in MCP_SERVERS.items():
        if check_server_health(port, name):
            healthy_servers.append(port)
        else:
            unhealthy_servers.append(port)
    
    print("\nChecking additional services...")
    print("-" * 30)
    
    # Check additional services (if running)
    for port, name in ADDITIONAL_SERVICES.items():
        try:
            if check_server_health(port, name):
                healthy_servers.append(port)
            else:
                unhealthy_servers.append(port)
        except:
            # Service might not be running, that's okay
            pass
    
    # Overall health status
    print("\n" + "=" * 50)
    print("HEALTH CHECK SUMMARY")
    print("=" * 50)
    
    print(f"EDA Tools: {'✓' if eda_accessible else '⚠'}")
    print(f"Directories: {sum(dir_status.values())}/{len(dir_status)} present")
    print(f"Licenses: {sum(license_status.values())}/{len(license_status)} accessible")
    print(f"MCP Servers: {len(healthy_servers)}/{len(MCP_SERVERS)} healthy")
    
    if len(unhealthy_servers) == 0:
        print("\n✓ All services are healthy!")
        return 0
    else:
        print(f"\n✗ Health check failed: {len(unhealthy_servers)} services unhealthy")
        print("Unhealthy services:")
        for port in unhealthy_servers:
            if port in MCP_SERVERS:
                print(f"  - {MCP_SERVERS[port]} (port {port})")
            elif port in ADDITIONAL_SERVICES:
                print(f"  - {ADDITIONAL_SERVICES[port]} (port {port})")
        return 1

if __name__ == "__main__":
    sys.exit(main()) 