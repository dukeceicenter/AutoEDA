#!/usr/bin/env python3
import os
import time
import argparse
import requests
from common_config import get_case_params, save_generation_result

class OursGenerator:
    def __init__(self, agent_url="http://localhost:8000/agent"):
        self.agent_url = agent_url
    
    def generate_tcl(self, case_id: str) -> dict:
        """Generate TCL using MCP agent real execution"""
        params = get_case_params(case_id)
        
        prompt = f"Generate {params['tool']} TCL for design={params['design']}, top_module={params['top_module']} with g_idx={params['g_idx']}, p_idx={params['p_idx']}, impl_ver={params['impl_ver']}, syn_ver={params['syn_ver']}"
        
        start_time = time.time()
        try:
            response = requests.post(
                self.agent_url,
                json={"user_query": prompt},
                timeout=300
            )
            execution_time = time.time() - start_time
            
            if response.status_code == 200:
                result = response.json()
                tcl_code = self.extract_tcl_from_result(result, params)
                success = bool(tcl_code)
                notes = "MCP agent execution" + (" successful" if success else " failed")
                
                return {
                    "method": "ours",
                    "case_id": case_id,
                    "prompt": prompt,
                    "tcl_code": tcl_code,
                    "success": success,
                    "execution_time": execution_time,
                    "notes": notes,
                    "mcp_response": result,
                    "timestamp": time.strftime("%Y-%m-%d %H:%M:%S")
                }
            else:
                return {
                    "method": "ours",
                    "case_id": case_id,
                    "prompt": prompt,
                    "tcl_code": "",
                    "success": False,
                    "execution_time": execution_time,
                    "notes": f"HTTP error: {response.status_code}",
                    "mcp_response": {"error": f"HTTP {response.status_code}: {response.text}"},
                    "timestamp": time.strftime("%Y-%m-%d %H:%M:%S")
                }
        except Exception as e:
            execution_time = time.time() - start_time
            return {
                "method": "ours",
                "case_id": case_id,
                "prompt": prompt,
                "tcl_code": "",
                "success": False,
                "execution_time": execution_time,
                "notes": f"Exception: {str(e)}",
                "mcp_response": {"error": str(e)},
                "timestamp": time.strftime("%Y-%m-%d %H:%M:%S")
            }
    
    def extract_tcl_from_result(self, result: dict, params: dict) -> str:
        """Extract real TCL file content from MCP agent execution results"""
        try:
            tool_output = result.get("tool_output", {})
            if not isinstance(tool_output, dict):
                return ""
            
            status = tool_output.get("status", "")
            if "error" in status.lower():
                print(f"Agent execution failed: {status}")
                return ""
            
            tool_input = result.get("tool_input", {})
            if isinstance(tool_input, dict):
                design = tool_input.get("design", "")
                tech = tool_input.get("tech", "")
                syn_ver = tool_input.get("syn_ver", "")
                g_idx = tool_input.get("g_idx", "")
                p_idx = tool_input.get("p_idx", "")
                
                if design and tech and syn_ver:
                    impl_dir = f"../designs/{design}/{tech}/implementation/{syn_ver}__g{g_idx}_p{p_idx}"
                    innovus_cmd = f"{impl_dir}/innovus.cmd"
                    if os.path.exists(innovus_cmd):
                        file_mtime = os.path.getmtime(innovus_cmd)
                        current_time = time.time()
                        if current_time - file_mtime < 600:  
                            with open(innovus_cmd, 'r') as f:
                                content = f.read()
                                if content.strip() and (
                                    "set_global" in content or 
                                    "create_library_set" in content or
                                    "floorPlan" in content or
                                    "planDesign" in content
                                ):
                                    print(f"Successfully extracted real TCL from: {innovus_cmd}")
                                    return content
                                else:
                                    print(f"File {innovus_cmd} doesn't look like TCL commands")
            
            print("No valid TCL found from agent execution")
            return ""
            
        except Exception as e:
            print(f"Error extracting TCL: {e}")
            return ""

def main():
    parser = argparse.ArgumentParser(description="Generate TCL using Ours method (MCP Agent)")
    parser.add_argument("--case_id", required=True, help="Test case ID (e.g., case_0)")
    parser.add_argument("--agent_url", default="http://localhost:8000/agent", 
                       help="MCP Agent URL")
    args = parser.parse_args()
    
    generator = OursGenerator(args.agent_url)
    result = generator.generate_tcl(args.case_id)
    
    save_generation_result("ours", args.case_id, result)
    
    print(f"Ours generation completed for {args.case_id}")
    print(f"Success: {result['success']}")
    print(f"Execution time: {result['execution_time']:.2f}s")

if __name__ == "__main__":
    main()