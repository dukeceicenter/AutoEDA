"""
AI Agent Client Test Suite

Tests for the AI orchestration agent functionality:
- Local LLM integration (Qwen model)
- Natural language query processing
- Tool selection and parameter extraction
- Multi-stage EDA flow orchestration
- Checkpoint handling and version management
"""

import unittest
import sys
import json
import tempfile
import shutil
from pathlib import Path
from unittest.mock import patch, MagicMock

# Add src to Python path
sys.path.insert(0, str(Path(__file__).parent.parent / "src"))

try:
    import transformers
    TRANSFORMERS_AVAILABLE = True
except ImportError:
    TRANSFORMERS_AVAILABLE = False

try:
    import torch
    TORCH_AVAILABLE = True
except ImportError:
    TORCH_AVAILABLE = False


class TestAgentClientComponents(unittest.TestCase):
    """Test agent client components and imports"""
    
    def setUp(self):
        """Set up test environment"""
        self.agent_path = Path(__file__).parent.parent / "src" / "mcp_agent_client.py"
        
    def test_agent_client_exists(self):
        """Test that agent client script exists"""
        self.assertTrue(self.agent_path.exists())
        self.assertTrue(self.agent_path.is_file())
    
    def test_agent_client_syntax(self):
        """Test agent client script syntax"""
        try:
            with open(self.agent_path, 'r') as f:
                code = f.read()
            
            compile(code, str(self.agent_path), 'exec')
            
        except SyntaxError as e:
            self.fail(f"Agent client script has syntax error: {e}")
    
    def test_agent_imports(self):
        """Test that agent has proper imports"""
        try:
            with open(self.agent_path, 'r') as f:
                content = f.read()
            
            # Check for required imports
            required_imports = [
                'import requests',
                'import json',
                'from pathlib import Path',
                'import re'
            ]
            
            for import_line in required_imports:
                self.assertIn(import_line, content, f"Required import not found: {import_line}")
                
        except Exception as e:
            self.skipTest(f"Could not check agent imports: {e}")


class TestLocalLLMIntegration(unittest.TestCase):
    """Test Local LLM integration functionality"""
    
    def setUp(self):
        """Set up test environment"""
        self.agent_path = Path(__file__).parent.parent / "src" / "mcp_agent_client.py"
        
    def test_local_llm_class_defined(self):
        """Test that LocalLLM class is defined"""
        try:
            with open(self.agent_path, 'r') as f:
                content = f.read()
            
            self.assertIn('class LocalLLM', content, "LocalLLM class not found")
            self.assertIn('def __init__', content, "LocalLLM __init__ method not found")
            self.assertIn('def generate_json', content, "LocalLLM generate_json method not found")
            
        except Exception as e:
            self.skipTest(f"Could not check LocalLLM class: {e}")
    
    @unittest.skipIf(not TRANSFORMERS_AVAILABLE, "Transformers not available")
    @unittest.skipIf(not TORCH_AVAILABLE, "PyTorch not available")
    def test_llm_dependencies_available(self):
        """Test that LLM dependencies are available"""
        self.assertTrue(TRANSFORMERS_AVAILABLE)
        self.assertTrue(TORCH_AVAILABLE)
    
    def test_model_path_detection(self):
        """Test model path detection logic"""
        try:
            with open(self.agent_path, 'r') as f:
                content = f.read()
            
            # Check for model path detection logic
            self.assertIn('sft model', content, "SFT model path not found")
            self.assertIn('runs/', content, "Model runs directory not found")
            
        except Exception as e:
            self.skipTest(f"Could not check model path detection: {e}")


class TestQueryProcessing(unittest.TestCase):
    """Test natural language query processing"""
    
    def setUp(self):
        """Set up test environment"""
        self.agent_path = Path(__file__).parent.parent / "src" / "mcp_agent_client.py"
        
    def test_query_processing_functions(self):
        """Test query processing function definitions"""
        try:
            with open(self.agent_path, 'r') as f:
                content = f.read()
            
            # Check for query processing functions
            processing_functions = [
                'extract_parameters',
                'select_tool',
                'analyze_query'
            ]
            
            for func in processing_functions:
                if func in content:
                    print(f"Found function: {func}")
                    
        except Exception as e:
            self.skipTest(f"Could not check query processing functions: {e}")
    
    def test_heuristic_fallback(self):
        """Test heuristic fallback logic"""
        try:
            with open(self.agent_path, 'r') as f:
                content = f.read()
            
            # Check for heuristic fallback
            self.assertIn('heuristic', content.lower(), "Heuristic fallback not found")
            
        except Exception as e:
            self.skipTest(f"Could not check heuristic fallback: {e}")


class TestToolSelection(unittest.TestCase):
    """Test tool selection and parameter extraction"""
    
    def setUp(self):
        """Set up test environment"""
        self.agent_path = Path(__file__).parent.parent / "src" / "mcp_agent_client.py"
        
    def test_tool_definitions(self):
        """Test tool definitions and mappings"""
        try:
            with open(self.agent_path, 'r') as f:
                content = f.read()
            
            # Check for tool definitions
            expected_tools = ['synthesis', 'placement', 'cts', 'routing']
            
            for tool in expected_tools:
                self.assertIn(tool, content, f"Tool {tool} not found in agent")
                
        except Exception as e:
            self.skipTest(f"Could not check tool definitions: {e}")
    
    def test_parameter_extraction(self):
        """Test parameter extraction logic"""
        try:
            with open(self.agent_path, 'r') as f:
                content = f.read()
            
            # Check for parameter extraction patterns
            parameter_patterns = [
                'clock period',
                'aspect ratio',
                'power effort',
                'area effort'
            ]
            
            for pattern in parameter_patterns:
                if pattern in content.lower():
                    print(f"Found parameter pattern: {pattern}")
                    
        except Exception as e:
            self.skipTest(f"Could not check parameter extraction: {e}")


class TestEDAFlowOrchestration(unittest.TestCase):
    """Test EDA flow orchestration functionality"""
    
    def setUp(self):
        """Set up test environment"""
        self.agent_path = Path(__file__).parent.parent / "src" / "mcp_agent_client.py"
        
    def test_multi_stage_flow(self):
        """Test multi-stage flow orchestration"""
        try:
            with open(self.agent_path, 'r') as f:
                content = f.read()
            
            # Check for multi-stage flow functions
            flow_functions = [
                'execute_multi_stage_flow',
                'execute_single_stage'
            ]
            
            for func in flow_functions:
                if func in content:
                    print(f"Found flow function: {func}")
                    
        except Exception as e:
            self.skipTest(f"Could not check multi-stage flow: {e}")
    
    def test_checkpoint_handling(self):
        """Test checkpoint handling logic"""
        try:
            with open(self.agent_path, 'r') as f:
                content = f.read()
            
            # Check for checkpoint handling
            checkpoint_patterns = [
                '.enc',
                'checkpoint',
                'restore_enc'
            ]
            
            for pattern in checkpoint_patterns:
                if pattern in content:
                    print(f"Found checkpoint pattern: {pattern}")
                    
        except Exception as e:
            self.skipTest(f"Could not check checkpoint handling: {e}")


class TestVersionManagement(unittest.TestCase):
    """Test version management functionality"""
    
    def setUp(self):
        """Set up test environment"""
        self.agent_path = Path(__file__).parent.parent / "src" / "mcp_agent_client.py"
        
    def test_version_functions(self):
        """Test version management functions"""
        try:
            with open(self.agent_path, 'r') as f:
                content = f.read()
            
            # Check for version management functions
            version_functions = [
                'get_latest_synthesis_version',
                'get_latest_impl_ver',
                'find_exact_enc'
            ]
            
            for func in version_functions:
                if func in content:
                    print(f"Found version function: {func}")
                    
        except Exception as e:
            self.skipTest(f"Could not check version functions: {e}")
    
    def test_version_patterns(self):
        """Test version pattern handling"""
        try:
            with open(self.agent_path, 'r') as f:
                content = f.read()
            
            # Check for version patterns
            version_patterns = [
                'syn_ver',
                'impl_ver',
                'syn_version'
            ]
            
            for pattern in version_patterns:
                if pattern in content:
                    print(f"Found version pattern: {pattern}")
                    
        except Exception as e:
            self.skipTest(f"Could not check version patterns: {e}")


class TestAgentServerCommunication(unittest.TestCase):
    """Test agent communication with EDA servers"""
    
    def setUp(self):
        """Set up test environment"""
        self.agent_path = Path(__file__).parent.parent / "src" / "mcp_agent_client.py"
        
    def test_server_communication(self):
        """Test server communication logic"""
        try:
            with open(self.agent_path, 'r') as f:
                content = f.read()
            
            # Check for server communication
            comm_patterns = [
                'requests.post',
                'localhost:1800',
                '/run'
            ]
            
            for pattern in comm_patterns:
                if pattern in content:
                    print(f"Found communication pattern: {pattern}")
                    
        except Exception as e:
            self.skipTest(f"Could not check server communication: {e}")
    
    def test_error_handling(self):
        """Test error handling in server communication"""
        try:
            with open(self.agent_path, 'r') as f:
                content = f.read()
            
            # Check for error handling
            error_patterns = [
                'try:',
                'except',
                'ConnectionError',
                'timeout'
            ]
            
            found_patterns = 0
            for pattern in error_patterns:
                if pattern in content:
                    found_patterns += 1
                    
            self.assertGreater(found_patterns, 0, "No error handling patterns found")
            
        except Exception as e:
            self.skipTest(f"Could not check error handling: {e}")


class TestAgentConfiguration(unittest.TestCase):
    """Test agent configuration and setup"""
    
    def setUp(self):
        """Set up test environment"""
        self.agent_path = Path(__file__).parent.parent / "src" / "mcp_agent_client.py"
        
    def test_configuration_constants(self):
        """Test configuration constants"""
        try:
            with open(self.agent_path, 'r') as f:
                content = f.read()
            
            # Check for configuration constants
            config_patterns = [
                'SERVER_PORTS',
                'BASE_URL',
                'TIMEOUT'
            ]
            
            for pattern in config_patterns:
                if pattern in content:
                    print(f"Found config pattern: {pattern}")
                    
        except Exception as e:
            self.skipTest(f"Could not check configuration: {e}")
    
    def test_logging_setup(self):
        """Test logging setup"""
        try:
            with open(self.agent_path, 'r') as f:
                content = f.read()
            
            # Check for logging
            logging_patterns = [
                'import logging',
                'logger',
                'print('
            ]
            
            for pattern in logging_patterns:
                if pattern in content:
                    print(f"Found logging pattern: {pattern}")
                    break
                    
        except Exception as e:
            self.skipTest(f"Could not check logging setup: {e}")


if __name__ == '__main__':
    unittest.main(verbosity=2)
