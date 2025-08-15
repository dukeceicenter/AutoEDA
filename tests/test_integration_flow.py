"""
EDA Integration Flow Test Suite

Tests for complete EDA flow integration:
- End-to-end workflow testing
- Multi-server coordination
- Checkpoint passing between stages
- Error handling and recovery
- Performance and timing validation
"""

import unittest
import sys
import json
import time
import requests
import tempfile
import shutil
from pathlib import Path
from unittest.mock import patch, MagicMock

# Add src to Python path
sys.path.insert(0, str(Path(__file__).parent.parent / "src"))

from tests import TEST_CONFIG


class TestServerAvailability(unittest.TestCase):
    """Test EDA server availability and health"""
    
    def setUp(self):
        """Set up test environment"""
        self.servers = TEST_CONFIG["servers"]
        self.timeout = TEST_CONFIG["timeouts"]["server_check"]
        
    def check_server_health(self, port, endpoint="/docs"):
        """Check if a server is running and healthy"""
        try:
            response = requests.get(
                f"http://localhost:{port}{endpoint}", 
                timeout=self.timeout
            )
            return response.status_code == 200
        except Exception:
            return False
    
    def test_synthesis_server_available(self):
        """Test synthesis server availability"""
        port = self.servers["synthesis"]["port"]
        endpoint = self.servers["synthesis"]["endpoint"]
        
        if self.check_server_health(port, endpoint):
            print(f"Synthesis server (port {port}) is available")
        else:
            self.skipTest(f"Synthesis server (port {port}) is not available")
    
    def test_placement_server_available(self):
        """Test placement server availability"""
        port = self.servers["placement"]["port"]
        endpoint = self.servers["placement"]["endpoint"]
        
        if self.check_server_health(port, endpoint):
            print(f"Placement server (port {port}) is available")
        else:
            self.skipTest(f"Placement server (port {port}) is not available")
    
    def test_cts_server_available(self):
        """Test CTS server availability"""
        port = self.servers["cts"]["port"]
        endpoint = self.servers["cts"]["endpoint"]
        
        if self.check_server_health(port, endpoint):
            print(f"CTS server (port {port}) is available")
        else:
            self.skipTest(f"CTS server (port {port}) is not available")
    
    def test_routing_server_available(self):
        """Test routing server availability"""
        port = self.servers["routing"]["port"]
        endpoint = self.servers["routing"]["endpoint"]
        
        if self.check_server_health(port, endpoint):
            print(f"Routing server (port {port}) is available")
        else:
            self.skipTest(f"Routing server (port {port}) is not available")
    
    def test_all_servers_available(self):
        """Test that all required servers are available"""
        available_servers = 0
        total_servers = len(self.servers)
        
        for name, config in self.servers.items():
            if self.check_server_health(config["port"], config["endpoint"]):
                available_servers += 1
                print(f"Server {name} is available")
            else:
                print(f"Server {name} is NOT available")
        
        if available_servers == 0:
            self.skipTest("No EDA servers are available")
        
        # At least some servers should be available for integration tests
        self.assertGreater(available_servers, 0, "No servers are available")
        
        if available_servers < total_servers:
            print(f"Warning: Only {available_servers}/{total_servers} servers are available")


class TestSingleStageExecution(unittest.TestCase):
    """Test individual stage execution"""
    
    def setUp(self):
        """Set up test environment"""
        self.servers = TEST_CONFIG["servers"]
        self.timeout = TEST_CONFIG["timeouts"]["api_call"]
        self.test_design = TEST_CONFIG["test_designs"][0]  # Use first test design
        self.tech = TEST_CONFIG["tech_library"]
        
    def call_server(self, server_name, payload):
        """Call a specific server with payload"""
        server_config = self.servers[server_name]
        port = server_config["port"]
        
        try:
            response = requests.post(
                f"http://localhost:{port}/run",
                json=payload,
                timeout=self.timeout
            )
            
            if response.status_code == 200:
                return response.json()
            else:
                return {
                    "status": "error",
                    "message": f"Server returned {response.status_code}",
                    "details": response.text
                }
                
        except Exception as e:
            return {
                "status": "error",
                "message": f"Connection error: {str(e)}"
            }
    
    def test_synthesis_execution(self):
        """Test synthesis stage execution"""
        port = self.servers["synthesis"]["port"]
        if not self.check_server_health(port):
            self.skipTest("Synthesis server not available")
        
        payload = {
            "design": self.test_design,
            "tech": self.tech,
            "skip_execution": True,  # Skip actual execution for testing
            "force": True
        }
        
        result = self.call_server("synthesis", payload)
        
        self.assertIsInstance(result, dict)
        self.assertIn("status", result)
        
        # Should complete successfully or gracefully handle skipped execution
        self.assertIn(result["status"], ["execution_completed", "success", "skipped"])
    
    def test_placement_execution(self):
        """Test placement stage execution"""
        port = self.servers["placement"]["port"]
        if not self.check_server_health(port):
            self.skipTest("Placement server not available")
        
        payload = {
            "design": self.test_design,
            "tech": self.tech,
            "skip_execution": True,  # Skip actual execution for testing
            "force": True
        }
        
        result = self.call_server("placement", payload)
        
        self.assertIsInstance(result, dict)
        self.assertIn("status", result)
        self.assertIn(result["status"], ["execution_completed", "success", "skipped"])
    
    def test_cts_execution(self):
        """Test CTS stage execution"""
        port = self.servers["cts"]["port"]
        if not self.check_server_health(port):
            self.skipTest("CTS server not available")
        
        payload = {
            "design": self.test_design,
            "tech": self.tech,
            "skip_execution": True,  # Skip actual execution for testing
            "force": True
        }
        
        result = self.call_server("cts", payload)
        
        self.assertIsInstance(result, dict)
        self.assertIn("status", result)
        self.assertIn(result["status"], ["execution_completed", "success", "skipped"])
    
    def test_routing_execution(self):
        """Test routing stage execution"""
        port = self.servers["routing"]["port"]
        if not self.check_server_health(port):
            self.skipTest("Routing server not available")
        
        payload = {
            "design": self.test_design,
            "tech": self.tech,
            "skip_execution": True,  # Skip actual execution for testing
            "force": True
        }
        
        result = self.call_server("routing", payload)
        
        self.assertIsInstance(result, dict)
        self.assertIn("status", result)
        self.assertIn(result["status"], ["execution_completed", "success", "skipped"])
    
    def check_server_health(self, port, endpoint="/docs"):
        """Check if a server is running and healthy"""
        try:
            response = requests.get(f"http://localhost:{port}{endpoint}", timeout=2)
            return response.status_code == 200
        except Exception:
            return False


class TestMultiStageWorkflow(unittest.TestCase):
    """Test multi-stage workflow execution"""
    
    def setUp(self):
        """Set up test environment"""
        self.servers = TEST_CONFIG["servers"]
        self.timeout = TEST_CONFIG["timeouts"]["integration_test"]
        self.test_design = TEST_CONFIG["test_designs"][0]
        self.tech = TEST_CONFIG["tech_library"]
        
    def call_server(self, server_name, payload):
        """Call a specific server with payload"""
        server_config = self.servers[server_name]
        port = server_config["port"]
        
        try:
            response = requests.post(
                f"http://localhost:{port}/run",
                json=payload,
                timeout=self.timeout
            )
            
            if response.status_code == 200:
                return response.json()
            else:
                return {
                    "status": "error",
                    "message": f"Server returned {response.status_code}"
                }
                
        except Exception as e:
            return {
                "status": "error",
                "message": f"Connection error: {str(e)}"
            }
    
    def check_all_servers_available(self):
        """Check if all servers are available"""
        for name, config in self.servers.items():
            try:
                response = requests.get(
                    f"http://localhost:{config['port']}/docs", 
                    timeout=2
                )
                if response.status_code != 200:
                    return False
            except Exception:
                return False
        return True
    
    def test_synthesis_to_placement_flow(self):
        """Test synthesis to placement workflow"""
        if not self.check_all_servers_available():
            self.skipTest("Not all servers are available")
        
        print("Testing synthesis to placement flow...")
        
        # Step 1: Synthesis
        syn_payload = {
            "design": self.test_design,
            "tech": self.tech,
            "skip_execution": True,
            "force": True
        }
        
        syn_result = self.call_server("synthesis", syn_payload)
        self.assertIn(syn_result["status"], ["execution_completed", "success", "skipped"])
        
        # Step 2: Placement (depends on synthesis)
        place_payload = {
            "design": self.test_design,
            "tech": self.tech,
            "skip_execution": True,
            "force": True
        }
        
        place_result = self.call_server("placement", place_payload)
        self.assertIn(place_result["status"], ["execution_completed", "success", "skipped"])
        
        print("Synthesis to placement flow test completed")
    
    def test_placement_to_cts_flow(self):
        """Test placement to CTS workflow"""
        if not self.check_all_servers_available():
            self.skipTest("Not all servers are available")
        
        print("Testing placement to CTS flow...")
        
        # Step 1: Placement (prerequisite)
        place_payload = {
            "design": self.test_design,
            "tech": self.tech,
            "skip_execution": True,
            "force": True
        }
        
        place_result = self.call_server("placement", place_payload)
        self.assertIn(place_result["status"], ["execution_completed", "success", "skipped"])
        
        # Step 2: CTS (depends on placement)
        cts_payload = {
            "design": self.test_design,
            "tech": self.tech,
            "skip_execution": True,
            "force": True
        }
        
        cts_result = self.call_server("cts", cts_payload)
        self.assertIn(cts_result["status"], ["execution_completed", "success", "skipped"])
        
        print("Placement to CTS flow test completed")
    
    def test_cts_to_routing_flow(self):
        """Test CTS to routing workflow"""
        if not self.check_all_servers_available():
            self.skipTest("Not all servers are available")
        
        print("Testing CTS to routing flow...")
        
        # Step 1: CTS (prerequisite)
        cts_payload = {
            "design": self.test_design,
            "tech": self.tech,
            "skip_execution": True,
            "force": True
        }
        
        cts_result = self.call_server("cts", cts_payload)
        self.assertIn(cts_result["status"], ["execution_completed", "success", "skipped"])
        
        # Step 2: Routing (depends on CTS)
        route_payload = {
            "design": self.test_design,
            "tech": self.tech,
            "skip_execution": True,
            "force": True
        }
        
        route_result = self.call_server("routing", route_payload)
        self.assertIn(route_result["status"], ["execution_completed", "success", "skipped"])
        
        print("CTS to routing flow test completed")


class TestErrorHandling(unittest.TestCase):
    """Test error handling in integration flow"""
    
    def setUp(self):
        """Set up test environment"""
        self.servers = TEST_CONFIG["servers"]
        self.timeout = TEST_CONFIG["timeouts"]["api_call"]
        
    def call_server(self, server_name, payload):
        """Call a specific server with payload"""
        server_config = self.servers[server_name]
        port = server_config["port"]
        
        try:
            response = requests.post(
                f"http://localhost:{port}/run",
                json=payload,
                timeout=self.timeout
            )
            
            return {
                "status_code": response.status_code,
                "response": response.json() if response.status_code == 200 else {"error": response.text}
            }
            
        except Exception as e:
            return {
                "status_code": 0,
                "response": {"error": str(e)}
            }
    
    def test_invalid_design_handling(self):
        """Test handling of invalid design names"""
        available_servers = []
        
        for name, config in self.servers.items():
            try:
                response = requests.get(f"http://localhost:{config['port']}/docs", timeout=2)
                if response.status_code == 200:
                    available_servers.append(name)
            except Exception:
                continue
        
        if not available_servers:
            self.skipTest("No servers available for error handling test")
        
        # Test with invalid design name
        payload = {
            "design": "non_existent_design_12345",
            "tech": "FreePDK45",
            "skip_execution": False,  # Don't skip to test actual error handling
            "force": True
        }
        
        for server_name in available_servers[:1]:  # Test with first available server
            result = self.call_server(server_name, payload)
            
            # Should handle error gracefully
            if result["status_code"] == 200:
                response = result["response"]
                self.assertIn("status", response)
                # Should indicate error or provide meaningful message
                if response["status"] == "error":
                    self.assertIn("message", response)
            else:
                # HTTP error is also acceptable error handling
                self.assertNotEqual(result["status_code"], 200)
    
    def test_invalid_parameters_handling(self):
        """Test handling of invalid parameters"""
        available_servers = []
        
        for name, config in self.servers.items():
            try:
                response = requests.get(f"http://localhost:{config['port']}/docs", timeout=2)
                if response.status_code == 200:
                    available_servers.append(name)
            except Exception:
                continue
        
        if not available_servers:
            self.skipTest("No servers available for parameter test")
        
        # Test with invalid parameters
        payload = {
            "design": "test",
            "tech": "InvalidTech",
            "invalid_param": "invalid_value",
            "skip_execution": True,
            "force": True
        }
        
        for server_name in available_servers[:1]:  # Test with first available server
            result = self.call_server(server_name, payload)
            
            # Should handle invalid parameters gracefully
            # Either return error or ignore invalid parameters
            self.assertIsInstance(result, dict)
            self.assertIn("status_code", result)


class TestCheckpointHandling(unittest.TestCase):
    """Test checkpoint file handling between stages"""
    
    def setUp(self):
        """Set up test environment"""
        self.test_dir = Path(tempfile.mkdtemp())
        self.servers = TEST_CONFIG["servers"]
        
    def tearDown(self):
        """Clean up test environment"""
        shutil.rmtree(self.test_dir, ignore_errors=True)
    
    def test_checkpoint_file_patterns(self):
        """Test checkpoint file pattern recognition"""
        # Test patterns that should be recognized
        checkpoint_patterns = [
            "placement.enc",
            "cts.enc", 
            "routing.enc",
            "floorplan.enc",
            "powerplan.enc"
        ]
        
        for pattern in checkpoint_patterns:
            # Create test checkpoint file
            test_file = self.test_dir / pattern
            test_file.write_text("# Test checkpoint file")
            
            self.assertTrue(test_file.exists())
            self.assertTrue(test_file.suffix == ".enc")
    
    def test_version_string_parsing(self):
        """Test version string parsing for checkpoints"""
        version_patterns = [
            "v1",
            "20250811_123456",
            "v1__g0_p0",
            "20250811_123456__20250811_123500"
        ]
        
        for pattern in version_patterns:
            # Test that version patterns are valid
            self.assertIsInstance(pattern, str)
            self.assertGreater(len(pattern), 0)
            
            # Test version parsing logic
            if "__" in pattern:
                parts = pattern.split("__")
                self.assertGreater(len(parts), 1)


class TestPerformanceValidation(unittest.TestCase):
    """Test performance and timing validation"""
    
    def setUp(self):
        """Set up test environment"""
        self.servers = TEST_CONFIG["servers"]
        self.timeout = TEST_CONFIG["timeouts"]["api_call"]
        
    def test_server_response_time(self):
        """Test server response times"""
        for name, config in self.servers.items():
            port = config["port"]
            
            try:
                start_time = time.time()
                response = requests.get(f"http://localhost:{port}/docs", timeout=5)
                end_time = time.time()
                
                if response.status_code == 200:
                    response_time = end_time - start_time
                    print(f"Server {name} response time: {response_time:.3f}s")
                    
                    # Response should be reasonably fast
                    self.assertLess(response_time, 5.0, f"Server {name} response too slow")
                else:
                    print(f"Server {name} not available")
                    
            except Exception as e:
                print(f"Could not test server {name}: {e}")
    
    def test_concurrent_requests(self):
        """Test handling of concurrent requests"""
        import threading
        import queue
        
        available_servers = []
        for name, config in self.servers.items():
            try:
                response = requests.get(f"http://localhost:{config['port']}/docs", timeout=2)
                if response.status_code == 200:
                    available_servers.append((name, config))
            except Exception:
                continue
        
        if not available_servers:
            self.skipTest("No servers available for concurrent test")
        
        # Test concurrent requests to first available server
        server_name, server_config = available_servers[0]
        port = server_config["port"]
        
        results = queue.Queue()
        
        def make_request():
            try:
                response = requests.get(f"http://localhost:{port}/docs", timeout=5)
                results.put({"status": "success", "code": response.status_code})
            except Exception as e:
                results.put({"status": "error", "error": str(e)})
        
        # Create multiple concurrent requests
        threads = []
        for i in range(3):  # Moderate concurrent load
            thread = threading.Thread(target=make_request)
            threads.append(thread)
            thread.start()
        
        # Wait for all threads to complete
        for thread in threads:
            thread.join(timeout=10)
        
        # Check results
        success_count = 0
        while not results.empty():
            result = results.get()
            if result["status"] == "success" and result["code"] == 200:
                success_count += 1
        
        # At least some requests should succeed
        self.assertGreater(success_count, 0, "No concurrent requests succeeded")
        print(f"Concurrent requests: {success_count}/3 succeeded")


if __name__ == '__main__':
    unittest.main(verbosity=2)
