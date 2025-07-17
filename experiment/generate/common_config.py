#!/usr/bin/env python3
import os
import json
import time
from typing import Dict, List
from dotenv import load_dotenv

load_dotenv()

EXPERIMENT_CONFIG = {
    "design": "des",
    "top_module": "des3", 
    "tech": "FreePDK45",
    "impl_ver": "cpV1",
    "syn_ver": "cpV1_clkP1_drcV1",
    "test_cases": [
        {
            "case_id": "case_0",
            "tool": "floorplan",
            "g_idx": 0,
            "p_idx": 0
        }
    ]
}

RESULTS_DIR = "results"
EVALUATION_RESULTS_DIR = "evaluation_results"
SCRIPTS_DIR = "scripts/FreePDK45/backend"

def ensure_results_dir():
    """Ensure results directory structure exists"""
    os.makedirs(f"{RESULTS_DIR}/baseline1", exist_ok=True)
    os.makedirs(f"{RESULTS_DIR}/baseline2", exist_ok=True)
    os.makedirs(f"{RESULTS_DIR}/ours", exist_ok=True)
    os.makedirs(EVALUATION_RESULTS_DIR, exist_ok=True)

def save_generation_result(method: str, case_id: str, result: Dict):
    """Save generation result to results directory"""
    ensure_results_dir()
    
    result_file = f"{RESULTS_DIR}/{method}/{case_id}_result.json"
    with open(result_file, 'w') as f:
        json.dump(result, f, indent=2)
    
    tcl_file = f"{RESULTS_DIR}/{method}/{case_id}_generated.tcl"
    with open(tcl_file, 'w') as f:
        f.write(result.get("tcl_code", ""))
    
    print(f"Saved {method} result: {result_file}")

def load_tcl_template(tool: str) -> str:
    """Load TCL template file"""
    tool_map = {"floorplan": "2"}
    file_number = tool_map.get(tool, "1")
    template_path = f"{SCRIPTS_DIR}/{file_number}_{tool}.tcl"
    
    if os.path.exists(template_path):
        with open(template_path, 'r') as f:
            return f.read()
    return ""

def get_case_params(case_id: str) -> Dict:
    """Get parameters for a specific test case"""
    for case in EXPERIMENT_CONFIG["test_cases"]:
        if case["case_id"] == case_id:
            return {
                **EXPERIMENT_CONFIG,
                **case
            }
    raise ValueError(f"Case {case_id} not found")