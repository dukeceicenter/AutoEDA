"""
API Endpoint Tests - Test the API interfaces of various microservices
"""
import unittest
import requests
import json
import time
import subprocess
import os
from pathlib import Path

class TestAPIEndpoints(unittest.TestCase):
    """Test the functionality of API endpoints"""
    
    @classmethod
    def setUpClass(cls):
        """Start test servers"""
        cls.base_url = "http://localhost"
        cls.ports = {
            "synth_setup": 13333,
            "synth_compile": 13334,
            "floorplan": 13335,
            "powerplan": 13336,
            "placement": 13337,
            "cts": 13338,
            "route": 13339,
            "save": 13440
        }
        
        # Check if servers are already running
        cls.servers_running = cls.check_servers_running()
        
        if not cls.servers_running:
            print("Starting MCP servers...")
            cls.start_servers()
            time.sleep(5)  # Wait for servers to start
    
    @classmethod
    def tearDownClass(cls):
        """Clean up test environment"""
        if not cls.servers_running:
            print("Stopping test servers...")
            cls.stop_servers()
    
    @classmethod
    def check_servers_running(cls):
        """Check if servers are already running"""
        try:
            # Check if one port is listening
            response = requests.get(f"{cls.base_url}:13333/health", timeout=2)
            return response.status_code == 200
        except:
            return False
    
    @classmethod
    def start_servers(cls):
        """Start MCP servers"""
        try:
            subprocess.run(["./restart_servers.sh"], check=True, capture_output=True)
        except subprocess.CalledProcessError as e:
            print(f"Failed to start servers: {e}")
    
    @classmethod
    def stop_servers(cls):
        """Stop MCP servers"""
        try:
            subprocess.run(["pkill", "-f", "uvicorn"], check=True)
        except subprocess.CalledProcessError:
            pass
    
    def test_server_health(self):
        """Test server health status"""
        for service, port in self.ports.items():
            try:
                response = requests.get(f"{self.base_url}:{port}/health", timeout=5)
                self.assertEqual(response.status_code, 200, 
                               f"Service {service} health check failed")
                print(f"✓ {service} service is normal")
            except requests.exceptions.RequestException as e:
                self.fail(f"Service {service} cannot connect: {e}")
    
    def test_synthesis_setup_endpoint(self):
        """Test synthesis setup endpoint"""
        url = f"{self.base_url}:{self.ports['synth_setup']}/setup/run"
        payload = {
            "design": "b14",
            "tech": "FreePDK45",
            "version_idx": 0,
            "force": True
        }
        
        try:
            response = requests.post(url, json=payload, timeout=30)
            self.assertEqual(response.status_code, 200, 
                           f"Synthesis setup failed: {response.text}")
            
            result = response.json()
            self.assertIn("status", result)
            print(f"✓ Synthesis setup test passed: {result.get('status')}")
            
        except requests.exceptions.RequestException as e:
            self.fail(f"Synthesis setup request failed: {e}")
    
    def test_synthesis_compile_endpoint(self):
        """Test synthesis compile endpoint"""
        url = f"{self.base_url}:{self.ports['synth_compile']}/compile/run"
        payload = {
            "design": "b14",
            "tech": "FreePDK45",
            "version_idx": 0,
            "force": True
        }
        
        try:
            response = requests.post(url, json=payload, timeout=60)
            self.assertEqual(response.status_code, 200, 
                           f"Synthesis compile failed: {response.text}")
            
            result = response.json()
            self.assertIn("status", result)
            print(f"✓ Synthesis compile test passed: {result.get('status')}")
            
        except requests.exceptions.RequestException as e:
            self.fail(f"Synthesis compile request failed: {e}")
    
    def test_floorplan_endpoint(self):
        """Test floorplan endpoint"""
        url = f"{self.base_url}:{self.ports['floorplan']}/floorplan/run"
        payload = {
            "design": "b14",
            "top_module": "b14",
            "tech": "FreePDK45",
            "syn_ver": "v0",
            "g_idx": 0,
            "p_idx": 0,
            "force": True
        }
        
        try:
            response = requests.post(url, json=payload, timeout=60)
            self.assertEqual(response.status_code, 200, 
                           f"Floorplan failed: {response.text}")
            
            result = response.json()
            self.assertIn("status", result)
            print(f"✓ Floorplan test passed: {result.get('status')}")
            
        except requests.exceptions.RequestException as e:
            self.fail(f"Floorplan request failed: {e}")
    
    def test_invalid_payload(self):
        """Test handling of invalid payloads"""
        url = f"{self.base_url}:{self.ports['synth_setup']}/setup/run"
        invalid_payloads = [
            {},  # Empty payload
            {"design": ""},  # Empty design name
            {"design": "nonexistent_design"},  # Non-existent design
            {"invalid_field": "value"}  # Invalid field
        ]
        
        for payload in invalid_payloads:
            try:
                response = requests.post(url, json=payload, timeout=10)
                # Should return error status code
                self.assertNotEqual(response.status_code, 200, 
                                  f"Invalid payload should return error: {payload}")
                print(f"✓ Invalid payload test passed: {payload}")
                
            except requests.exceptions.RequestException as e:
                print(f"Request exception (expected): {e}")
    
    def test_api_response_format(self):
        """Test API response format"""
        url = f"{self.base_url}:{self.ports['synth_setup']}/setup/run"
        payload = {
            "design": "b14",
            "tech": "FreePDK45",
            "version_idx": 0,
            "force": True
        }
        
        try:
            response = requests.post(url, json=payload, timeout=30)
            if response.status_code == 200:
                result = response.json()
                
                # Check response format
                self.assertIsInstance(result, dict, "Response should be dictionary format")
                self.assertIn("status", result, "Response should contain status field")
                self.assertIn("message", result, "Response should contain message field")
                
                print(f"✓ API response format test passed")
                
        except requests.exceptions.RequestException as e:
            self.fail(f"API response format test failed: {e}")

if __name__ == '__main__':
    unittest.main() 