#!/usr/bin/env python3

import argparse
import pathlib
import time
import subprocess
import sys
import os

# Load environment variables from .env file at project root
from dotenv import load_dotenv

# Add project root to Python path
ROOT = pathlib.Path(__file__).resolve().parent.parent.parent
load_dotenv(dotenv_path=ROOT / ".env")

def setup_eda_environment():
    """Setup EDA tools environment for both Synopsys and Cadence tools"""
    
    # Read EDA paths from environment variables
    synopsys_path = os.getenv("EDA_SYNOPSYS_PATH", "/opt/synopsys/syn/V-2023.12-SP2/bin")
    cadence_path = os.getenv("EDA_CADENCE_PATH", "/opt/cadence/innovus221/tools/bin")
    
    # Additional Cadence paths for comprehensive coverage
    cadence_paths = [
        "/opt/cadence/innovus221/tools/bin",
        "/opt/cadence/genus172/bin", 
        "/opt/cadence/innovus191/bin"
    ]
    
    # Build list of EDA paths, filtering out empty ones
    eda_paths = [synopsys_path] + cadence_paths
    
    current_path = os.environ.get("PATH", "")
    new_path = ":".join(eda_paths) + ":" + current_path
    os.environ["PATH"] = new_path
    
    print(f"✓ EDA environment setup completed")
    print(f"✓ Added to PATH: {', '.join(eda_paths)}")
    
    # Check if key tools are accessible
    tools_to_check = {
        "synth": "dc_shell",
        "placement": "innovus", 
        "cts": "innovus",
        "routing": "innovus"
    }
    
    for mode, tool in tools_to_check.items():
        try:
            result = subprocess.run(["which", tool], capture_output=True, text=True)
            if result.returncode == 0:
                print(f"✓ Found {tool} at: {result.stdout.strip()}")
            else:
                print(f"⚠ Warning: {tool} not found in PATH")
        except Exception as e:
            print(f"Error checking {tool}: {e}")

def run_synthesis(tcl_file: pathlib.Path, workspace_dir: pathlib.Path):
    """Execute synthesis using dc_shell"""
    
    print(f"=== Synthesis Executor ===")
    print(f"TCL File: {tcl_file}")
    print(f"Workspace: {workspace_dir}")
    
    if not tcl_file.exists():
        raise FileNotFoundError(f"TCL file not found: {tcl_file}")
    
    if not workspace_dir.exists():
        raise FileNotFoundError(f"Workspace directory not found: {workspace_dir}")
    
    # Setup EDA environment
    setup_eda_environment()
    
    # Build dc_shell command to execute the TCL file
    cmd = f'dc_shell -no_home_init -output_log_file console.log -x "source -e -v {tcl_file}"'
    
    print(f"Executing command: {cmd}")
    print(f"Working directory: {workspace_dir}")
    
    # Execute dc_shell in the workspace directory
    start_time = time.time()
    
    try:
        # Use tcsh for license environment compatibility
        process = subprocess.Popen(
            cmd,
            cwd=str(workspace_dir),
            shell=True,
            executable="/bin/tcsh",
            universal_newlines=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
        )
        
        # Stream output in real-time
        for line in process.stdout:
            print(line.rstrip())
        
        process.wait()
        
        if process.returncode != 0:
            raise RuntimeError(f"dc_shell failed with return code {process.returncode}")
        
        # Check for completion marker
        done_file = workspace_dir / "_Finished_"
        if not done_file.exists():
            raise RuntimeError("Synthesis did not complete successfully (_Finished_ file not found)")
        
        end_time = time.time()
        elapsed = end_time - start_time
        
        print(f"\n=== Synthesis Completed Successfully ===")
        print(f"Elapsed time: {elapsed:.1f} seconds")
        
        # Report generated files
        reports_dir = workspace_dir / "reports"
        results_dir = workspace_dir / "results"
        
        if reports_dir.exists():
            report_files = list(reports_dir.glob("*.rpt"))
            print(f"Generated {len(report_files)} report files:")
            for rpt in sorted(report_files):
                print(f"  - {rpt.name}")
        
        if results_dir.exists():
            result_files = list(results_dir.glob("*"))
            print(f"Generated {len(result_files)} result files:")
            for res in sorted(result_files):
                print(f"  - {res.name}")
        
        return True
        
    except Exception as e:
        print(f"Error during synthesis: {e}")
        return False

def run_innovus_workflow(tcl_file: pathlib.Path, workspace_dir: pathlib.Path, mode: str):
    """Execute innovus-based workflows (placement, cts, routing)"""
    
    print(f"=== {mode.title()} Executor ===")
    print(f"TCL File: {tcl_file}")
    print(f"Workspace: {workspace_dir}")
    
    if not tcl_file.exists():
        raise FileNotFoundError(f"TCL file not found: {tcl_file}")
    
    if not workspace_dir.exists():
        raise FileNotFoundError(f"Workspace directory not found: {workspace_dir}")
    
    # Create necessary subdirectories if they don't exist
    (workspace_dir / "pnr_save").mkdir(exist_ok=True)
    (workspace_dir / "pnr_out").mkdir(exist_ok=True)
    (workspace_dir / "pnr_reports").mkdir(exist_ok=True)
    
    # Setup EDA environment
    setup_eda_environment()
    
    # Change to workspace directory
    original_cwd = pathlib.Path.cwd()
    os.chdir(workspace_dir)
    
    try:
        # Execute innovus with the TCL file
        print(f"Starting Innovus execution...")
        
        # Build innovus command
        innovus_cmd = f'innovus -no_gui -batch -files "{tcl_file}"'
        print(f"Command: {innovus_cmd}")
        
        # Use tcsh for license compatibility
        process = subprocess.Popen(
            innovus_cmd,
            cwd=str(workspace_dir),
            shell=True,
            executable="/bin/tcsh",
            universal_newlines=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
        )
        
        print(f"Innovus process started with PID: {process.pid}")
        
        # Stream output in real-time
        for line in process.stdout:
            print(line.rstrip())
        
        process.wait()
        
        print(f"\nInnovus execution completed with return code: {process.returncode}")
        
        if process.returncode != 0:
            raise RuntimeError(f"Innovus failed with return code {process.returncode}")
        
        # Check for completion marker
        done_file = workspace_dir / "_Finished_"
        if done_file.exists():
            print("✓ Completion marker found")
        else:
            print("⚠ Warning: Completion marker not found")
        
        # Check for mode-specific output files
        print(f"\n=== Generated Files ===")
        
        if mode == "placement":
            check_placement_files(workspace_dir)
        elif mode == "cts":
            check_cts_files(workspace_dir)
        elif mode == "routing":
            check_routing_files(workspace_dir)
        
        print(f"{mode.title()} Completed Successfully")
        return True
        
    except Exception as e:
        print(f"{mode.title()} execution failed: {e}")
        raise
    finally:
        # Restore original working directory
        os.chdir(original_cwd)

def check_placement_files(workspace_dir: pathlib.Path):
    """Check for placement-specific output files"""
    output_files = [
        ("pnr_save/floorplan.enc", None),
        ("pnr_save/powerplan.enc", None), 
        ("pnr_save/placement.enc", None),
        ("pnr_out/init.def", None),
        ("pnr_out/place.def", None),
        ("pnr_reports/floorplan_summary.rpt", "pnr_reports/floorplan_summary.rpt.gz"),
        ("pnr_reports/check_place.out", None),
        ("pnr_reports/place_timing.rpt", "pnr_reports/place_timing.rpt.gz"),
        ("pnr_reports/place_opt_timing.rpt", "pnr_reports/place_opt_timing.rpt.gz"),
    ]
    
    for base_file, gz_file in output_files:
        file_path = workspace_dir / base_file
        gz_path = workspace_dir / gz_file if gz_file else None
        
        # Check for gz version first, then base version
        found = False
        if gz_path and gz_path.exists():
            print(f"  ✓ {gz_file} ({gz_path.stat().st_size} bytes) [compressed]")
            found = True
        elif file_path.exists():
            print(f"  ✓ {base_file} ({file_path.stat().st_size} bytes)")
            found = True
        
        if not found:
            print(f"  ✗ {base_file} (missing)")
    
    # Check for GDS file
    gds_files = list((workspace_dir / "pnr_out").glob("*_place.gds.gz"))
    if gds_files:
        print(f"✓ GDS file found: {gds_files[0].name}")
    else:
        print(f"⚠ Warning: GDS file (*_place.gds.gz) not found in pnr_out/")

def check_cts_files(workspace_dir: pathlib.Path):
    """Check for CTS-specific output files"""
    output_files = [
        ("pnr_save/cts.enc", None),
        ("pnr_out/clock.def", None),
        ("pnr_out/RC_cts.spef.gz", None),
        ("pnr_reports/cts_opt_timing.rpt", "pnr_reports/cts_opt_timing.rpt.gz"),
        ("pnr_reports/ccopt.txt", None),
    ]
    
    for base_file, gz_file in output_files:
        file_path = workspace_dir / base_file
        gz_path = workspace_dir / gz_file if gz_file else None
        
        # Check for gz version first, then base version
        found = False
        if gz_path and gz_path.exists():
            print(f"  ✓ {gz_file} ({gz_path.stat().st_size} bytes) [compressed]")
            found = True
        elif file_path.exists():
            print(f"  ✓ {base_file} ({file_path.stat().st_size} bytes)")
            found = True
        
        if not found:
            print(f"  ✗ {base_file} (missing)")
    
    # Check for GDS file
    gds_files = list((workspace_dir / "pnr_out").glob("*_cts.gds.gz"))
    if gds_files:
        print(f"✓ GDS file found: {gds_files[0].name}")
    else:
        print(f"⚠ Warning: GDS file (*_cts.gds.gz) not found in pnr_out/")

def check_routing_files(workspace_dir: pathlib.Path):
    """Check for routing-specific output files"""
    # Route stage files
    route_files = [
        "pnr_save/global_route.enc",
        "pnr_save/detail_route.enc", 
        "pnr_save/route_opt.enc",
        "pnr_out/route.def",
        "pnr_out/RC.spef.gz",
        "pnr_reports/route_summary.rpt",
        "pnr_reports/congestion.rpt",
        "pnr_reports/postRoute_drc_max1M.rpt",
        "pnr_reports/postOpt_drc_max1M.rpt",
    ]
    
    print("Route stage files:")
    for route_file in route_files:
        file_path = workspace_dir / route_file
        if file_path.exists():
            print(f"  ✓ {route_file} ({file_path.stat().st_size} bytes)")
        else:
            print(f"  ✗ {route_file} (missing)")
    
    # Save stage files
    save_patterns = [
        "*_pnr.lef",
        "*_lib.lef", 
        "*_pnr.v",
        "*_pnr.gds.gz"
    ]
    
    print("\nSave stage files:")
    out_dir = workspace_dir / "pnr_out"
    for pattern in save_patterns:
        matches = list(out_dir.glob(pattern))
        if matches:
            for match in matches:
                print(f"  ✓ {match.name} ({match.stat().st_size} bytes)")
        else:
            print(f"  ✗ {pattern} (missing)")
    
    # Check for GDS file
    gds_files = list((workspace_dir / "pnr_out").glob("*_pnr.gds.gz"))
    if gds_files:
        print(f"✓ GDS file found: {gds_files[0].name}")
    else:
        print(f"⚠ Warning: GDS file (*_pnr.gds.gz) not found in pnr_out/")

def main():
    parser = argparse.ArgumentParser(description="Unified EDA Executor")
    parser.add_argument("-mode", type=str, required=True, 
                       help="Execution mode (synth, placement, cts, routing)")
    parser.add_argument("-tcl", type=str, required=True,
                       help="Complete TCL file to execute")
    parser.add_argument("-workspace", type=str, required=True,
                       help="Workspace directory for execution")
    
    args = parser.parse_args()
    
    # Convert paths
    tcl_file = pathlib.Path(args.tcl)
    workspace_dir = pathlib.Path(args.workspace)
    
    print(f"=== Unified EDA Executor Started ===")
    print(f"Mode: {args.mode}")
    print(f"TCL File: {tcl_file}")
    print(f"Workspace: {workspace_dir}")
    print(f"Started at: {time.strftime('%Y-%m-%d %H:%M:%S')}")
    
    success = False
    
    try:
        if args.mode == "synth":
            success = run_synthesis(tcl_file, workspace_dir)
        elif args.mode in ["placement", "cts", "routing"]:
            success = run_innovus_workflow(tcl_file, workspace_dir, args.mode)
        else:
            print(f"Error: Unsupported mode '{args.mode}'")
            print("Supported modes: synth, placement, cts, routing")
            return 1
        
        if success:
            print(f"\n=== Unified EDA Executor completed successfully ===")
            return 0
        else:
            print(f"\n=== Unified EDA Executor failed ===")
            return 1
            
    except Exception as e:
        print(f"\nUnified EDA Executor failed: {e}")
        return 1

if __name__ == "__main__":
    exit_code = main()
    sys.exit(exit_code)
