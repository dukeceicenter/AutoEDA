#!/usr/bin/env python3

import argparse
from pathlib import Path
from pydantic import BaseModel
from typing import Dict, List, Tuple

# Import the base class
from base_server import BaseServer

# Add project root to Python path
ROOT = Path(__file__).resolve().parent.parent.parent

class RoutingServer(BaseServer):
    """
    Unified Routing Server implementation.
    
    Workspace Structure:
        designs/{design}/{tech}/implementation/{syn_ver}__{impl_ver}/
        ├── pnr_save/      
        ├── pnr_out/      
        └── pnr_reports/   
    
    TCL Scripts Used:
        - scripts/{tech}/backend/7_route.tcl
        - scripts/{tech}/backend/8_save_design.tcl
    
    Note: Auto-detects restore_enc from latest CTS run if restore_enc not specified.

    Files created:
        7_route.tcl 
        Reports:
          pnr_reports/route_timing.rpt.gz         
          pnr_reports/route_opt_timing.rpt.gz     
          pnr_reports/route_summary.rpt           
          pnr_reports/congestion.rpt              
          pnr_reports/postRoute_drc_max1M.rpt     
          pnr_reports/postOpt_drc_max1M.rpt       
          pnr_reports/route_opt_power/design.rpt.gz
          pnr_reports/route_opt_power/clock.rpt.gz 
        Output Files:
          pnr_out/route.def                       
          pnr_out/RC.spef.gz                      
        Design Saves:
          pnr_save/global_route.enc               
          pnr_save/detail_route.enc               
          pnr_save/route_opt.enc                  
        8_save_design.tcl 
        Output Files:
          pnr_out/${TOP_NAME}_pnr.lef             
          pnr_out/${TOP_NAME}_lib.lef             
          pnr_out/${TOP_NAME}_pnr.v               
          pnr_out/${TOP_NAME}_pnr.gds.gz          
    """
    
    def __init__(self):
        super().__init__(
            server_name="routing",
            log_dir_name="unified_routing",
            port_env="UNIFIED_ROUTING_PORT",
            default_port=18004
        )
    
    def get_request_model(self):
        """
        Define the request model for routing server.
        """
        class UnifiedRoutingReq(BaseModel):
            design: str
            tech: str = "FreePDK45"
            syn_ver: str = None
            impl_ver: str = None
            # restore_enc: str = None
            force: bool = True
            skip_execution: bool = False
        return UnifiedRoutingReq
    
    def get_response_model(self):
        """
        Define the response model for routing server.
        """
        class UnifiedRoutingResp(BaseModel):
            status: str
            log_path: str
            reports: dict
            tcl_path: str
        return UnifiedRoutingResp
    
    def get_workspace_setup_method(self):
        """Use custom workspace setup that preserves cts.enc"""
        return self.setup_workspace
    
    def get_executor_call_method(self):
        """Use standard executor calling"""
        return self.call_executor
    
    def get_report_files(self):
        """
        Define which reports to collect after routing.
        
        Returns list of (base_name, gz_name) pairs.
        The system will look for gz_name first, then base_name.
        """
        return [
            ("route_summary.rpt", "route_summary.rpt"),
            ("route_timing.rpt", "route_timing.rpt.gz"),
            ("route_opt_timing.rpt", "route_opt_timing.rpt.gz"),
            ("postRoute_drc_max1M.rpt", "postRoute_drc_max1M.rpt"),
            ("postOpt_drc_max1M.rpt", "postOpt_drc_max1M.rpt"),
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
        if req.skip_execution is False:
            _ = self._find_latest_enc_file(req.design, req.tech, req.syn_ver, req.impl_ver, "cts")

        return "impl_ver"

    def get_tcl_script_config(self, req) -> Dict:
        """
        Configure TCL script generation for routing.
        
        This defines:
        - Which TCL scripts to combine
        - What title and version info to include
        - What footer content to add
        - Output filename
        """
        return {
            'title': 'Complete Unified Routing TCL Script (Route + Save)',
            'version_info': f'Implementation Version: {req.impl_ver}',
            'script_paths': [
                ROOT / "src" / "scripts" / req.tech / "backend" / "combined_routing.tcl",
            ],
            'script_section_title': 'Backend Scripts',
            'footer_title': 'Routing completed',
            'output_filename': 'complete_unified_routing.tcl'
        }
    
    def get_output_directories(self) -> List[str]:
        """Define output directories for routing workflow"""
        return ["pnr_save", "pnr_out", "pnr_reports"]
    
    def get_reports_directory(self) -> str:
        """Define reports directory for routing workflow"""
        return "pnr_reports"

if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Routing Server Implementation",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
- python src/server/routing_server.py --port 18004      

API Usage:
curl -X POST http://localhost:18004/run -H "Content-Type: application/json" -d '{"design": "des", "tech": "FreePDK45"}'
        """
    )
    parser.add_argument(
        "--port",
        type=int,
        default=None,
        help="Listen port (overrides environment variable and default)",
    )
    args = parser.parse_args()

    print("Starting routing server...")
    server = RoutingServer()
    server.run_server(args.port) 
