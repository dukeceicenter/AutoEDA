#!/usr/bin/env python3
import os
import time
import argparse
import openai
from dotenv import load_dotenv
from common_config import get_case_params, save_generation_result, load_tcl_template

load_dotenv()

class Baseline2Generator:
    def __init__(self):
        self.client = openai.OpenAI(api_key=os.getenv("OPENAI_API_KEY"))
    
    def generate_tcl(self, case_id: str) -> dict:
        """Generate TCL using LLM with official template reference"""
        params = get_case_params(case_id)
        
        tcl_template = load_tcl_template(params['tool'])
        
        prompt = f"""You are an expert in EDA (Electronic Design Automation) tools, specifically Cadence Innovus.

Generate complete, executable TCL code for the floorplan step. Here is the official floorplan TCL documentation/template:

OFFICIAL TEMPLATE:
{tcl_template}

REQUIREMENTS:
- Design name: {params['design']}
- Top module: {params['top_module']}
- Technology: {params['tech']}
- Implementation version: {params['impl_ver']}
- Synthesis version: {params['syn_ver']}
- Grid index: {params['g_idx']}
- Process index: {params['p_idx']}

Instructions:
1. Follow the official template structure above
2. Adapt it for the specific design parameters provided
3. Replace template variables appropriately
4. Ensure the generated TCL is complete and executable
5. Use correct Innovus command syntax
6. Include all necessary steps from the template

Generate ONLY the TCL code without any explanations or markdown formatting."""
        
        start_time = time.time()
        try:
            response = self.client.chat.completions.create(
                model="gpt-3.5-turbo",
                messages=[{"role": "user", "content": prompt}],
                temperature=0.1,
                max_tokens=1500
            )
            tcl_code = response.choices[0].message.content.strip()
            execution_time = time.time() - start_time
            success = True
            notes = "Real LLM generation with official template"
        except Exception as e:
            if tcl_template:
                tcl_code = tcl_template.replace("${top_module}", params['top_module'])
                tcl_code = tcl_code.replace("${design}", params['design'])
                tcl_code = tcl_code.replace("$env(target_util)", "0.7")
            else:
                tcl_code = f"""# Baseline2 LLM call failed: {str(e)}
# Fallback template-based TCL
set ASPECT_RATIO 1
set TARGET_UTIL 0.7

setDrawView fplan
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r $ASPECT_RATIO $TARGET_UTIL

setPinAssignMode -pinEditInBatch true
editPin -layer M2 -side LEFT
editPin -layer M2 -side RIGHT
setPinAssignMode -pinEditInBatch false

planDesign
saveDesign pnr_save/floorplan.enc
"""
            execution_time = time.time() - start_time
            success = False
            notes = f"LLM call failed: {str(e)}, using template fallback"
        
        return {
            "method": "baseline2",
            "case_id": case_id,
            "prompt": prompt,
            "tcl_code": tcl_code,
            "success": success,
            "execution_time": execution_time,
            "notes": notes,
            "template_used": tcl_template,
            "timestamp": time.strftime("%Y-%m-%d %H:%M:%S")
        }

def main():
    parser = argparse.ArgumentParser(description="Generate TCL using Baseline2 method")
    parser.add_argument("--case_id", required=True, help="Test case ID (e.g., case_0)")
    args = parser.parse_args()
    
    generator = Baseline2Generator()
    result = generator.generate_tcl(args.case_id)

    save_generation_result("baseline2", args.case_id, result)
    
    print(f"Baseline2 generation completed for {args.case_id}")
    print(f"Success: {result['success']}")
    print(f"Execution time: {result['execution_time']:.2f}s")

if __name__ == "__main__":
    main()