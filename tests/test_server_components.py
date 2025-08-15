"""
Server Components Test Suite - Fixed Version

Tests for the individual server components adapted to work with existing APIs.
"""

import unittest
import sys
import tempfile
import shutil
from pathlib import Path

# Add project root and server directory to Python path
project_root = Path(__file__).parent.parent
sys.path.insert(0, str(project_root))
sys.path.insert(0, str(project_root / "src"))
sys.path.insert(0, str(project_root / "src" / "server"))

# Import servers
from synthesis_server import SynthesisServer
from placement_server import PlacementServer
from cts_server import CtsServer
from routing_server import RoutingServer


class TestSynthesisServer(unittest.TestCase):
    """Test the Synthesis Server functionality"""
    
    def setUp(self):
        """Set up test environment"""
        self.server = SynthesisServer()
    
    def test_server_initialization(self):
        """Test synthesis server initialization"""
        self.assertIsNotNone(self.server)
        self.assertTrue(hasattr(self.server, 'get_request_model'))
        self.assertTrue(hasattr(self.server, 'get_tcl_script_config'))
        
    def test_get_request_model(self):
        """Test synthesis request model"""
        model = self.server.get_request_model()
        
        # Should have required fields
        self.assertTrue(hasattr(model, '__annotations__'))
        annotations = model.__annotations__
        self.assertIn('design', annotations)
        
    def test_get_tcl_script_config(self):
        """Test synthesis TCL script configuration"""
        # Create a mock request object with all required fields
        class MockRequest:
            design = "test_design"
            tech = "FreePDK45"
            syn_version = "test_v1"
            force = True
            skip_execution = True
            
        mock_req = MockRequest()
        config = self.server.get_tcl_script_config(mock_req)
        
        self.assertIsInstance(config, dict)
        self.assertIn('script_paths', config)
        
        # Should point to synthesis scripts
        script_paths = config['script_paths']
        self.assertIsInstance(script_paths, list)
        self.assertGreater(len(script_paths), 0)


class TestPlacementServer(unittest.TestCase):
    """Test the Placement Server functionality"""
    
    def setUp(self):
        """Set up test environment"""
        self.server = PlacementServer()
    
    def test_server_initialization(self):
        """Test placement server initialization"""
        self.assertIsNotNone(self.server)
        self.assertTrue(hasattr(self.server, 'get_request_model'))
        self.assertTrue(hasattr(self.server, 'get_tcl_script_config'))
        
    def test_get_request_model(self):
        """Test placement request model"""
        model = self.server.get_request_model()
        
        # Should have required fields
        annotations = model.__annotations__
        self.assertIn('design', annotations)
        
    def test_get_tcl_script_config(self):
        """Test placement TCL script configuration"""
        # Create a mock request object with all required fields
        class MockRequest:
            design = "test_design"
            tech = "FreePDK45"
            syn_ver = "test_syn_v1"
            impl_ver = "test_impl_v1"
            force = True
            skip_execution = True
            
        mock_req = MockRequest()
        config = self.server.get_tcl_script_config(mock_req)
        
        self.assertIsInstance(config, dict)
        self.assertIn('script_paths', config)
        
        # Should point to placement scripts
        script_paths = config['script_paths']
        self.assertIsInstance(script_paths, list)
        self.assertGreater(len(script_paths), 0)


class TestCtsServer(unittest.TestCase):
    """Test the CTS Server functionality"""
    
    def setUp(self):
        """Set up test environment"""
        self.server = CtsServer()
    
    def test_server_initialization(self):
        """Test CTS server initialization"""
        self.assertIsNotNone(self.server)
        self.assertTrue(hasattr(self.server, 'get_request_model'))
        self.assertTrue(hasattr(self.server, 'get_tcl_script_config'))
        
    def test_get_request_model(self):
        """Test CTS request model"""
        model = self.server.get_request_model()
        
        # Should have required fields
        annotations = model.__annotations__
        self.assertIn('design', annotations)
        
    def test_get_tcl_script_config(self):
        """Test CTS TCL script configuration"""
        # Create a mock request object with all required fields
        class MockRequest:
            design = "test_design"
            tech = "FreePDK45"
            syn_ver = "test_syn_v1"
            impl_ver = "test_impl_v1"
            restore_enc = "placement.enc"
            force = True
            skip_execution = True
            
        mock_req = MockRequest()
        config = self.server.get_tcl_script_config(mock_req)
        
        self.assertIsInstance(config, dict)
        self.assertIn('script_paths', config)
        
        # Should point to CTS scripts
        script_paths = config['script_paths']
        self.assertIsInstance(script_paths, list)
        self.assertGreater(len(script_paths), 0)


class TestRoutingServer(unittest.TestCase):
    """Test the Routing Server functionality"""
    
    def setUp(self):
        """Set up test environment"""
        self.server = RoutingServer()
    
    def test_server_initialization(self):
        """Test routing server initialization"""
        self.assertIsNotNone(self.server)
        self.assertTrue(hasattr(self.server, 'get_request_model'))
        self.assertTrue(hasattr(self.server, 'get_tcl_script_config'))
        
    def test_get_request_model(self):
        """Test routing request model"""
        model = self.server.get_request_model()
        
        # Should have required fields
        annotations = model.__annotations__
        self.assertIn('design', annotations)
        
    def test_get_tcl_script_config(self):
        """Test routing TCL script configuration"""
        # Create a mock request object with all required fields
        class MockRequest:
            design = "test_design"
            tech = "FreePDK45"
            syn_ver = "test_syn_v1"
            impl_ver = "test_impl_v1"
            force = True
            skip_execution = True
            
        mock_req = MockRequest()
        config = self.server.get_tcl_script_config(mock_req)
        
        self.assertIsInstance(config, dict)
        self.assertIn('script_paths', config)
        
        # Should point to routing scripts
        script_paths = config['script_paths']
        self.assertIsInstance(script_paths, list)
        self.assertGreater(len(script_paths), 0)


class TestExecutorScript(unittest.TestCase):
    """Test the Executor script functionality"""
    
    def setUp(self):
        """Set up test environment"""
        self.executor_path = Path(__file__).parent.parent / "src" / "server" / "executor.py"
        
    def test_executor_exists(self):
        """Test that executor script exists"""
        self.assertTrue(self.executor_path.exists())
        self.assertTrue(self.executor_path.is_file())
    
    def test_executor_syntax(self):
        """Test executor script syntax"""
        try:
            with open(self.executor_path, 'r') as f:
                code = f.read()
            
            compile(code, str(self.executor_path), 'exec')
            
        except SyntaxError as e:
            self.fail(f"Executor script has syntax error: {e}")
        except Exception as e:
            self.skipTest(f"Could not check executor syntax: {e}")


class TestServerIntegration(unittest.TestCase):
    """Test server integration and communication"""
    
    def setUp(self):
        """Set up test environment"""
        self.servers = {
            "synthesis": SynthesisServer(),
            "placement": PlacementServer(),
            "cts": CtsServer(),
            "routing": RoutingServer()
        }
    
    def test_all_servers_can_be_instantiated(self):
        """Test that all servers can be instantiated"""
        for name, server in self.servers.items():
            with self.subTest(server=name):
                self.assertIsNotNone(server)
    
    def test_all_servers_have_required_methods(self):
        """Test that all servers have required methods"""
        required_methods = [
            'get_request_model',
            'get_tcl_script_config'
        ]
        
        for name, server in self.servers.items():
            with self.subTest(server=name):
                for method in required_methods:
                    self.assertTrue(hasattr(server, method))
                    self.assertTrue(callable(getattr(server, method)))
    
    def test_all_servers_have_request_models(self):
        """Test that all servers have valid request models"""
        for name, server in self.servers.items():
            with self.subTest(server=name):
                model = server.get_request_model()
                self.assertIsNotNone(model)
                self.assertTrue(hasattr(model, '__annotations__'))
                
                # All servers should have 'design' parameter
                annotations = model.__annotations__
                self.assertIn('design', annotations)


if __name__ == '__main__':
    unittest.main(verbosity=2)
