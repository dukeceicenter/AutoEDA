#!/usr/bin/env python3
"""
MCP EDA Server Test Runner v2.0

Comprehensive test runner for the MCP EDA Server project.
Supports the new src/ directory structure and 4-server architecture.

Usage:
    python tests/run_tests.py [test_category] [options]

Test Categories:
    unit          - Unit tests (server components, scripts, codebleu)
    integration   - Integration tests (multi-server, flow, MCP)
    performance   - Performance and load tests
    all           - All test categories (default)

Options:
    --verbose, -v    - Verbose output
    --list, -l       - List available test categories
    --parallel, -p   - Run tests in parallel where possible
    --timeout SECS   - Set timeout for individual tests
    --design NAME    - Use specific design for testing
"""

import unittest
import sys
import os
import time
import subprocess
import argparse
import threading
import queue
from pathlib import Path
from typing import Dict, List, Tuple, Optional

# Add project root to Python path
PROJECT_ROOT = Path(__file__).parent.parent
sys.path.insert(0, str(PROJECT_ROOT))
sys.path.insert(0, str(PROJECT_ROOT / "src"))
sys.path.insert(0, str(PROJECT_ROOT / "tests"))

from tests import TEST_CONFIG


class TestResult:
    """Encapsulate test results"""
    
    def __init__(self, name: str, status: str, details: dict = None):
        self.name = name
        self.status = status
        self.details = details or {}
        self.start_time = time.time()
        self.end_time = None
        
    def finish(self):
        """Mark test as finished"""
        self.end_time = time.time()
        
    @property
    def duration(self) -> float:
        """Get test duration"""
        if self.end_time:
            return self.end_time - self.start_time
        return time.time() - self.start_time


class TestRunner:
    """Enhanced test runner with improved error handling and reporting"""
    
    def __init__(self, verbose: bool = False, parallel: bool = False, timeout: int = 60):
        self.verbose = verbose
        self.parallel = parallel
        self.timeout = timeout
        self.results: Dict[str, TestResult] = {}
        self.start_time = time.time()
        
    def log(self, message: str, level: str = "INFO"):
        """Log message with timestamp"""
        timestamp = time.strftime("%H:%M:%S")
        prefix = f"[{timestamp}] {level}"
        print(f"{prefix}: {message}")
        
    def check_dependencies(self) -> Dict[str, bool]:
        """Check test dependencies"""
        dependencies = {}
        
        # Check Python packages
        packages = ["requests", "unittest", "pathlib", "json"]
        for package in packages:
            try:
                __import__(package)
                dependencies[f"python_{package}"] = True
            except ImportError:
                dependencies[f"python_{package}"] = False
                
        # Check optional packages
        optional_packages = ["jinja2", "transformers", "torch"]
        for package in optional_packages:
            try:
                __import__(package)
                dependencies[f"optional_{package}"] = True
            except ImportError:
                dependencies[f"optional_{package}"] = False
                
        # Check server availability
        import requests
        for name, config in TEST_CONFIG["servers"].items():
            try:
                response = requests.get(
                    f"http://localhost:{config['port']}{config['endpoint']}", 
                    timeout=2
                )
                dependencies[f"server_{name}"] = response.status_code == 200
            except Exception:
                dependencies[f"server_{name}"] = False
                
        return dependencies
    
    def run_test_module(self, module_name: str, test_class: str = None) -> TestResult:
        """Run a specific test module"""
        test_result = TestResult(module_name, "running")
        
        try:
            self.log(f"Running {module_name} tests...")
            
            # Load test suite
            if test_class:
                test_suite = unittest.TestLoader().loadTestsFromName(f"{module_name}.{test_class}")
            else:
                test_suite = unittest.TestLoader().loadTestsFromName(module_name)
            
            # Run tests
            test_runner = unittest.TextTestRunner(
                verbosity=2 if self.verbose else 1,
                stream=sys.stdout,
                buffer=True
            )
            
            unittest_result = test_runner.run(test_suite)
            
            # Process results
            if unittest_result.wasSuccessful():
                test_result.status = "PASSED"
            elif unittest_result.failures or unittest_result.errors:
                test_result.status = "FAILED"
            else:
                test_result.status = "SKIPPED"
                
            test_result.details = {
                "tests_run": unittest_result.testsRun,
                "failures": len(unittest_result.failures),
                "errors": len(unittest_result.errors),
                "skipped": len(getattr(unittest_result, 'skipped', []))
            }
            
            self.log(f"{module_name} tests: {test_result.status} "
                    f"({test_result.details['tests_run']} tests, "
                    f"{test_result.details['failures']} failures, "
                    f"{test_result.details['errors']} errors)")
            
        except Exception as e:
            test_result.status = "ERROR"
            test_result.details = {"error": str(e)}
            self.log(f"Error running {module_name}: {e}", "ERROR")
            
        test_result.finish()
        return test_result
    
    def run_unit_tests(self) -> bool:
        """Run unit tests"""
        self.log("=" * 60)
        self.log("Running Unit Tests")
        self.log("=" * 60)
        
        unit_test_modules = [
            "test_server_components",
            "test_scripts_templates", 
            "test_codebleu_tcl"
        ]
        
        success = True
        
        if self.parallel:
            # Run tests in parallel
            success = self._run_tests_parallel(unit_test_modules)
        else:
            # Run tests sequentially
            for module in unit_test_modules:
                result = self.run_test_module(module)
                self.results[module] = result
                if result.status in ["FAILED", "ERROR"]:
                    success = False
                    
        return success
    
    def run_integration_tests(self) -> bool:
        """Run integration tests"""
        self.log("=" * 60)
        self.log("Running Integration Tests")
        self.log("=" * 60)
        
        integration_test_modules = [
            "test_mcp_integration",
            "test_agent_client",
            "test_integration_flow"
        ]
        
        success = True
        
        # Integration tests should run sequentially to avoid conflicts
        for module in integration_test_modules:
            result = self.run_test_module(module)
            self.results[module] = result
            if result.status in ["FAILED", "ERROR"]:
                success = False
                
        return success
    
    def run_performance_tests(self) -> bool:
        """Run performance tests"""
        self.log("=" * 60)
        self.log("Running Performance Tests")
        self.log("=" * 60)
        
        # Performance tests focus on specific test classes
        performance_tests = [
            ("test_integration_flow", "TestPerformanceValidation"),
            ("test_mcp_integration", "TestMCPServerStartup"),
        ]
        
        success = True
        
        for module, test_class in performance_tests:
            result = self.run_test_module(module, test_class)
            test_name = f"{module}.{test_class}"
            self.results[test_name] = result
            if result.status in ["FAILED", "ERROR"]:
                success = False
                
        return success
    
    def _run_tests_parallel(self, modules: List[str]) -> bool:
        """Run tests in parallel"""
        self.log(f"Running {len(modules)} test modules in parallel...")
        
        results_queue = queue.Queue()
        threads = []
        
        def run_module(module_name):
            result = self.run_test_module(module_name)
            results_queue.put((module_name, result))
        
        # Start threads
        for module in modules:
            thread = threading.Thread(target=run_module, args=(module,))
            thread.start()
            threads.append(thread)
        
        # Wait for completion
        for thread in threads:
            thread.join(timeout=self.timeout)
        
        # Collect results
        success = True
        while not results_queue.empty():
            module_name, result = results_queue.get()
            self.results[module_name] = result
            if result.status in ["FAILED", "ERROR"]:
                success = False
                
        return success
    
    def run_specific_test(self, test_name: str) -> bool:
        """Run a specific test module or class"""
        self.log(f"Running specific test: {test_name}")
        
        if "." in test_name:
            module, test_class = test_name.split(".", 1)
            result = self.run_test_module(module, test_class)
        else:
            result = self.run_test_module(test_name)
            
        self.results[test_name] = result
        return result.status not in ["FAILED", "ERROR"]
    
    def print_summary(self) -> bool:
        """Print comprehensive test summary"""
        self.log("=" * 60)
        self.log("TEST SUMMARY")
        self.log("=" * 60)
        
        if not self.results:
            self.log("No tests were run!")
            return False
            
        # Calculate statistics
        total_tests = len(self.results)
        passed_tests = sum(1 for r in self.results.values() if r.status == "PASSED")
        failed_tests = sum(1 for r in self.results.values() if r.status == "FAILED")
        error_tests = sum(1 for r in self.results.values() if r.status == "ERROR")
        skipped_tests = sum(1 for r in self.results.values() if r.status == "SKIPPED")
        
        # Print individual results
        for test_name, result in sorted(self.results.items()):
            status_symbol = {
                "PASSED": "✓",
                "FAILED": "✗", 
                "ERROR": "!",
                "SKIPPED": "~"
            }.get(result.status, "?")
            
            duration_str = f"{result.duration:.2f}s"
            
            if result.status == "PASSED":
                details = f"{result.details.get('tests_run', 0)} tests"
            elif result.status in ["FAILED", "ERROR"]:
                failures = result.details.get('failures', 0)
                errors = result.details.get('errors', 0)
                details = f"{failures} failures, {errors} errors"
            elif result.status == "SKIPPED":
                details = f"{result.details.get('skipped', 0)} skipped"
            else:
                details = result.details.get('error', 'Unknown error')
            
            self.log(f"{status_symbol} {test_name:<30} {result.status:<8} {duration_str:<8} - {details}")
        
        # Print summary statistics
        self.log("-" * 60)
        self.log(f"Total: {total_tests}, "
                f"Passed: {passed_tests}, "
                f"Failed: {failed_tests}, "
                f"Errors: {error_tests}, "
                f"Skipped: {skipped_tests}")
        
        total_duration = time.time() - self.start_time
        self.log(f"Total execution time: {total_duration:.2f} seconds")
        
        # Print dependency status
        dependencies = self.check_dependencies()
        available_servers = sum(1 for k, v in dependencies.items() 
                              if k.startswith("server_") and v)
        total_servers = sum(1 for k in dependencies.keys() if k.startswith("server_"))
        
        self.log(f"Server availability: {available_servers}/{total_servers}")
        
        # Return overall success
        return failed_tests == 0 and error_tests == 0
    
    def print_dependency_status(self):
        """Print dependency status"""
        self.log("Checking dependencies...")
        dependencies = self.check_dependencies()
        
        # Group dependencies
        python_deps = {k: v for k, v in dependencies.items() if k.startswith("python_")}
        optional_deps = {k: v for k, v in dependencies.items() if k.startswith("optional_")}
        server_deps = {k: v for k, v in dependencies.items() if k.startswith("server_")}
        
        # Print Python dependencies
        self.log("Python Dependencies:")
        for dep, available in python_deps.items():
            name = dep.replace("python_", "")
            status = "✓" if available else "✗"
            self.log(f"  {status} {name}")
        
        # Print optional dependencies
        if optional_deps:
            self.log("Optional Dependencies:")
            for dep, available in optional_deps.items():
                name = dep.replace("optional_", "")
                status = "✓" if available else "✗"
                self.log(f"  {status} {name}")
        
        # Print server dependencies
        self.log("EDA Servers:")
        for dep, available in server_deps.items():
            name = dep.replace("server_", "")
            port = TEST_CONFIG["servers"][name]["port"]
            status = "✓" if available else "✗"
            self.log(f"  {status} {name} (port {port})")


def setup_environment():
    """Setup test environment"""
    # Ensure we're in the right directory
    if not (PROJECT_ROOT / "src").exists():
        print(f"Error: src directory not found at {PROJECT_ROOT}")
        print("Please run this script from the project root directory")
        sys.exit(1)
    
    # Create logs directory
    logs_dir = PROJECT_ROOT / "logs"
    logs_dir.mkdir(exist_ok=True)
    
    # Set environment variables for testing
    os.environ["TEST_MODE"] = "1"
    os.environ["PYTHONPATH"] = str(PROJECT_ROOT)


def main():
    """Main function"""
    parser = argparse.ArgumentParser(
        description="MCP EDA Server Test Suite v2.0",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog=__doc__
    )
    
    parser.add_argument(
        "test_category", 
        nargs="?", 
        default="all",
        choices=["unit", "integration", "performance", "all"],
        help="Type of tests to run (default: all)"
    )
    
    parser.add_argument(
        "--verbose", "-v", 
        action="store_true",
        help="Verbose output"
    )
    
    parser.add_argument(
        "--list", "-l", 
        action="store_true",
        help="List available test categories and modules"
    )
    
    parser.add_argument(
        "--parallel", "-p", 
        action="store_true",
        help="Run unit tests in parallel"
    )
    
    parser.add_argument(
        "--timeout", 
        type=int, 
        default=120,
        help="Timeout for individual tests in seconds (default: 120)"
    )
    
    parser.add_argument(
        "--design", 
        type=str,
        help="Use specific design for testing"
    )
    
    parser.add_argument(
        "--deps", 
        action="store_true",
        help="Check dependencies and exit"
    )
    
    args = parser.parse_args()
    
    # Setup environment
    setup_environment()
    
    # Create test runner
    runner = TestRunner(
        verbose=args.verbose,
        parallel=args.parallel,
        timeout=args.timeout
    )
    
    if args.design:
        TEST_CONFIG["test_designs"] = [args.design]
    
    if args.list:
        print("Available test categories:")
        print("  unit        - Server components, scripts, CodeBLEU")
        print("  integration - MCP integration, agent client, flow")
        print("  performance - Performance and load tests")
        print("  all         - All test categories")
        print()
        print("Available test modules:")
        print("  test_server_components  - Server class and functionality tests")
        print("  test_mcp_integration    - MCP protocol and tool tests")
        print("  test_agent_client       - AI agent and LLM integration tests")
        print("  test_codebleu_tcl       - CodeBLEU TCL evaluation tests")
        print("  test_scripts_templates  - TCL script template tests")
        print("  test_integration_flow   - End-to-end flow tests")
        return
    
    if args.deps:
        runner.print_dependency_status()
        return
    
    runner.log("MCP EDA Server Test Suite v2.0")
    runner.log("=" * 60)
    runner.print_dependency_status()
    runner.log("=" * 60)
    
    # Run tests based on category
    success = True
    
    if args.test_category == "unit":
        success = runner.run_unit_tests()
    elif args.test_category == "integration":
        success = runner.run_integration_tests()
    elif args.test_category == "performance":
        success = runner.run_performance_tests()
    elif args.test_category == "all":
        success = (
            runner.run_unit_tests() and
            runner.run_integration_tests() and
            runner.run_performance_tests()
        )
    else:
        # Try to run as specific test module
        success = runner.run_specific_test(args.test_category)
    
    # Print summary and exit
    overall_success = runner.print_summary()
    
    if overall_success and success:
        runner.log("All tests completed successfully!", "SUCCESS")
        sys.exit(0)
    else:
        runner.log("Some tests failed or had errors!", "ERROR")
        sys.exit(1)


if __name__ == "__main__":
    main()
