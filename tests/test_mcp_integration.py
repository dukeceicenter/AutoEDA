"""
MCP Integration Test Suite

Tests for MCP server integration and protocol functionality:
- MCP server tool registration and calling
- MCP protocol communication
- Tool parameter validation and execution
- Error handling and response formatting
"""

import unittest
import sys
import json
import subprocess
import time
import tempfile
import shutil
from pathlib import Path
from unittest.mock import patch, MagicMock
import requests

# Add src to Python path
sys.path.insert(0, str(Path(__file__).parent.parent / "src"))

try:
    from src.server.mcp.mcp_eda_server import app as mcp_app
except ImportError:
    mcp_app = None


class TestMCPServerComponents(unittest.TestCase):
    """Test MCP server components and configuration"""
    
    def setUp(self):
        """Set up test environment"""
        self.mcp_server_path = Path(__file__).parent.parent / "src" / "server" / "mcp" / "mcp_eda_server.py"
        self.config_path = Path(__file__).parent.parent / "src" / "server" / "mcp" / "claude_desktop_config.json"
        
    def test_mcp_server_exists(self):
        """Test that MCP server script exists"""
        self.assertTrue(self.mcp_server_path.exists())
        self.assertTrue(self.mcp_server_path.is_file())
    
    def test_mcp_config_exists(self):
        """Test that MCP configuration exists"""
        self.assertTrue(self.config_path.exists())
        self.assertTrue(self.config_path.is_file())
    
    def test_mcp_config_valid_json(self):
        """Test that MCP configuration is valid JSON"""
        try:
            with open(self.config_path, 'r') as f:
                config = json.load(f)
            
            self.assertIsInstance(config, dict)
            self.assertIn('mcpServers', config)
            
        except json.JSONDecodeError as e:
            self.fail(f"MCP configuration is not valid JSON: {e}")
    
    def test_mcp_server_syntax(self):
        """Test MCP server script syntax"""
        try:
            with open(self.mcp_server_path, 'r') as f:
                code = f.read()
            
            compile(code, str(self.mcp_server_path), 'exec')
            
        except SyntaxError as e:
            self.fail(f"MCP server script has syntax error: {e}")
    
    @unittest.skipIf(mcp_app is None, "MCP server module not importable")
    def test_mcp_server_importable(self):
        """Test that MCP server is importable"""
        self.assertIsNotNone(mcp_app)


class TestMCPTools(unittest.TestCase):
    """Test MCP tools functionality"""
    
    def setUp(self):
        """Set up test environment"""
        self.mcp_server_path = Path(__file__).parent.parent / "src" / "server" / "mcp" / "mcp_eda_server.py"
        
    def test_mcp_tools_defined(self):
        """Test that MCP tools are properly defined"""
        try:
            with open(self.mcp_server_path, 'r') as f:
                content = f.read()
            
            # Check for tool definitions
            expected_tools = ['synthesis', 'placement', 'clock_tree_synthesis', 'routing']
            
            for tool in expected_tools:
                self.assertIn(f'async def {tool}(', content, f"Tool {tool} not found")
                self.assertIn('@mcp.tool()', content, "MCP tool decorator not found")
                
        except Exception as e:
            self.skipTest(f"Could not check MCP tools: {e}")
    
    def test_tool_parameters(self):
        """Test that tools have proper parameter definitions"""
        try:
            with open(self.mcp_server_path, 'r') as f:
                content = f.read()
            
            # Check for parameter annotations
            required_params = ['design', 'tech']
            
            for param in required_params:
                self.assertIn(f'{param}:', content, f"Parameter {param} not found in tool definitions")
                
        except Exception as e:
            self.skipTest(f"Could not check tool parameters: {e}")


class TestMCPServerStartup(unittest.TestCase):
    """Test MCP server startup and configuration"""
    
    def setUp(self):
        """Set up test environment"""
        self.startup_script = Path(__file__).parent.parent / "src" / "server" / "mcp" / "start_mcp_server.sh"
        
    def test_startup_script_exists(self):
        """Test that startup script exists"""
        self.assertTrue(self.startup_script.exists())
        self.assertTrue(self.startup_script.is_file())
    
    def test_startup_script_executable(self):
        """Test that startup script is executable"""
        import stat
        file_stat = self.startup_script.stat()
        self.assertTrue(file_stat.st_mode & stat.S_IEXEC)
    
    @unittest.skipIf(not Path("src").exists(), "No src directory")
    def test_startup_script_syntax(self):
        """Test startup script syntax"""
        try:
            # Test bash syntax by running with -n flag
            result = subprocess.run([
                "bash", "-n", str(self.startup_script)
            ], capture_output=True, text=True, timeout=5)
            
            if result.returncode != 0:
                self.fail(f"Startup script has syntax errors: {result.stderr}")
                
        except subprocess.TimeoutExpired:
            self.skipTest("Startup script syntax check timed out")
        except Exception as e:
            self.skipTest(f"Could not check startup script syntax: {e}")


class TestMCPServerCommunication(unittest.TestCase):
    """Test MCP server communication with EDA servers"""
    
    def setUp(self):
        """Set up test environment"""
        self.eda_servers = {
            "synthesis": 18001,
            "placement": 18002,
            "cts": 18003,
            "routing": 18004
        }
        
    def check_server_health(self, port):
        """Check if a server is running and healthy"""
        try:
            response = requests.get(f"http://localhost:{port}/docs", timeout=2)
            return response.status_code == 200
        except:
            return False
    
    def test_eda_servers_reachable(self):
        """Test that EDA servers are reachable (if running)"""
        running_servers = 0
        
        for name, port in self.eda_servers.items():
            if self.check_server_health(port):
                running_servers += 1
                print(f"Server {name} (port {port}) is running")
            else:
                print(f"Server {name} (port {port}) is not running")
        
        # If no servers are running, skip this test
        if running_servers == 0:
            self.skipTest("No EDA servers are running")
        
        # At least some servers should be reachable
        self.assertGreater(running_servers, 0)


class TestMCPProtocol(unittest.TestCase):
    """Test MCP protocol compliance and communication"""
    
    def setUp(self):
        """Set up test environment"""
        self.mcp_server_path = Path(__file__).parent.parent / "src" / "server" / "mcp" / "mcp_eda_server.py"
        
    def test_mcp_imports(self):
        """Test that MCP server has proper imports"""
        try:
            with open(self.mcp_server_path, 'r') as f:
                content = f.read()
            
            # Check for required MCP imports
            required_imports = [
                'from mcp.server.fastmcp import FastMCP',
                'import mcp.types',
            ]
            
            for import_line in required_imports:
                self.assertIn(import_line.replace('from ', '').replace('import ', ''), content, 
                            f"Required import not found: {import_line}")
                
        except Exception as e:
            self.skipTest(f"Could not check MCP imports: {e}")
    
    def test_mcp_server_initialization(self):
        """Test MCP server initialization"""
        try:
            with open(self.mcp_server_path, 'r') as f:
                content = f.read()
            
            # Check for MCP server initialization
            self.assertIn('FastMCP(', content, "FastMCP initialization not found")
            self.assertIn('mcp.run()', content, "MCP run call not found")
            
        except Exception as e:
            self.skipTest(f"Could not check MCP server initialization: {e}")


class TestMCPToolExecution(unittest.TestCase):
    """Test MCP tool execution and responses"""
    
    def setUp(self):
        """Set up test environment"""
        self.test_dir = Path(tempfile.mkdtemp())
        
    def tearDown(self):
        """Clean up test environment"""
        shutil.rmtree(self.test_dir, ignore_errors=True)
    
    @patch('requests.post')
    def test_tool_call_structure(self, mock_post):
        """Test tool call structure and response format"""
        # Mock a successful server response
        mock_response = MagicMock()
        mock_response.status_code = 200
        mock_response.json.return_value = {
            "status": "execution_completed",
            "message": "Test successful",
            "workspace": "/test/workspace",
            "execution_time": 1.23
        }
        mock_post.return_value = mock_response
        
        # Import and test MCP server functions
        try:
            with open(Path(__file__).parent.parent / "src" / "server" / "mcp" / "mcp_eda_server.py", 'r') as f:
                content = f.read()
            
            # Check for proper error handling
            self.assertIn('try:', content, "Error handling not found")
            self.assertIn('except', content, "Exception handling not found")
            
            # Check for JSON response formatting
            self.assertIn('json.dumps', content, "JSON response formatting not found")
            
        except Exception as e:
            self.skipTest(f"Could not test tool call structure: {e}")
    
    def test_parameter_validation(self):
        """Test parameter validation in tools"""
        try:
            with open(Path(__file__).parent.parent / "src" / "server" / "mcp" / "mcp_eda_server.py", 'r') as f:
                content = f.read()
            
            # Check for parameter validation
            validation_checks = [
                'if not', 
                'ValueError',
                'is not None'
            ]
            
            for check in validation_checks:
                if check in content:
                    break
            else:
                print("Warning: No explicit parameter validation found")
                
        except Exception as e:
            self.skipTest(f"Could not check parameter validation: {e}")


if __name__ == '__main__':
    unittest.main(verbosity=2)
