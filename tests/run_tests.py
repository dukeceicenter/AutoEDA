#!/usr/bin/env python3
"""
MCP-EDA-Server Test Runner Script
Run all test suites
"""

import unittest
import sys
import os
import time
import subprocess
from pathlib import Path

def run_unit_tests():
    """Run unit tests"""
    print("=" * 60)
    print("Running unit tests...")
    print("=" * 60)
    
    # Configuration tests
    config_suite = unittest.TestLoader().loadTestsFromName('test_config')
    config_result = unittest.TextTestRunner(verbosity=2).run(config_suite)
    
    # Design file tests
    design_suite = unittest.TestLoader().loadTestsFromName('test_designs')
    design_result = unittest.TextTestRunner(verbosity=2).run(design_suite)
    
    return config_result.wasSuccessful() and design_result.wasSuccessful()

def run_api_tests():
    """Run API tests"""
    print("=" * 60)
    print("Running API tests...")
    print("=" * 60)
    
    # Check if servers are running
    try:
        import requests
        response = requests.get("http://localhost:13333/health", timeout=2)
        if response.status_code != 200:
            print(" MCP servers not running, skipping API tests")
            return True
    except:
        print(" MCP servers not running, skipping API tests")
        return True
    
    api_suite = unittest.TestLoader().loadTestsFromName('test_api_endpoints')
    api_result = unittest.TextTestRunner(verbosity=2).run(api_suite)
    
    return api_result.wasSuccessful()

def run_integration_tests():
    """Run integration tests"""
    print("=" * 60)
    print("Running integration tests...")
    print("=" * 60)
    
    # Check if servers are running
    try:
        import requests
        response = requests.get("http://localhost:13333/health", timeout=2)
        if response.status_code != 200:
            print(" MCP servers not running, skipping integration tests")
            return True
    except:
        print(" MCP servers not running, skipping integration tests")
        return True
    
    integration_suite = unittest.TestLoader().loadTestsFromName('test_integration')
    integration_result = unittest.TextTestRunner(verbosity=2).run(integration_suite)
    
    return integration_result.wasSuccessful()

def run_agent_tests():
    """Run Agent client tests"""
    print("=" * 60)
    print("Running Agent client tests...")
    print("=" * 60)
    
    # Check if Agent client is running
    try:
        import requests
        response = requests.get("http://localhost:8000/docs", timeout=2)
        if response.status_code != 200:
            print(" MCP Agent client not running, skipping Agent tests")
            return True
    except:
        print(" MCP Agent client not running, skipping Agent tests")
        return True
    
    agent_suite = unittest.TestLoader().loadTestsFromName('test_mcp_agent_client')
    agent_result = unittest.TextTestRunner(verbosity=2).run(agent_suite)
    
    return agent_result.wasSuccessful()

def run_specific_test(test_name):
    """Run specific test"""
    print(f"=" * 60)
    print(f"Running specific test: {test_name}")
    print(f"=" * 60)
    
    test_suite = unittest.TestLoader().loadTestsFromName(test_name)
    test_result = unittest.TextTestRunner(verbosity=2).run(test_suite)
    
    return test_result.wasSuccessful()

def main():
    """Main function"""
    print("MCP-EDA-Server Test Suite")
    print("=" * 60)
    
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
    
    # Parse command line arguments
    if len(sys.argv) > 1:
        test_type = sys.argv[1].lower()
        
        if test_type == "unit":
            success = run_unit_tests()
        elif test_type == "api":
            success = run_api_tests()
        elif test_type == "integration":
            success = run_integration_tests()
        elif test_type == "agent":
            success = run_agent_tests()
        elif test_type == "all":
            success = (run_unit_tests() and 
                      run_api_tests() and 
                      run_integration_tests() and 
                      run_agent_tests())
        else:
            # Try to run specific test
            success = run_specific_test(test_type)
    else:
        # Default: run all tests
        print("Running all tests...")
        success = (run_unit_tests() and 
                  run_api_tests() and 
                  run_integration_tests() and 
                  run_agent_tests())
    
    # Output results
    print("=" * 60)
    if success:
        print("All tests passed!")
        sys.exit(0)
    else:
        print("Some tests failed!")
        sys.exit(1)

if __name__ == "__main__":
    main() 