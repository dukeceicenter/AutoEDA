#!/usr/bin/env python3
import os
import sys
import argparse
import subprocess
from generate.common_config import EXPERIMENT_CONFIG

def run_generation(methods=None, case_ids=None):
    """Run generation for specified methods and cases"""
    if methods is None:
        methods = ["baseline1", "baseline2", "ours"]
    
    if case_ids is None:
        case_ids = [case["case_id"] for case in EXPERIMENT_CONFIG["test_cases"]]
    
    print("=" * 60)
    print("RUNNING TCL GENERATION")
    print("=" * 60)
    
    for method in methods:
        print(f"\n--- Running {method.upper()} ---")
        for case_id in case_ids:
            print(f"Generating {case_id}...")
            
            script_path = f"generate/{method}_generate.py"
            if not os.path.exists(script_path):
                print(f"Error: {script_path} not found")
                continue
            
            try:
                result = subprocess.run([
                    sys.executable, script_path, 
                    "--case_id", case_id
                ], capture_output=True, text=True, cwd=".")
                
                if result.returncode == 0:
                    print(f"✓ {method} {case_id} completed")
                    if result.stdout:
                        print(f"  Output: {result.stdout.strip()}")
                else:
                    print(f"✗ {method} {case_id} failed")
                    if result.stderr:
                        print(f"  Error: {result.stderr.strip()}")
                        
            except Exception as e:
                print(f"✗ {method} {case_id} exception: {e}")

def run_evaluation(summary=True):
    """Run evaluation on generated results"""
    print("\n" + "=" * 60)
    print("RUNNING TCL EVALUATION")
    print("=" * 60)
    
    script_path = "evaluate/tcl_evaluator.py"
    if not os.path.exists(script_path):
        print(f"Error: {script_path} not found")
        return
    
    try:
        cmd = [sys.executable, script_path]
        if summary:
            cmd.append("--summary")
        
        result = subprocess.run(cmd, cwd=".")
        
        if result.returncode == 0:
            print("✓ Evaluation completed successfully")
        else:
            print("✗ Evaluation failed")
            
    except Exception as e:
        print(f"✗ Evaluation exception: {e}")

def clean_results():
    """Clean previous results"""
    import shutil
    
    dirs_to_clean = ["results", "evaluation_results"]
    for dir_name in dirs_to_clean:
        if os.path.exists(dir_name):
            shutil.rmtree(dir_name)
            print(f"Cleaned {dir_name}/")

def check_prerequisites():
    """Check if all required files and dependencies exist"""
    required_files = [
        "generate/common_config.py",
        "generate/baseline1_generate.py", 
        "generate/baseline2_generate.py",
        "generate/ours_generate.py",
        "evaluate/tcl_evaluator.py",
        "evaluate/evaluation_metrics.py",
        ".env"
    ]
    
    missing_files = []
    for file_path in required_files:
        if not os.path.exists(file_path):
            missing_files.append(file_path)
    
    if missing_files:
        print("Missing required files:")
        for file_path in missing_files:
            print(f"  - {file_path}")
        return False
    
    from dotenv import load_dotenv
    load_dotenv()
    if not os.getenv("OPENAI_API_KEY"):
        print("Missing OPENAI_API_KEY in .env file")
        return False
    
    return True

def main():
    parser = argparse.ArgumentParser(description="Run TCL Accuracy Experiment")
    parser.add_argument("--generate", nargs="*", 
                       choices=["baseline1", "baseline2", "ours"],
                       help="Run generation for specified methods (default: all)")
    parser.add_argument("--evaluate", action="store_true",
                       help="Run evaluation on existing results")
    parser.add_argument("--case_ids", nargs="*", 
                       help="Specify case IDs to run (default: all)")
    parser.add_argument("--clean", action="store_true",
                       help="Clean previous results before running")
    parser.add_argument("--no-summary", action="store_true",
                       help="Don't print evaluation summary")
    parser.add_argument("--full", action="store_true",
                       help="Run complete experiment (generate + evaluate)")
    
    args = parser.parse_args()
    
    if not check_prerequisites():
        print("Prerequisites check failed. Please fix the issues above.")
        return 1
    
    if args.clean:
        clean_results()
    
    if args.full:
        run_generation()
        run_evaluation(summary=not args.no_summary)
    elif args.generate is not None:
        methods = args.generate if args.generate else None
        run_generation(methods, args.case_ids)
    elif args.evaluate:
        run_evaluation(summary=not args.no_summary)
    else:
        run_generation()
        run_evaluation(summary=not args.no_summary)
    
    print("\n" + "=" * 60)
    print("EXPERIMENT COMPLETED")
    print("=" * 60)
    print("Results saved in:")
    print("  - Generation results: results/")
    print("  - Evaluation results: evaluation_results/")
    
    return 0

if __name__ == "__main__":
    sys.exit(main())