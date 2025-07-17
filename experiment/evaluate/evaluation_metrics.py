from typing import Dict

def evaluate_tcl_quality(tcl_code: str, tool: str) -> Dict:
    """
    Evaluate TCL code quality across multiple dimensions
    
    Returns a dictionary with scores for:
    - syntax: Correctness of TCL syntax and commands
    - completeness: Presence of essential commands
    - executability: Likelihood of successful execution
    - professionalism: Use of advanced EDA features
    - overall: Combined score (0.00-1.00)
    """
    if not tcl_code or tcl_code.strip() == "":
        return {
            "overall": "0.00", 
            "syntax": "0.00", 
            "completeness": "0.00", 
            "executability": "0.00", 
            "professionalism": "0.00"
        }
    
    syntax_score = 0
    if "set " in tcl_code:  
        syntax_score += 1
    if "floorPlan" in tcl_code:  
        syntax_score += 1
    if "]" in tcl_code and "[" in tcl_code:  
        syntax_score += 1

    if "floorplan -" in tcl_code.lower() and "floorPlan" not in tcl_code:
        syntax_score = max(0, syntax_score - 1)
    
    completeness_score = 0
    essential_commands = ["floorPlan", "editPin", "saveDesign"]
    for cmd in essential_commands:
        if cmd in tcl_code:
            completeness_score += 1
    
    executability_score = 0
    
    if len(tcl_code.split('\n')) < 20 and "floorplan -" in tcl_code.lower():
        executability_score = 1  
    
    elif "ASPECT_RATIO" in tcl_code and "planDesign" in tcl_code and "init_design" not in tcl_code:
        executability_score = 2  
    
    elif ("set_global" in tcl_code and "create_library_set" in tcl_code and 
          not tcl_code.startswith("Cadence Innovus") and len(tcl_code.split('\n')) < 200):
        executability_score = 3  
    
    professionalism_score = 0
    
    professional_features = [
        "create_library_set",   
        "create_delay_corner",  
        "create_analysis_view", 
        "init_design",         
        "setMultiCpuUsage",    
        "suppressMessage"      
    ]
    
    for feature in professional_features:
        if feature in tcl_code:
            professionalism_score += 0.5
    
    professionalism_score = min(3, professionalism_score)
    
    total_score = syntax_score + completeness_score + executability_score + professionalism_score
    overall_score = total_score / 12  
    
    return {
        "overall": f"{overall_score:.2f}",
        "syntax": f"{syntax_score/3:.2f}",
        "completeness": f"{completeness_score/3:.2f}",
        "executability": f"{executability_score/3:.2f}",
        "professionalism": f"{professionalism_score/3:.2f}"
    }

def compare_methods(evaluation_results: Dict) -> Dict:
    """
    Compare evaluation results across different methods
    
    Args:
        evaluation_results: Dictionary with case results
    
    Returns:
        Comparison analysis with rankings and insights
    """
    methods = ["baseline1", "baseline2", "ours"]
    comparison = {
        "method_rankings": {},
        "quality_analysis": {},
        "insights": []
    }
    
    method_scores = {}
    for method in methods:
        scores = []
        for case_result in evaluation_results.values():
            if method in case_result.get("methods", {}):
                quality = case_result["methods"][method].get("tcl_quality", {})
                if quality.get("overall") != "0.00":
                    scores.append(float(quality["overall"]))
        
        method_scores[method] = {
            "avg_score": sum(scores) / len(scores) if scores else 0,
            "success_rate": len(scores) / len(evaluation_results) if evaluation_results else 0,
            "total_cases": len(scores)
        }

    ranked_methods = sorted(method_scores.items(), key=lambda x: x[1]["avg_score"], reverse=True)
    comparison["method_rankings"] = {i+1: {"method": method, **stats} 
                                   for i, (method, stats) in enumerate(ranked_methods)}
    
    comparison["quality_analysis"] = method_scores
    
    best_method = ranked_methods[0][0] if ranked_methods else None
    if best_method:
        best_score = method_scores[best_method]["avg_score"]
        comparison["insights"].append(f"Best performing method: {best_method} (avg score: {best_score:.3f})")
    
    for method, stats in method_scores.items():
        if stats["success_rate"] < 1.0:
            comparison["insights"].append(f"{method} had {stats['success_rate']:.1%} success rate")
    
    return comparison