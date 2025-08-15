#!/usr/bin/env python3

import argparse
from pathlib import Path
from pydantic import BaseModel
from typing import Dict, List

# Import the base class
from base_server import BaseServer

# Add project root to Python path
ROOT = Path(__file__).resolve().parent.parent.parent

class SynthesisServer(BaseServer):
    """
    Unified Synthesis Server implementation.
    
    Workspace Structure:
        designs/{design}/{tech}/synthesis/{syn_version}/
        ├── reports/       # Synthesis reports
        ├── results/       # Synthesis results
        └── logs/          # Synthesis logs
    
    TCL Scripts Used:
        - All .tcl files in scripts/{tech}/frontend/ (sorted by name)
    
    Files created: 
    2_synthesis.tcl
     Reports (in reports/ directory):
        check_design.rpt     
        check_timing.rpt      
        qor.rpt               
        timing.rpt            
        area.rpt              
        power.rpt             
        cg.rpt                
        ref.rpt               
        lib.rpt               
        hierarchy.rpt         
        clock.rpt             
     Results (in results/ directory):
        ${TOP_NAME}.mapped.v        
        ${TOP_NAME}.mapped.sdc      
        ${TOP_NAME}.spef.gz         
        ${TOP_NAME}.ddc             
        ${TOP_NAME}.pwr.saif_map    
        ${TOP_NAME}.saif_map        
     Other Files:
        analyze.log                 
        elaborate.log               
        change_names                
        data/${TOP_NAME}.synthesis.svf 
    """
    
    def __init__(self):
        super().__init__(
            server_name="synth",
            log_dir_name="synthesis",
            port_env="UNIFIED_SYNTHESIS_PORT",
            default_port=18001
        )
    
    def get_request_model(self):
        """
        Define the request model for synthesis server.
        """
        class SynthReq(BaseModel):
            design: str
            tech: str = "FreePDK45"
            syn_version: str = None
            period: float = 1.0
            fanout_value: float = 10.0
            transition_value: float = 0.2
            capacitance_value: float = 4.5
            compile_cmd: str = "compile"
            power_effort: str = "none"
            area_effort: str = "none"
            map_effort: str = "low"
            dynamic_optimization: str = "false"
            leakage_optimization: str = "false"
            force: bool = True
            skip_execution: bool = False
        return SynthReq
    
    def get_response_model(self):
        """
        Define the response model for synthesis server.

        """
        class SynthResp(BaseModel):
            status: str
            log_path: str
            reports: dict
            tcl_path: str
        return SynthResp
    
    def get_workspace_setup_method(self):
        """Use standard workspace setup"""
        return self.setup_workspace
    
    def get_executor_call_method(self):
        """Use standard executor calling"""
        return self.call_executor
    
    def get_report_files(self):
        """
        Define which reports to collect after synthesis.
        
        Returns list of (base_name, gz_name) pairs.
        Note: Synthesis uses uncompressed files in reports/ directory.
        """
        return [
            ("timing.rpt", "timing.rpt"),
            ("area.rpt", "area.rpt"),
            ("power.rpt", "power.rpt")
        ]
    
    def get_workspace_directory(self, req):
        """
        Define workspace directory structure.
        
        Format: designs/{design}/{tech}/synthesis/{syn_version}
        """
        return ROOT / "designs" / req.design / req.tech / "synthesis" / req.syn_version
    
    def get_auto_version_field(self, req):
        """Auto-version the syn_version field if None"""
        return "syn_version"
    
    def get_tcl_script_config(self, req) -> Dict:
        """
        Configure TCL script generation for synthesis.
        
        This defines:
        - Which TCL scripts to combine (all frontend scripts)
        - What title and version info to include
        - What footer content to add
        - Output filename
        """
        return {
            'title': 'Complete Synthesis TCL Script',
            'version_info': f'Synthesis Version: {req.syn_version}',
            'script_paths': [
                ROOT / "src" / "scripts" / req.tech / "frontend" / "combined_synthesis.tcl",
            ],
            'script_section_title': f'Frontend Scripts',
            'footer_title': 'Synthesis completed',
            'output_filename': 'complete_synthesis.tcl'
        }

    def get_output_directories(self) -> List[str]:
        """Define output directories for synthesis workflow"""
        return ["reports", "results", "logs"]
    
    def get_reports_directory(self) -> str:
        """Define reports directory for synthesis workflow"""
        return "reports"

    def get_output_files(self) -> List[str]:
        """Define output files for synthesis workflow"""
        return ["all"]


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Synthesis Server Implementation",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
- python src/server/synthesis_server.py --port 18001     # Synthesis server

API Usage:
curl -X POST http://localhost:18001/run -H "Content-Type: application/json" -d '{"design": "des", "tech": "FreePDK45"}'
        """
    )
    parser.add_argument(
        "--port",
        type=int,
        default=None,
        help="Listen port (overrides environment variable and default)",
    )
    args = parser.parse_args()

    print("Starting synthesis server...")
    server = SynthesisServer()
    server.run_server(args.port) 
