#!/usr/bin/env python3
import os
import json
import time
import argparse
from typing import Dict, List
from evaluation_metrics import evaluate_tcl_quality

class TCLEvaluator:
    def __init__(self, results_dir="results", output_dir="evaluation_results"):
        self.results_dir = results_dir
        self.output_dir = output_dir
        os.makedirs(output_dir, exist_ok=True)
    
    def load_generation_results(self) -> Dict:
        """Load all generation results from results directory"""
        methods = ["baseline1", "baseline2", "ours"]
        all_results = {}
        
        for method in methods:
            method_dir = os.path.join(self.results_dir, method)
            if not os.path.exists(method_dir):
                print(f"Warning: {method_dir} not found")
                continue
            
            method_results = {}
            for file in os.listdir(method_dir):
                if file.endswith("_result.json"):
                    case_id = file.replace("_result.json", "")
                    result_file = os.path.join(method_dir, file)
                    tcl_file = os.path.join(method_dir, f"{case_id}_generated.tcl")
                    
                    with open(result_file, 'r') as f:
                        result = json.load(f)
                    
                    if os.path.exists(tcl_file):
                        with open(tcl_file, 'r') as f:
                            tcl_code = f.read()
                        result["tcl_code"] = tcl_code
                    
                    method_results[case_id] = result
            
            all_results[method] = method_results
        
        return all_results
    
    def evaluate_all_methods(self) -> Dict:
        """Evaluate all methods and generate comparison results"""
        generation_results = self.load_generation_results()
        evaluation_results = {}
        
        all_case_ids = set()
        for method_results in generation_results.values():
            all_case_ids.update(method_results.keys())
        
        for case_id in sorted(all_case_ids):
            case_evaluation = {
                "case_id": case_id,
                "methods": {}
            }
            
            for method in ["baseline1", "baseline2", "ours"]:
                if method in generation_results and case_id in generation_results[method]:
                    result = generation_results[method][case_id]
                    
                    tcl_quality = evaluate_tcl_quality(
                        result.get("tcl_code", ""), 
                        result.get("tool", "floorplan")
                    )
                    
                    case_evaluation["methods"][method] = {
                        "generation_success": result.get("success", False),
                        "execution_time": result.get("execution_time", 0),
                        "tcl_quality": tcl_quality,
                        "notes": result.get("notes", ""),
                        "timestamp": result.get("timestamp", "")
                    }
                else:
                    case_evaluation["methods"][method] = {
                        "generation_success": False,
                        "execution_time": 0,
                        "tcl_quality": {"overall": "0.00", "syntax": "0.00", "completeness": "0.00", "executability": "0.00", "professionalism": "0.00"},
                        "notes": "No result found",
                        "timestamp": ""
                    }
            
            evaluation_results[case_id] = case_evaluation
        
        return evaluation_results
    
    def calculate_statistics(self, evaluation_results: Dict) -> Dict:
        """Calculate overall statistics for all methods"""
        methods = ["baseline1", "baseline2", "ours"]
        stats = {}
        
        for method in methods:
            success_count = 0
            quality_sum = 0
            time_sum = 0
            total_cases = 0
            
            for case_result in evaluation_results.values():
                if method in case_result["methods"]:
                    method_result = case_result["methods"][method]
                    total_cases += 1
                    
                    if method_result["generation_success"]:
                        success_count += 1
                        quality_sum += float(method_result["tcl_quality"]["overall"])
                        time_sum += method_result["execution_time"]
            
            stats[method] = {
                "success_rate": success_count / total_cases if total_cases > 0 else 0,
                "avg_quality": quality_sum / success_count if success_count > 0 else 0,
                "avg_time": time_sum / success_count if success_count > 0 else 0,
                "total_cases": total_cases,
                "successful_cases": success_count
            }
        
        return stats
    
    def generate_evaluation_report(self) -> str:
        """Generate complete evaluation report"""
        evaluation_results = self.evaluate_all_methods()
        statistics = self.calculate_statistics(evaluation_results)
        
        report = {
            "evaluation_info": {
                "name": "TCL Accuracy Evaluation",
                "description": "Evaluation of TCL generation quality between different methods",
                "total_cases": len(evaluation_results),
                "timestamp": time.strftime("%Y-%m-%d %H:%M:%S")
            },
            "case_results": evaluation_results,
            "statistics": statistics
        }
        
        report_file = os.path.join(self.output_dir, "tcl_accuracy_evaluation.json")
        with open(report_file, 'w') as f:
            json.dump(report, f, indent=2)
        
        print(f"Evaluation report saved to: {report_file}")
        return report_file
    
    def print_summary(self):
        """Print evaluation summary to console"""
        evaluation_results = self.evaluate_all_methods()
        statistics = self.calculate_statistics(evaluation_results)
        
        print("\n" + "="*60)
        print("TCL ACCURACY EVALUATION SUMMARY")
        print("="*60)
        
        for method in ["baseline1", "baseline2", "ours"]:
            stats = statistics[method]
            print(f"\n{method.upper()}:")
            print(f"  Success Rate: {stats['success_rate']:.2%}")
            print(f"  Avg Quality:  {stats['avg_quality']:.3f}/1.000")
            print(f"  Avg Time:     {stats['avg_time']:.2f}s")
            print(f"  Cases:        {stats['successful_cases']}/{stats['total_cases']}")
        
        print("\n" + "="*60)

def main():
    parser = argparse.ArgumentParser(description="Evaluate TCL generation quality")
    parser.add_argument("--results_dir", default="results", 
                       help="Directory containing generation results")
    parser.add_argument("--output_dir", default="evaluation_results",
                       help="Directory to save evaluation results")
    parser.add_argument("--summary", action="store_true",
                       help="Print summary to console")
    args = parser.parse_args()
    
    evaluator = TCLEvaluator(args.results_dir, args.output_dir)
    report_file = evaluator.generate_evaluation_report()
    
    if args.summary:
        evaluator.print_summary()
    
    print(f"Evaluation completed. Report saved to: {report_file}")

if __name__ == "__main__":
    main()