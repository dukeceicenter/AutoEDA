#!/usr/bin/env python3
import os
import time
import argparse
import openai
from dotenv import load_dotenv
from common_config import get_case_params, save_generation_result

load_dotenv()

class Baseline1Generator:
    def __init__(self):
        self.client = openai.OpenAI(api_key=os.getenv("OPENAI_API_KEY"))
    
    def generate_tcl(self, case_id: str) -> dict:
        """Generate TCL using pure LLM without any template"""
        params = get_case_params(case_id)
        
        prompt = f"""You are an expert in EDA (Electronic Design Automation) tools, specifically Cadence Innovus.

Generate complete, executable TCL code for the floorplan step with the following requirements:
- Design name: {params['design']}
- Top module: {params['top_module']}
- Technology: {params['tech']}
- Implementation version: {params['impl_ver']}
- Synthesis version: {params['syn_ver']}
- Grid index: {params['g_idx']}
- Process index: {params['p_idx']}

Requirements:
1. Create a complete floorplan TCL script for Cadence Innovus
2. Include proper pin assignment for input/output ports
3. Include proper save commands
4. Use correct TCL syntax and Innovus commands
5. The script should be ready to execute in Innovus

Generate ONLY the TCL code without any explanations or markdown formatting."""
        
        start_time = time.time()
        try:
            response = self.client.chat.completions.create(
                model="gpt-3.5-turbo",
                messages=[{"role": "user", "content": prompt}],
                temperature=0.1,
                max_tokens=1000
            )
            tcl_code = response.choices[0].message.content.strip()
            execution_time = time.time() - start_time
            success = True
            notes = "Real LLM generation without template"
        except Exception as e:
            tcl_code = f"""# Baseline1 LLM call failed: {str(e)}
# Fallback hardcoded TCL
set design_name {params['design']}
set top_module {params['top_module']}

floorplan -site FreePDK45_38x28_10R_NP_162NW_34O -r 1.0 0.7
editPin -layer M2 -side LEFT -pin {{clk rst}}
editPin -layer M2 -side RIGHT -pin {{out*}}
saveDesign floorplan.enc
"""
            execution_time = time.time() - start_time
            success = False
            notes = f"LLM call failed: {str(e)}, using fallback"
        
        return {
            "method": "baseline1",
            "case_id": case_id,
            "prompt": prompt,
            "tcl_code": tcl_code,
            "success": success,
            "execution_time": execution_time,
            "notes": notes,
            "timestamp": time.strftime("%Y-%m-%d %H:%M:%S")
        }

def main():
    parser = argparse.ArgumentParser(description="Generate TCL using Baseline1 method")
    parser.add_argument("--case_id", required=True, help="Test case ID (e.g., case_0)")
    args = parser.parse_args()
    
    generator = Baseline1Generator()
    result = generator.generate_tcl(args.case_id)
    
    save_generation_result("baseline1", args.case_id, result)
    
    print(f"Baseline1 generation completed for {args.case_id}")
    print(f"Success: {result['success']}")
    print(f"Execution time: {result['execution_time']:.2f}s")

if __name__ == "__main__":
    main()