#!/usr/bin/env python3
"""
Load Testing Script - Test API performance under concurrent load
"""

import time
import requests
import threading
import statistics
from pathlib import Path
from typing import List, Dict, Any
import argparse

class LoadTester:
    """Load testing utility"""
    
    def __init__(self, base_url: str = "http://localhost:8000"):
        self.base_url = base_url
        self.results = []
        self.lock = threading.Lock()
    
    def make_request(self, endpoint: str, payload: Dict[str, Any], 
                    request_id: int) -> Dict[str, Any]:
        """Make a single request and record results"""
        start_time = time.time()
        try:
            response = requests.post(f"{self.base_url}{endpoint}", 
                                   json=payload, timeout=30)
            end_time = time.time()
            
            result = {
                "request_id": request_id,
                "start_time": start_time,
                "end_time": end_time,
                "response_time": end_time - start_time,
                "status_code": response.status_code,
                "success": response.status_code == 200,
                "error": None
            }
            
        except Exception as e:
            end_time = time.time()
            result = {
                "request_id": request_id,
                "start_time": start_time,
                "end_time": end_time,
                "response_time": end_time - start_time,
                "status_code": None,
                "success": False,
                "error": str(e)
            }
        
        with self.lock:
            self.results.append(result)
        
        return result
    
    def worker(self, endpoint: str, payload: Dict[str, Any], 
               request_count: int, worker_id: int):
        """Worker thread function"""
        start_id = worker_id * request_count
        for i in range(request_count):
            request_id = start_id + i
            self.make_request(endpoint, payload, request_id)
    
    def run_load_test(self, endpoint: str, payload: Dict[str, Any], 
                     concurrent_users: int = 10, requests_per_user: int = 5,
                     duration: int = 60) -> Dict[str, Any]:
        """Run load test with concurrent users"""
        print(f"Starting load test:")
        print(f"  Endpoint: {endpoint}")
        print(f"  Concurrent users: {concurrent_users}")
        print(f"  Requests per user: {requests_per_user}")
        print(f"  Total requests: {concurrent_users * requests_per_user}")
        print(f"  Duration: {duration} seconds")
        
        # Clear previous results
        self.results = []
        
        # Start worker threads
        threads = []
        start_time = time.time()
        
        for i in range(concurrent_users):
            thread = threading.Thread(
                target=self.worker,
                args=(endpoint, payload, requests_per_user, i)
            )
            threads.append(thread)
            thread.start()
        
        # Wait for all threads to complete or timeout
        for thread in threads:
            thread.join(timeout=duration)
        
        end_time = time.time()
        
        # Calculate statistics
        successful_requests = [r for r in self.results if r["success"]]
        failed_requests = [r for r in self.results if not r["success"]]
        
        if successful_requests:
            response_times = [r["response_time"] for r in successful_requests]
            stats = {
                "total_requests": len(self.results),
                "successful_requests": len(successful_requests),
                "failed_requests": len(failed_requests),
                "success_rate": len(successful_requests) / len(self.results),
                "total_time": end_time - start_time,
                "requests_per_second": len(self.results) / (end_time - start_time),
                "min_response_time": min(response_times),
                "max_response_time": max(response_times),
                "avg_response_time": statistics.mean(response_times),
                "median_response_time": statistics.median(response_times),
                "std_dev_response_time": statistics.stdev(response_times) if len(response_times) > 1 else 0
            }
        else:
            stats = {
                "total_requests": len(self.results),
                "successful_requests": 0,
                "failed_requests": len(failed_requests),
                "success_rate": 0,
                "total_time": end_time - start_time,
                "requests_per_second": len(self.results) / (end_time - start_time),
                "min_response_time": 0,
                "max_response_time": 0,
                "avg_response_time": 0,
                "median_response_time": 0,
                "std_dev_response_time": 0
            }
        
        return stats
    
    def print_results(self, stats: Dict[str, Any]):
        """Print load test results"""
        print("\n" + "=" * 80)
        print("LOAD TEST RESULTS")
        print("=" * 80)
        
        print(f"Total Requests:     {stats['total_requests']}")
        print(f"Successful:         {stats['successful_requests']}")
        print(f"Failed:             {stats['failed_requests']}")
        print(f"Success Rate:       {stats['success_rate']:.2%}")
        print(f"Total Time:         {stats['total_time']:.2f} seconds")
        print(f"Requests/Second:    {stats['requests_per_second']:.2f}")
        print(f"\nResponse Times (seconds):")
        print(f"  Min:     {stats['min_response_time']:.3f}")
        print(f"  Max:     {stats['max_response_time']:.3f}")
        print(f"  Average: {stats['avg_response_time']:.3f}")
        print(f"  Median:  {stats['median_response_time']:.3f}")
        print(f"  Std Dev: {stats['std_dev_response_time']:.3f}")
    
    def save_results(self, stats: Dict[str, Any], filename: str = "load_test_results.json"):
        """Save results to JSON file"""
        import json
        
        output = {
            "load_test_stats": stats,
            "individual_results": self.results
        }
        
        with open(filename, "w") as f:
            json.dump(output, f, indent=2)
        
        print(f"\nResults saved to {filename}")

def main():
    """Main load testing function"""
    parser = argparse.ArgumentParser(description="MCP-EDA-Server Load Test")
    parser.add_argument("--concurrent", "-c", type=int, default=5,
                       help="Number of concurrent users (default: 5)")
    parser.add_argument("--requests", "-r", type=int, default=3,
                       help="Requests per user (default: 3)")
    parser.add_argument("--duration", "-d", type=int, default=30,
                       help="Test duration in seconds (default: 30)")
    parser.add_argument("--endpoint", "-e", default="/agent",
                       help="API endpoint to test (default: /agent)")
    
    args = parser.parse_args()
    
    print("MCP-EDA-Server Load Test")
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
    
    # Create load tester
    load_tester = LoadTester()
    
    # Test payload
    payload = {
        "user_query": "Run synth_setup for design=\"b14\" and return the log path."
    }
    
    # Run load test
    stats = load_tester.run_load_test(
        endpoint=args.endpoint,
        payload=payload,
        concurrent_users=args.concurrent,
        requests_per_user=args.requests,
        duration=args.duration
    )
    
    # Print and save results
    load_tester.print_results(stats)
    load_tester.save_results(stats)

if __name__ == "__main__":
    main() 