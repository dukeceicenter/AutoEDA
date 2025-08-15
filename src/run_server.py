#!/usr/bin/env python3
import argparse
import sys
import threading
import time
import signal
import subprocess
from pathlib import Path
import os
from dotenv import load_dotenv

load_dotenv()

# Add server to Python path
sys.path.insert(0, str(Path(__file__).resolve().parent / "server"))

def kill_port_processes(ports):
    """
    Kill processes using specified ports
    
    Args:
        ports: List of port numbers or single port number
    """
    if isinstance(ports, int):
        ports = [ports]
    
    for port in ports:
        try:
            # Find processes using the port
            result = subprocess.run(
                ['lsof', '-t', f'-i:{port}'], 
                capture_output=True, 
                text=True, 
                timeout=10
            )
            
            if result.returncode == 0 and result.stdout.strip():
                pids = result.stdout.strip().split('\n')
                print(f"Found processes on port {port}: {pids}")
                
                for pid in pids:
                    try:
                        # Kill the process
                        subprocess.run(['kill', '-9', pid], timeout=5)
                        print(f"Killed process {pid} on port {port}")
                    except Exception as e:
                        print(f"Warning: Could not kill process {pid}: {e}")
            else:
                print(f"No processes found on port {port}")
                
        except FileNotFoundError:
            print("Warning: lsof command not found, skipping port cleanup")
            break
        except subprocess.TimeoutExpired:
            print(f"Warning: Timeout checking port {port}")
        except Exception as e:
            print(f"Warning: Error checking port {port}: {e}")
    
    # Wait a moment for processes to clean up
    time.sleep(2)

def main():
    parser = argparse.ArgumentParser(
        description="EDA Server Launcher",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
    python run_server.py --server synthesis --port 18001

API Usage:
curl -X POST http://localhost:18001/run -H "Content-Type: application/json" -d '{"design": "des", "tech": "FreePDK45"}'
        """
    )
    parser.add_argument(
        "--server",
        type=str,
        choices=["synthesis", "placement", "cts", "routing", "all"],
        required=True,
        help="Server type to run"
    )
    parser.add_argument(
        "--port",
        type=int,
        default=None,
        help="Listen port (overrides environment variable and default)",
    )
    args = parser.parse_args()

    # Import and run the appropriate server
    if args.server == "synthesis":
        port = args.port if args.port else int(os.getenv("UNIFIED_SYNTHESIS_PORT", 18001))
        kill_port_processes(port)
        from synthesis_server import SynthesisServer
        server = SynthesisServer()
    elif args.server == "placement":
        port = args.port if args.port else int(os.getenv("UNIFIED_PLACEMENT_PORT", 18002))
        kill_port_processes(port)
        from placement_server import PlacementServer
        server = PlacementServer()
    elif args.server == "cts":
        port = args.port if args.port else int(os.getenv("UNIFIED_CTS_PORT", 18003))
        kill_port_processes(port)
        from cts_server import CtsServer
        server = CtsServer()
    elif args.server == "routing":
        port = args.port if args.port else int(os.getenv("UNIFIED_ROUTING_PORT", 18004))
        kill_port_processes(port)
        from routing_server import RoutingServer
        server = RoutingServer()
    elif args.server == "all":
        # Get all port numbers
        port_synth = int(os.getenv("UNIFIED_SYNTHESIS_PORT", 18001))
        port_placement = int(os.getenv("UNIFIED_PLACEMENT_PORT", 18002))
        port_cts = int(os.getenv("UNIFIED_CTS_PORT", 18003))
        port_routing = int(os.getenv("UNIFIED_ROUTING_PORT", 18004))
        
        # Kill processes on all ports before starting
        print("Cleaning up existing processes on all server ports...")
        kill_port_processes([port_synth, port_placement, port_cts, port_routing])
        
        from synthesis_server import SynthesisServer
        server1 = SynthesisServer()
        from placement_server import PlacementServer
        server2 = PlacementServer()
        from cts_server import CtsServer
        server3 = CtsServer()
        from routing_server import RoutingServer
        server4 = RoutingServer()
    else:
        print(f"Unknown server type: {args.server}")
        sys.exit(1)
    
    if args.server == "all":        
        # Start each server on its default port
        def run_server_in_thread(server, port):
            try:
                server.run_server(port)
            except Exception as e:
                print(f"Error starting server on port {port}: {e}")

        print(f"Starting all servers on their configured ports...")
        print(f"Synthesis server: port {port_synth}")
        print(f"Placement server: port {port_placement}")
        print(f"CTS server: port {port_cts}")
        print(f"Routing server: port {port_routing}")

        # Start servers in separate threads (daemon=True so they exit when main thread exits)
        t1 = threading.Thread(target=run_server_in_thread, args=(server1, port_synth), daemon=True)
        t2 = threading.Thread(target=run_server_in_thread, args=(server2, port_placement), daemon=True)
        t3 = threading.Thread(target=run_server_in_thread, args=(server3, port_cts), daemon=True)
        t4 = threading.Thread(target=run_server_in_thread, args=(server4, port_routing), daemon=True)
        
        t1.start()
        t2.start()
        t3.start()
        t4.start()
        
        print("All servers started. Press Ctrl+C to stop all servers.")
        
        try:
            # Keep main thread alive
            while True:
                time.sleep(1)
        except KeyboardInterrupt:
            print("\nStopping all servers...")
            print("All servers stopped.")
            sys.exit(0)
    else:
        print(f"Starting {args.server} server...")
        server.run_server(port)

if __name__ == "__main__":
    main() 