"""
MCP Agent Client Tests - Test the functionality of the Agent client
"""
import unittest
import requests
import json
import time
import subprocess
import os
from pathlib import Path

class TestMCPAgentClient(unittest.TestCase):
    """Test the functionality of MCP Agent client"""
    
    @classmethod
    def setUpClass(cls):
        """Set up test environment"""
        cls.base_url = "http://localhost:8000"
        
        # Check if Agent client is running
        cls.agent_running = cls.check_agent_running()
        
        if not cls.agent_running:
            print("Starting MCP Agent client...")
            cls.start_agent()
            time.sleep(3)
    
    @classmethod
    def tearDownClass(cls):
        """Clean up test environment"""
        if not cls.agent_running:
            print("Stopping test Agent client...")
            cls.stop_agent()
    
    @classmethod
    def check_agent_running(cls):
        """Check if Agent client is running"""
        try:
            response = requests.get(f"{cls.base_url}/docs", timeout=2)
            return response.status_code == 200
        except:
            return False
    
    @classmethod
    def start_agent(cls):
        """Start MCP Agent client"""
        try:
            # Start Agent client in background
            subprocess.Popen(["python", "mcp_agent_client.py"], 
                           stdout=subprocess.DEVNULL, 
                           stderr=subprocess.DEVNULL)
        except Exception as e:
            print(f"Failed to start Agent client: {e}")
    
    @classmethod
    def stop_agent(cls):
        """Stop MCP Agent client"""
        try:
            subprocess.run(["pkill", "-f", "mcp_agent_client.py"], check=True)
        except subprocess.CalledProcessError:
            pass
    
    def test_agent_health(self):
        """Test Agent client health status"""
        try:
            response = requests.get(f"{self.base_url}/docs", timeout=5)
            self.assertEqual(response.status_code, 200, 
                           "Agent client health check failed")
            print("✓ Agent client is running normally")
        except requests.exceptions.RequestException as e:
            self.fail(f"Agent client cannot connect: {e}")
    
    def test_synthesis_setup_request(self):
        """Test synthesis setup request"""
        url = f"{self.base_url}/agent"
        payload = {
            "user_query": "Please execute synthesis setup for b14 design"
        }
        
        try:
            response = requests.post(url, json=payload, timeout=30)
            self.assertEqual(response.status_code, 200, 
                           f"Synthesis setup request failed: {response.text}")
            
            result = response.json()
            self.assertIn("tool_called", result)
            self.assertIn("tool_input", result)
            self.assertIn("tool_output", result)
            
            self.assertEqual(result["tool_called"], "synth_setup")
            self.assertIn("b14", result["tool_input"]["design"])
            
            print(f"✓ Synthesis setup request test passed: {result['tool_called']}")
            
        except requests.exceptions.RequestException as e:
            self.fail(f"Synthesis setup request failed: {e}")
    
    def test_synthesis_compile_request(self):
        """Test synthesis compile request"""
        url = f"{self.base_url}/agent"
        payload = {
            "user_query": "Please execute synthesis compile for b14 design"
        }
        
        try:
            response = requests.post(url, json=payload, timeout=60)
            self.assertEqual(response.status_code, 200, 
                           f"Synthesis compile request failed: {response.text}")
            
            result = response.json()
            self.assertEqual(result["tool_called"], "synth_compile")
            self.assertIn("b14", result["tool_input"]["design"])
            
            print(f"✓ Synthesis compile request test passed: {result['tool_called']}")
            
        except requests.exceptions.RequestException as e:
            self.fail(f"Synthesis compile request failed: {e}")
    
    def test_floorplan_request(self):
        """Test floorplan request"""
        url = f"{self.base_url}/agent"
        payload = {
            "user_query": "Please execute floorplan for b14 design, top module is b14"
        }
        
        try:
            response = requests.post(url, json=payload, timeout=60)
            self.assertEqual(response.status_code, 200, 
                           f"Floorplan request failed: {response.text}")
            
            result = response.json()
            self.assertEqual(result["tool_called"], "floorplan")
            self.assertIn("b14", result["tool_input"]["design"])
            self.assertIn("b14", result["tool_input"]["top_module"])
            
            print(f"✓ Floorplan request test passed: {result['tool_called']}")
            
        except requests.exceptions.RequestException as e:
            self.fail(f"Floorplan request failed: {e}")
    
    def test_complete_workflow_request(self):
        """Test complete workflow request"""
        url = f"{self.base_url}/agent"
        payload = {
            "user_query": "Please execute complete physical implementation flow for b14 design, including floorplan, power plan, placement, clock tree synthesis, routing and save"
        }
        
        try:
            response = requests.post(url, json=payload, timeout=120)
            self.assertEqual(response.status_code, 200, 
                           f"Complete workflow request failed: {response.text}")
            
            result = response.json()
            # Should return the last tool (usually save)
            self.assertIn(result["tool_called"], ["save", "route"])
            self.assertIn("b14", result["tool_input"]["design"])
            
            print(f"✓ Complete workflow request test passed: {result['tool_called']}")
            
        except requests.exceptions.RequestException as e:
            self.fail(f"Complete workflow request failed: {e}")
    
    def test_invalid_requests(self):
        """Test handling of invalid requests"""
        url = f"{self.base_url}/agent"
        invalid_requests = [
            {"user_query": ""},  # Empty request
            {"user_query": "Please execute a non-existent tool"},  # Invalid tool
            {"user_query": "Please execute synthesis for non-existent design"},  # Non-existent design
            {"user_query": "Please execute synthesis without specifying design name"},  # Missing design name
        ]
        
        for i, payload in enumerate(invalid_requests):
            try:
                response = requests.post(url, json=payload, timeout=10)
                # Should return error status code
                self.assertNotEqual(response.status_code, 200, 
                                  f"Invalid request {i+1} should return error: {payload}")
                print(f"✓ Invalid request test {i+1} passed")
                
            except requests.exceptions.RequestException as e:
                print(f"Request exception (expected): {e}")
    
    def test_natural_language_processing(self):
        """Test natural language processing capabilities"""
        url = f"{self.base_url}/agent"
        test_cases = [
            {
                "query": "I want to perform synthesis setup for leon2 processor",
                "expected_tool": "synth_setup",
                "expected_design": "leon2"
            },
            {
                "query": "Please compile b14 design",
                "expected_tool": "synth_compile", 
                "expected_design": "b14"
            },
            {
                "query": "Do floorplan for leon2mp module",
                "expected_tool": "floorplan",
                "expected_design": "leon2",
                "expected_module": "leon2mp"
            }
        ]
        
        for i, test_case in enumerate(test_cases):
            payload = {"user_query": test_case["query"]}
            
            try:
                response = requests.post(url, json=payload, timeout=30)
                if response.status_code == 200:
                    result = response.json()
                    
                    self.assertEqual(result["tool_called"], test_case["expected_tool"],
                                   f"Test case {i+1} tool selection error")
                    self.assertIn(test_case["expected_design"], result["tool_input"]["design"],
                                f"Test case {i+1} design name recognition error")
                    
                    if "expected_module" in test_case:
                        self.assertIn(test_case["expected_module"], result["tool_input"]["top_module"],
                                    f"Test case {i+1} module name recognition error")
                    
                    print(f"✓ Natural language processing test {i+1} passed: {test_case['query']}")
                    
            except requests.exceptions.RequestException as e:
                print(f"Natural language processing test {i+1} exception: {e}")
    
    def test_response_format(self):
        """Test response format"""
        url = f"{self.base_url}/agent"
        payload = {
            "user_query": "Please execute synthesis setup for b14 design"
        }
        
        try:
            response = requests.post(url, json=payload, timeout=30)
            if response.status_code == 200:
                result = response.json()
                
                # Check response format
                self.assertIsInstance(result, dict, "Response should be dictionary format")
                self.assertIn("tool_called", result, "Response should contain tool_called field")
                self.assertIn("tool_input", result, "Response should contain tool_input field")
                self.assertIn("tool_output", result, "Response should contain tool_output field")
                
                # Check field types
                self.assertIsInstance(result["tool_called"], str, "tool_called should be string")
                self.assertIsInstance(result["tool_input"], dict, "tool_input should be dictionary")
                self.assertIsInstance(result["tool_output"], dict, "tool_output should be dictionary")
                
                print("✓ Agent response format test passed")
                
        except requests.exceptions.RequestException as e:
            self.fail(f"Agent response format test failed: {e}")

if __name__ == '__main__':
    unittest.main() 