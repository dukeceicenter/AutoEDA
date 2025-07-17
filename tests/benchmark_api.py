#!/usr/bin/env python3
"""
API Benchmarking Script - Test API performance and response times
"""

import time
import requests
import statistics
from pathlib import Path
from typing import List, Dict, Any

class APIBenchmark:
    """API benchmarking utility"""
    
    def __init__(self, base_url: str = "http://localhost:8000"):
        self.base_url = base_url
        self.results = {}
    
    def benchmark_endpoint(self, endpoint: str, payload: Dict[str, Any], 
                          iterations: int = 10) -> Dict[str, Any]:
        """Benchmark a specific endpoint"""
        print(f"Benchmarking {endpoint} with {iterations} iterations...")
        
        response_times = []
        success_count = 0
        error_count = 0
        
        for i in range(iterations):
            start_time = time.time()
            try:
                response = requests.post(f"{self.base_url}{endpoint}", 
                                       json=payload, timeout=30)
                end_time = time.time()
                
                if response.status_code == 200:
                    success_count += 1
                    response_times.append(end_time - start_time)
                else:
                    error_count += 1
                    print(f"  Request {i+1} failed with status {response.status_code}")
                    
            except Exception as e:
                error_count += 1
                print(f"  Request {i+1} failed with error: {e}")
        
        if response_times:
            result = {
                "endpoint": endpoint,
                "iterations": iterations,
                "success_count": success_count,
                "error_count": error_count,
                "success_rate": success_count / iterations,
                "min_time": min(response_times),
                "max_time": max(response_times),
                "avg_time": statistics.mean(response_times),
                "median_time": statistics.median(response_times),
                "std_dev": statistics.stdev(response_times) if len(response_times) > 1 else 0
            }
        else:
            result = {
                "endpoint": endpoint,
                "iterations": iterations,
                "success_count": 0,
                "error_count": error_count,
                "success_rate": 0,
                "min_time": 0,
                "max_time": 0,
                "avg_time": 0,
                "median_time": 0,
                "std_dev": 0
            }
        
        self.results[endpoint] = result
        return result
    
    def print_results(self):
        """Print benchmark results"""
        print("\n" + "=" * 80)
        print("API BENCHMARK RESULTS")
        print("=" * 80)
        
        for endpoint, result in self.results.items():
            print(f"\nEndpoint: {result['endpoint']}")
            print(f"  Iterations: {result['iterations']}")
            print(f"  Success Rate: {result['success_rate']:.2%}")
            print(f"  Success/Error: {result['success_count']}/{result['error_count']}")
            print(f"  Response Times (seconds):")
            print(f"    Min:     {result['min_time']:.3f}")
            print(f"    Max:     {result['max_time']:.3f}")
            print(f"    Average: {result['avg_time']:.3f}")
            print(f"    Median:  {result['median_time']:.3f}")
            print(f"    Std Dev: {result['std_dev']:.3f}")
    
    def save_results(self, filename: str = "api_benchmark_results.json"):
        """Save results to JSON file"""
        import json
        
        with open(filename, "w") as f:
            json.dump(self.results, f, indent=2)
        
        print(f"\nResults saved to {filename}")

def main():
    """Main benchmarking function"""
    print("MCP-EDA-Server API Benchmark")
    print("=" * 40)
    
    # Check if services are running
    try:
        response = requests.get("http://localhost:8000/docs", timeout=2)
        if response.status_code != 200:
            print("Error: MCP Agent client not running on port 8000")
            return
    except:
        print("Error: Cannot connect to MCP Agent client")
        return
    
    # Create benchmark instance
    benchmark = APIBenchmark()
    
    # Test cases
    test_cases = [
        {
            "endpoint": "/agent",
            "payload": {"user_query": "Run synth_setup for design=\"b14\" and return the log path."},
            "description": "Synthesis Setup Request"
        },
        {
            "endpoint": "/agent", 
            "payload": {"user_query": "Run floorplan for design=\"b14\", top_module=\"b14\" and return the path to floorplan.enc.dat."},
            "description": "Floorplan Request"
        },
        {
            "endpoint": "/agent",
            "payload": {"user_query": "Please execute complete physical implementation flow for b14 design"},
            "description": "Complete Workflow Request"
        }
    ]
    
    # Run benchmarks
    for test_case in test_cases:
        print(f"\n{test_case['description']}")
        print("-" * 40)
        benchmark.benchmark_endpoint(test_case["endpoint"], test_case["payload"], iterations=5)
    
    # Print and save results
    benchmark.print_results()
    benchmark.save_results()

if __name__ == "__main__":
    main() 