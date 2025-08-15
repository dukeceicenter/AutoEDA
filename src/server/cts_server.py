#!/usr/bin/env python3

import argparse
from pathlib import Path
from pydantic import BaseModel
from typing import Dict, List, Tuple

# Import the base class
from base_server import BaseServer

# Add project root to Python path
ROOT = Path(__file__).resolve().parent.parent.parent

class CtsServer(BaseServer):
    """
    Unified CTS Server implementation.
    
    Workspace Structure:
        designs/{design}/{tech}/implementation/{syn_ver}__{impl_ver}/
        ├── pnr_save/      
        ├── pnr_out/      
        └── pnr_reports/   
    
    TCL Scripts Used:
        - scripts/{tech}/backend/5_cts.tcl
    
    Note: Auto-detects placement.enc from latest placement run if restore_enc not specified.
    
    Files created:
        5_cts.tcl 
        Reports:
          pnr_reports/cts_opt_timing.rpt.gz  
          pnr_reports/ccopt.txt               
        Output Files:
          pnr_out/clock.def                  
          pnr_out/${TOP_NAME}_cts.v           
          pnr_out/RC_cts.spef.gz              
          pnr_out/${TOP_NAME}_cts.gds.gz      
        Design Saves:
          pnr_save/cts.enc                    
    """
    
    def __init__(self):
        super().__init__(
            server_name="cts",
            log_dir_name="unified_cts",
            port_env="UNIFIED_CTS_PORT",
            default_port=18003
        )
    
    def get_request_model(self):
        """
        Define the request model for CTS server.
        """
        class UnifiedCtsReq(BaseModel):
            design: str
            tech: str = "FreePDK45"
            syn_ver: str = None
            impl_ver: str = None
            restore_enc: str = None
            force: bool = True
            skip_execution: bool = False
            # 5_cts.tcl
            cell_density: float = 0.5
            clock_gate_buffering_location: str = "below"
            clone_clock_gates: str = "true"
            maxDensity: float = 0.8
            powerEffort: str = "low"
            reclaimArea: str = "default"
            fixFanoutLoad: str = "true"
        return UnifiedCtsReq
    
    def get_response_model(self):
        """
        Define the response model for CTS server.
        
        Returns:
        - status: Execution status
        - log_path: Path to log file
        - reports: Dictionary of report files
        - tcl_path: Path to generated TCL script
        """
        class UnifiedCtsResp(BaseModel):
            status: str
            log_path: str
            reports: dict
            tcl_path: str
        return UnifiedCtsResp
    
    def get_workspace_setup_method(self):
        """Use standard workspace setup"""

        return self.setup_workspace
    
    def get_executor_call_method(self):
        """Use standard executor calling"""
        return self.call_executor
    
    def get_report_files(self):
        """
        Define which reports to collect after CTS.
        
        Returns list of (base_name, gz_name) pairs.
        The system will look for gz_name first, then base_name.
        """
        return [
            ("cts_opt_timing.rpt", "cts_opt_timing.rpt.gz"),
        ]
    
    def get_workspace_directory(self, req):
        """
        Define workspace directory structure.
        
        Format: designs/{design}/{tech}/implementation/{syn_ver}__{impl_ver}
        """
        return ROOT / "designs" / req.design / req.tech / "implementation" / f"{req.syn_ver}__{req.impl_ver}"
    
    def get_auto_version_field(self, req):
        """Auto-version the impl_ver field if None"""
        # Auto-version syn_ver if not set
        if req.syn_ver is None:
            req.syn_ver = self._find_latest_synthesis_version(req.design, req.tech)
        
        # Auto-version impl_ver if not set
        if req.impl_ver is None:
            if not getattr(req, 'skip_execution', False):
                req.impl_ver = self._find_latest_implementation_version(req.design, req.tech, req.syn_ver)

        # Auto-detect placement.enc if not provided
        if req.restore_enc is None:
            if req.skip_execution is False:
                req.restore_enc = self._find_latest_enc_file(req.design, req.tech, req.syn_ver, req.impl_ver, "placement")
            else:
                req.restore_enc = None

        return "impl_ver"
    
    def get_tcl_script_config(self, req) -> Dict:
        """
        Configure TCL script generation for CTS.
        
        This defines:
        - Which TCL scripts to combine
        - What title and version info to include
        - What footer content to add
        - Output filename
        """
        return {
            'title': 'Complete Unified CTS TCL Script',
            'version_info': f'Implementation Version: {req.impl_ver}',
            'script_paths': [
                ROOT / "src" / "scripts" / req.tech / "backend" / "combined_cts.tcl"
            ],
            'script_section_title': 'Backend Scripts',
            'footer_title': 'CTS completed',
            'output_filename': 'complete_unified_cts.tcl'
        }
    
    def get_output_directories(self) -> List[str]:
        """Define output directories for CTS workflow"""
        return ["pnr_save", "pnr_out", "pnr_reports"]
    
    def get_reports_directory(self) -> str:
        """Define reports directory for CTS workflow"""
        return "pnr_reports"


if __name__ == "__main__":
    """
    Main execution block for CTS server.
    
    Usage:
    - python src/server/cts_server.py --port 18003           # CTS server
    
    API Usage:
    curl -X POST http://localhost:18003/run -H "Content-Type: application/json" -d '{"design": "des", "tech": "FreePDK45"}'
    """
    parser = argparse.ArgumentParser(
        description="CTS Server Implementation",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
- python src/server/cts_server.py --port 18003           # CTS server

API Usage:
curl -X POST http://localhost:18003/run -H "Content-Type: application/json" -d '{"design": "des", "tech": "FreePDK45"}'
        """
    )
    parser.add_argument(
        "--port",
        type=int,
        default=None,
        help="Listen port (overrides environment variable and default)",
    )
    args = parser.parse_args()

    print("Starting CTS server...")
    server = CtsServer()
    server.run_server(args.port) 
