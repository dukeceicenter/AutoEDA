#!/usr/bin/env python3
"""
MCP-EDA-Server Test Runner Script
Run all test suites with improved error handling and reporting
"""

import unittest
import sys
import os
import time
import subprocess
import argparse
from pathlib import Path
from typing import Dict, List, Tuple, Optional

class TestRunner:
    """Test runner with improved error handling and reporting"""
    
    def __init__(self):
        self.results = {}
        self.start_time = time.time()
        self.verbose = False
        
    def log(self, message: str, level: str = "INFO"):
        """Log message with timestamp"""
        timestamp = time.strftime("%H:%M:%S")
        print(f"[{timestamp}] {level}: {message}")

    def check_service_health(self, url: str, service_name: str) -> bool:
        """Check if a service is running"""
    try:
        import requests
            response = requests.get(url, timeout=2)
            if response.status_code == 200:
                self.log(f"{service_name} is running at {url}")
            return True
            else:
                self.log(f"{service_name} returned status {response.status_code}", "WARNING")
                return False
        except Exception as e:
            self.log(f"{service_name} is not running: {e}", "WARNING")
            return False
    
    def run_test_suite(self, test_name: str, test_module: str, 
                      requires_service: Optional[str] = None, service_url: Optional[str] = None) -> bool:
        """Run a test suite with service dependency checking"""
        self.log(f"Running {test_name} tests...")
        
        # Check service dependency
        if requires_service and service_url:
            if not self.check_service_health(service_url, requires_service):
                self.log(f"Skipping {test_name} tests - {requires_service} not available", "WARNING")
                self.results[test_name] = {"status": "SKIPPED", "reason": f"{requires_service} not available"}
        return True
    
        try:
            # Load and run test suite
            test_suite = unittest.TestLoader().loadTestsFromName(test_module)
            test_result = unittest.TextTestRunner(verbosity=2 if self.verbose else 1).run(test_suite)
    
            success = test_result.wasSuccessful()
            self.results[test_name] = {
                "status": "PASSED" if success else "FAILED",
                "tests_run": test_result.testsRun,
                "failures": len(test_result.failures),
                "errors": len(test_result.errors)
            }
            
            if success:
                self.log(f"{test_name} tests passed ({test_result.testsRun} tests)")
            else:
                self.log(f"{test_name} tests failed ({len(test_result.failures)} failures, {len(test_result.errors)} errors)", "ERROR")
            
            return success
            
        except Exception as e:
            self.log(f"Error running {test_name} tests: {e}", "ERROR")
            self.results[test_name] = {"status": "ERROR", "error": str(e)}
            return False
    
    def run_unit_tests(self) -> bool:
        """Run unit tests"""
        self.log("=" * 60)
        self.log("Running unit tests...")
        self.log("=" * 60)
        
        config_success = self.run_test_suite("Configuration", "test_config")
        design_success = self.run_test_suite("Design Files", "test_designs")
    
        return config_success and design_success

    def run_api_tests(self) -> bool:
        """Run API tests"""
        self.log("=" * 60)
        self.log("Running API tests...")
        self.log("=" * 60)
        
        return self.run_test_suite(
            "API Endpoints", 
            "test_api_endpoints",
            "MCP Servers",
            "http://localhost:13333/health"
        )
    
    def run_integration_tests(self) -> bool:
        """Run integration tests"""
        self.log("=" * 60)
        self.log("Running integration tests...")
        self.log("=" * 60)
        
        return self.run_test_suite(
            "Integration", 
            "test_integration",
            "MCP Servers",
            "http://localhost:13333/health"
        )
    
    def run_mcp_tests(self) -> bool:
        """Run MCP protocol tests"""
        self.log("=" * 60)
        self.log("Running MCP protocol tests...")
        self.log("=" * 60)
        
        return self.run_test_suite(
            "MCP Agent Client", 
            "test_mcp_agent_client",
            "MCP Agent Client",
            "http://localhost:8000/docs"
        )
    
    def run_experiment_tests(self) -> bool:
        """Run experimental framework tests"""
        self.log("=" * 60)
        self.log("Running experimental framework tests...")
        self.log("=" * 60)
        
        return self.run_test_suite(
            "Experiment Framework", 
            "test_experiment_framework",
            "Experiment Framework",
            None  # No service dependency
        )

    def run_specific_test(self, test_name: str) -> bool:
        """Run a specific test"""
        self.log(f"=" * 60)
        self.log(f"Running specific test: {test_name}")
        self.log(f"=" * 60)
        
        return self.run_test_suite(test_name, test_name)
    
    def print_summary(self):
        """Print test summary"""
        self.log("=" * 60)
        self.log("TEST SUMMARY")
        self.log("=" * 60)
        
        total_tests = len(self.results)
        passed_tests = sum(1 for r in self.results.values() if r["status"] == "PASSED")
        failed_tests = sum(1 for r in self.results.values() if r["status"] == "FAILED")
        skipped_tests = sum(1 for r in self.results.values() if r["status"] == "SKIPPED")
        error_tests = sum(1 for r in self.results.values() if r["status"] == "ERROR")
        
        for test_name, result in self.results.items():
            status = result["status"]
            if status == "PASSED":
                details = f"{result.get('tests_run', 0)} tests"
            elif status == "FAILED":
                details = f"{result.get('failures', 0)} failures, {result.get('errors', 0)} errors"
            elif status == "SKIPPED":
                details = result.get("reason", "Unknown reason")
            else:
                details = result.get("error", "Unknown error")
            
            self.log(f"{test_name:20} {status:8} - {details}")
        
        self.log("-" * 60)
        self.log(f"Total: {total_tests}, Passed: {passed_tests}, Failed: {failed_tests}, Skipped: {skipped_tests}, Errors: {error_tests}")
        
        elapsed_time = time.time() - self.start_time
        self.log(f"Total execution time: {elapsed_time:.2f} seconds")
        
        return failed_tests == 0 and error_tests == 0

def setup_environment():
    """Setup test environment"""
    # Check current directory
    if not Path("tests").exists():
        print("Error: Please run this script from the project root directory")
        sys.exit(1)
    
    # Ensure we're in project root directory
    if Path.cwd().name == "tests":
        os.chdir("..")
    
    # Add tests directory to Python path
    sys.path.insert(0, str(Path.cwd()))
    sys.path.insert(0, str(Path.cwd() / "tests"))
    
    # Create logs directory if it doesn't exist
    logs_dir = Path("logs")
    logs_dir.mkdir(exist_ok=True)

def main():
    """Main function"""
    parser = argparse.ArgumentParser(description="MCP-EDA-Server Test Suite")
    parser.add_argument("test_type", nargs="?", default="all", 
                       choices=["unit", "api", "integration", "mcp", "experiment", "all"],
                       help="Type of tests to run")
    parser.add_argument("--verbose", "-v", action="store_true", 
                       help="Verbose output")
    parser.add_argument("--list", "-l", action="store_true", 
                       help="List available test types")
    
    args = parser.parse_args()
    
    if args.list:
        print("Available test types:")
        print("  unit        - Unit tests (configuration, design files)")
        print("  api         - API endpoint tests")
        print("  integration - Integration workflow tests")
        print("  mcp         - MCP protocol tests")
        print("  experiment  - Experimental framework tests")
        print("  all         - All tests (default)")
        return
    
    # Setup environment
    setup_environment()
    
    # Create test runner
    runner = TestRunner()
    runner.verbose = args.verbose
    
    runner.log("MCP-EDA-Server Test Suite")
    runner.log("=" * 60)
    
    # Run tests based on type
    success = True
    
    if args.test_type == "unit":
        success = runner.run_unit_tests()
    elif args.test_type == "api":
        success = runner.run_api_tests()
    elif args.test_type == "integration":
        success = runner.run_integration_tests()
    elif args.test_type == "mcp":
        success = runner.run_mcp_tests()
    elif args.test_type == "experiment":
        success = runner.run_experiment_tests()
    elif args.test_type == "all":
        success = (runner.run_unit_tests() and 
                  runner.run_api_tests() and 
                  runner.run_integration_tests() and 
                  runner.run_mcp_tests() and
                  runner.run_experiment_tests())
    else:
        # Try to run specific test
        success = runner.run_specific_test(args.test_type)
    
    # Print summary
    overall_success = runner.print_summary()
    
    # Exit with appropriate code
    if overall_success:
        runner.log("All tests completed successfully!")
        sys.exit(0)
    else:
        runner.log("Some tests failed!", "ERROR")
        sys.exit(1)

if __name__ == "__main__":
    main() 