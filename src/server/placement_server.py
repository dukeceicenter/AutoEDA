#!/usr/bin/env python3

import argparse
from pathlib import Path
from pydantic import BaseModel
from typing import Dict, List, Tuple

# Import the base class
from base_server import BaseServer

# Add project root to Python path
ROOT = Path(__file__).resolve().parent.parent.parent

class PlacementServer(BaseServer):
    """
    Unified Placement Server implementation.
    
    Workspace Structure:
        designs/{design}/{tech}/implementation/{syn_ver}__{impl_ver}/
        ├── pnr_save/      
        ├── pnr_out/      
        └── pnr_reports/   
    
    TCL Scripts Used:
        - scripts/{tech}/backend/1_setup.tcl
        - scripts/{tech}/backend/2_floorplan.tcl
        - scripts/{tech}/backend/3_powerplan.tcl
        - scripts/{tech}/backend/4_place.tcl

    Files created:
        1_setup.tcl 
        Reports:
          pnr_reports/analysis_views.rpt        

        2_floorplan.tcl 
        Reports:
          pnr_reports/init_check.rpt          
          pnr_reports/floorplan_summary.rpt     
        Output Files:
          pnr_out/init.def                      
        Design Saves:
          pnr_save/floorplan.enc                

        3_powerplan.tcl 
        Design Saves:
          pnr_save/powerplan.enc                

        4_place.tcl 
        Reports:
          pnr_reports/place_timing.rpt.gz               
          pnr_reports/place_opt_timing.rpt.gz           
          pnr_reports/placement_summary.rpt             
          pnr_reports/check_place.out                   
          pnr_reports/place_opt_power/design.rpt.gz     
          pnr_reports/place_opt_power/clock.rpt.gz      
        Output Files:
          pnr_out/place.def                             
          pnr_out/${TOP_NAME}_place.v                   
          pnr_out/RC_place.spef.gz                      
          pnr_out/${top_module}_place.gds.gz            
        Design Saves:
          pnr_save/placement.enc                        
    """
    
    def __init__(self):
        super().__init__(
            server_name="placement",
            log_dir_name="unified_placement",
            port_env="UNIFIED_PLACEMENT_PORT",
            default_port=18002
        )
    
    def get_request_model(self):
        """
        Define the request model for placement server.
        """
        class UnifiedPlacementReq(BaseModel):
            design: str
            tech: str = "FreePDK45"
            syn_ver: str = None
            impl_ver: str = None
            force: bool = True
            skip_execution: bool = False
            
            # Floorplan configuration parameters
            # 1_setup.tcl
            flowEffort: str = "standard"  # express, standard, extreme
            globalPowerEffort: str = "none"     # none, low, high
            # 2_floorplan.tcl
            aspectRatio: float = 1.0          
            rowDensity: float = 0.7    
            # 3_powerplan.tcl
            # 4_place.tcl
            place_global_timing_effort: str = "medium"   # medium, high
            place_global_cong_effort: str = "low"     # low, medium, high, auto
            place_detail_wire_length_opt_effort: str = "none"  # none, medium, high
            place_global_max_density: float = 0.9        
            place_global_activity_power_driven: str = "false"    
            maxDensity: float = 0.8          
            powerEffort: str = "low"         # none, low, high
            reclaimArea: str = "default"     # true, false, default
            fixFanoutLoad: str = "true"   # true, false
            syn_res_dir: str = None
        return UnifiedPlacementReq
    
    def get_response_model(self):
        """
        Define the response model for placement server.
        """
        class UnifiedPlacementResp(BaseModel):
            status: str
            log_path: str
            reports: dict
            tcl_path: str
        return UnifiedPlacementResp
    
    def get_workspace_setup_method(self):
        """Use standard workspace setup"""
        return self.setup_workspace
    
    def get_executor_call_method(self):
        """Use standard executor calling"""
        return self.call_executor
    
    def get_report_files(self):
        """
        Define which reports to collect after placement.
        
        Returns list of (base_name, gz_name) pairs.
        The system will look for gz_name first, then base_name.
        """
        return [
            ("floorplan_summary.rpt", "floorplan_summary.rpt.gz"),
            ("placement_summary.rpt", "placement_summary.rpt.gz"),
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
            try:
                req.syn_ver = self._find_latest_synthesis_version(req.design, req.tech)
            except FileNotFoundError as e:
                return False, f"Error finding synthesis version: {e}", None, {}
        
        # Set syn_res_dir to point to synthesis results
        if req.syn_res_dir is None:
            req.syn_res_dir = str(ROOT / "designs" / req.design / req.tech / "synthesis" / req.syn_ver / "results")
        
        # Auto-version the impl_ver field if None
        if req.impl_ver is None:
            if not getattr(req, 'skip_execution', False):
                try:
                    req.impl_ver = self._find_latest_implementation_version(req.design, req.tech, req.syn_ver)
                except FileNotFoundError as e:
                    print(f"Cannot find implementation version: {e}")
                    pass

        return "impl_ver"

    def get_tcl_script_config(self, req) -> Dict:
        """
        Configure TCL script generation for placement.
        
        This defines:
        - Which TCL scripts to combine
        - What title and version info to include
        - What footer content to add
        - Output filename
        """
        return {
            'title': 'Complete Unified Placement TCL Script (Floorplan + Powerplan + Placement)',
            'version_info': f'Synthesis Version: {req.syn_ver}, Implementation Version: {req.impl_ver}',
            'script_paths': [
                ROOT / "src" / "scripts" / req.tech / "backend" / "combined_placement.tcl",
            ],
            'script_section_title': 'Backend Scripts',
            'footer_title': 'Save final placement',
            'output_filename': 'complete_unified_placement.tcl'
        }
    
    def get_output_directories(self) -> List[str]:
        """Define output directories for placement workflow"""
        return ["pnr_save", "pnr_out", "pnr_reports"]
    
    def get_reports_directory(self) -> str:
        """Define reports directory for placement workflow"""
        return "pnr_reports"
    
    def get_workspace_setup_method(self):
        """ Use standard workspace setup"""
        return self.setup_workspace


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Placement Server Implementation",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
- python src/server/placement_server.py --port 18002 

API Usage:
curl -X POST http://localhost:18002/run -H "Content-Type: application/json" -d '{"design": "des", "tech": "FreePDK45"}'
        """
    )
    parser.add_argument(
        "--port",
        type=int,
        default=None,
        help="Listen port (overrides environment variable and default)",
    )
    args = parser.parse_args()

    print("Starting placement server...")
    server = PlacementServer()
    server.run_server(args.port) 
