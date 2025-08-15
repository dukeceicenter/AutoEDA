"""
TCL Scripts Templates Test Suite

Tests for TCL script templates and generation:
- Template file existence and syntax
- Jinja2 template rendering
- Parameter substitution
- Technology-specific scripts
- Combined script generation
"""

import unittest
import sys
import tempfile
import shutil
import re
from pathlib import Path
from unittest.mock import patch, MagicMock

# Add src to Python path
sys.path.insert(0, str(Path(__file__).parent.parent / "src"))

try:
    from jinja2 import Template, Environment, FileSystemLoader
    JINJA2_AVAILABLE = True
except ImportError:
    JINJA2_AVAILABLE = False


class TestScriptStructure(unittest.TestCase):
    """Test script directory structure and file existence"""
    
    def setUp(self):
        """Set up test environment"""
        self.scripts_dir = Path(__file__).parent.parent / "src" / "scripts"
        self.tech_dir = self.scripts_dir / "FreePDK45"
        
    def test_scripts_directory_exists(self):
        """Test that scripts directory exists"""
        self.assertTrue(self.scripts_dir.exists())
        self.assertTrue(self.scripts_dir.is_dir())
    
    def test_technology_directory_exists(self):
        """Test that technology directory exists"""
        self.assertTrue(self.tech_dir.exists())
        self.assertTrue(self.tech_dir.is_dir())
    
    def test_frontend_scripts_exist(self):
        """Test that frontend scripts exist"""
        frontend_dir = self.tech_dir / "frontend"
        self.assertTrue(frontend_dir.exists())
        self.assertTrue(frontend_dir.is_dir())
        
        # Check for synthesis script
        synthesis_script = frontend_dir / "combined_synthesis.tcl"
        self.assertTrue(synthesis_script.exists(), "Synthesis script not found")
        self.assertTrue(synthesis_script.is_file())
    
    def test_backend_scripts_exist(self):
        """Test that backend scripts exist"""
        backend_dir = self.tech_dir / "backend"
        self.assertTrue(backend_dir.exists())
        self.assertTrue(backend_dir.is_dir())
        
        # Check for backend scripts
        expected_scripts = [
            "combined_placement.tcl",
            "combined_cts.tcl", 
            "combined_routing.tcl"
        ]
        
        for script in expected_scripts:
            script_path = backend_dir / script
            self.assertTrue(script_path.exists(), f"Backend script {script} not found")
            self.assertTrue(script_path.is_file())
    
    def test_tech_file_exists(self):
        """Test that technology file exists"""
        tech_file = self.tech_dir / "tech.tcl"
        self.assertTrue(tech_file.exists(), "Technology file not found")
        self.assertTrue(tech_file.is_file())


class TestScriptSyntax(unittest.TestCase):
    """Test TCL script syntax and structure"""
    
    def setUp(self):
        """Set up test environment"""
        self.scripts_dir = Path(__file__).parent.parent / "src" / "scripts"
        self.tech_dir = self.scripts_dir / "FreePDK45"
    
    def test_synthesis_script_syntax(self):
        """Test synthesis script syntax"""
        script_path = self.tech_dir / "frontend" / "combined_synthesis.tcl"
        if not script_path.exists():
            self.skipTest("Synthesis script not found")
        
        content = script_path.read_text()
        
        # Check for basic TCL syntax
        self.assertIn("set", content, "No 'set' commands found")
        
        # Check for synthesis-specific commands
        synthesis_commands = ["read_verilog", "read_vhdl", "compile", "analyze"]
        found_commands = []
        
        for cmd in synthesis_commands:
            if cmd in content:
                found_commands.append(cmd)
        
        self.assertGreater(len(found_commands), 0, "No synthesis commands found")
    
    def test_placement_script_syntax(self):
        """Test placement script syntax"""
        script_path = self.tech_dir / "backend" / "combined_placement.tcl"
        if not script_path.exists():
            self.skipTest("Placement script not found")
        
        content = script_path.read_text()
        
        # Check for placement-specific commands
        placement_commands = ["floorPlan", "placeDesign", "addRing", "addStripe"]
        found_commands = []
        
        for cmd in placement_commands:
            if cmd in content:
                found_commands.append(cmd)
        
        self.assertGreater(len(found_commands), 0, "No placement commands found")
    
    def test_cts_script_syntax(self):
        """Test CTS script syntax"""
        script_path = self.tech_dir / "backend" / "combined_cts.tcl"
        if not script_path.exists():
            self.skipTest("CTS script not found")
        
        content = script_path.read_text()
        
        # Check for CTS-specific commands
        cts_commands = ["clockDesign", "optDesign", "createClockTreeSpec", "specifyClockTree"]
        found_commands = []
        
        for cmd in cts_commands:
            if cmd in content:
                found_commands.append(cmd)
        
        self.assertGreater(len(found_commands), 0, "No CTS commands found")
    
    def test_routing_script_syntax(self):
        """Test routing script syntax"""
        script_path = self.tech_dir / "backend" / "combined_routing.tcl"
        if not script_path.exists():
            self.skipTest("Routing script not found")
        
        content = script_path.read_text()
        
        # Check for routing-specific commands
        routing_commands = ["routeDesign", "globalRoute", "detailRoute", "saveDesign"]
        found_commands = []
        
        for cmd in routing_commands:
            if cmd in content:
                found_commands.append(cmd)
        
        self.assertGreater(len(found_commands), 0, "No routing commands found")
    
    def test_tech_file_syntax(self):
        """Test technology file syntax"""
        tech_path = self.tech_dir / "tech.tcl"
        if not tech_path.exists():
            self.skipTest("Technology file not found")
        
        content = tech_path.read_text()
        
        # Check for technology-specific settings
        tech_patterns = ["set_db", "library", "lef", "lib"]
        found_patterns = []
        
        for pattern in tech_patterns:
            if pattern in content:
                found_patterns.append(pattern)
        
        self.assertGreater(len(found_patterns), 0, "No technology patterns found")


@unittest.skipIf(not JINJA2_AVAILABLE, "Jinja2 not available")
class TestTemplateRendering(unittest.TestCase):
    """Test Jinja2 template rendering functionality"""
    
    def setUp(self):
        """Set up test environment"""
        self.test_dir = Path(tempfile.mkdtemp())
        self.scripts_dir = Path(__file__).parent.parent / "src" / "scripts"
        
    def tearDown(self):
        """Clean up test environment"""
        shutil.rmtree(self.test_dir, ignore_errors=True)
    
    def test_template_variables_detection(self):
        """Test detection of template variables in scripts"""
        scripts_to_check = [
            "FreePDK45/frontend/combined_synthesis.tcl",
            "FreePDK45/backend/combined_placement.tcl",
            "FreePDK45/backend/combined_cts.tcl",
            "FreePDK45/backend/combined_routing.tcl"
        ]
        
        jinja_pattern = re.compile(r'\{\{\s*(\w+)\s*\}\}')
        
        for script_rel_path in scripts_to_check:
            script_path = self.scripts_dir / script_rel_path
            if not script_path.exists():
                continue
                
            content = script_path.read_text()
            variables = jinja_pattern.findall(content)
            
            if variables:
                print(f"Template variables in {script_rel_path}: {variables}")
                
                # Common expected variables
                expected_vars = ["design", "period", "tech_lib", "workspace"]
                found_expected = [var for var in variables if var in expected_vars]
                
                if found_expected:
                    print(f"Found expected variables: {found_expected}")
    
    def test_template_rendering_basic(self):
        """Test basic template rendering"""
        # Create a simple test template
        template_content = """
        set design {{ design }}
        set period {{ period }}
        set tech_lib {{ tech_lib }}
        """
        
        template_file = self.test_dir / "test_template.tcl"
        template_file.write_text(template_content)
        
        # Test rendering
        template = Template(template_content)
        rendered = template.render({
            'design': 'test_design',
            'period': 2.0,
            'tech_lib': 'FreePDK45'
        })
        
        self.assertIn("set design test_design", rendered)
        self.assertIn("set period 2.0", rendered)
        self.assertIn("set tech_lib FreePDK45", rendered)
    
    def test_template_rendering_with_conditionals(self):
        """Test template rendering with conditional statements"""
        template_content = """
        set design {{ design }}
        {% if period %}
        set period {{ period }}
        {% endif %}
        {% if power_effort != 'none' %}
        set power_effort {{ power_effort }}
        {% endif %}
        """
        
        template = Template(template_content)
        
        # Test with all parameters
        rendered1 = template.render({
            'design': 'test',
            'period': 2.0,
            'power_effort': 'high'
        })
        
        self.assertIn("set period 2.0", rendered1)
        self.assertIn("set power_effort high", rendered1)
        
        # Test with conditional parameters
        rendered2 = template.render({
            'design': 'test',
            'period': None,
            'power_effort': 'none'
        })
        
        self.assertNotIn("set period", rendered2)
        self.assertNotIn("set power_effort", rendered2)


class TestParameterSubstitution(unittest.TestCase):
    """Test parameter substitution in templates"""
    
    def setUp(self):
        """Set up test environment"""
        self.scripts_dir = Path(__file__).parent.parent / "src" / "scripts"
    
    def test_synthesis_parameters(self):
        """Test synthesis parameter patterns"""
        script_path = self.scripts_dir / "FreePDK45" / "frontend" / "combined_synthesis.tcl"
        if not script_path.exists():
            self.skipTest("Synthesis script not found")
        
        content = script_path.read_text()
        
        # Common synthesis parameters
        param_patterns = [
            r'\{\{\s*design\s*\}\}',
            r'\{\{\s*period\s*\}\}',
            r'\{\{\s*tech.*\}\}',
        ]
        
        for pattern in param_patterns:
            if re.search(pattern, content):
                print(f"Found synthesis parameter pattern: {pattern}")
    
    def test_placement_parameters(self):
        """Test placement parameter patterns"""
        script_path = self.scripts_dir / "FreePDK45" / "backend" / "combined_placement.tcl"
        if not script_path.exists():
            self.skipTest("Placement script not found")
        
        content = script_path.read_text()
        
        # Common placement parameters
        param_patterns = [
            r'\{\{\s*design\s*\}\}',
            r'\{\{\s*aspect.*\}\}',
            r'\{\{\s*util.*\}\}',
            r'\{\{\s*density.*\}\}',
        ]
        
        for pattern in param_patterns:
            if re.search(pattern, content):
                print(f"Found placement parameter pattern: {pattern}")
    
    def test_cts_parameters(self):
        """Test CTS parameter patterns"""
        script_path = self.scripts_dir / "FreePDK45" / "backend" / "combined_cts.tcl"
        if not script_path.exists():
            self.skipTest("CTS script not found")
        
        content = script_path.read_text()
        
        # Common CTS parameters
        param_patterns = [
            r'\{\{\s*design\s*\}\}',
            r'\{\{\s*clock.*\}\}',
            r'\{\{\s*skew.*\}\}',
        ]
        
        for pattern in param_patterns:
            if re.search(pattern, content):
                print(f"Found CTS parameter pattern: {pattern}")


class TestScriptIntegration(unittest.TestCase):
    """Test script integration and dependencies"""
    
    def setUp(self):
        """Set up test environment"""
        self.scripts_dir = Path(__file__).parent.parent / "src" / "scripts"
        self.tech_dir = self.scripts_dir / "FreePDK45"
    
    def test_tech_file_sourcing(self):
        """Test that scripts properly source technology file"""
        backend_scripts = [
            "combined_placement.tcl",
            "combined_cts.tcl",
            "combined_routing.tcl"
        ]
        
        for script_name in backend_scripts:
            script_path = self.tech_dir / "backend" / script_name
            if not script_path.exists():
                continue
                
            content = script_path.read_text()
            
            # Check for tech file sourcing
            if "source" in content and "tech.tcl" in content:
                print(f"Script {script_name} sources tech.tcl")
            elif "tech" in content.lower():
                print(f"Script {script_name} references technology")
    
    def test_checkpoint_handling(self):
        """Test checkpoint file handling in scripts"""
        backend_scripts = [
            "combined_placement.tcl",
            "combined_cts.tcl",
            "combined_routing.tcl"
        ]
        
        for script_name in backend_scripts:
            script_path = self.tech_dir / "backend" / script_name
            if not script_path.exists():
                continue
                
            content = script_path.read_text()
            
            # Check for checkpoint operations
            checkpoint_ops = ["saveDesign", "restoreDesign", ".enc"]
            
            for op in checkpoint_ops:
                if op in content:
                    print(f"Script {script_name} uses checkpoint operation: {op}")
    
    def test_output_file_generation(self):
        """Test output file generation in scripts"""
        all_scripts = [
            "frontend/combined_synthesis.tcl",
            "backend/combined_placement.tcl",
            "backend/combined_cts.tcl",
            "backend/combined_routing.tcl"
        ]
        
        for script_rel_path in all_scripts:
            script_path = self.tech_dir / script_rel_path
            if not script_path.exists():
                continue
                
            content = script_path.read_text()
            
            # Check for output file generation
            output_ops = ["write", "save", "report", "export"]
            
            for op in output_ops:
                if op in content.lower():
                    print(f"Script {script_rel_path} generates outputs with: {op}")
                    break


class TestScriptParameters(unittest.TestCase):
    """Test script parameter handling and validation"""
    
    def setUp(self):
        """Set up test environment"""
        self.scripts_dir = Path(__file__).parent.parent / "src" / "scripts"
    
    def test_required_parameters(self):
        """Test that scripts have required parameters"""
        all_scripts = [
            "FreePDK45/frontend/combined_synthesis.tcl",
            "FreePDK45/backend/combined_placement.tcl",
            "FreePDK45/backend/combined_cts.tcl",
            "FreePDK45/backend/combined_routing.tcl"
        ]
        
        # Parameters that should be present in most scripts
        common_params = ["design", "workspace", "tech"]
        
        for script_rel_path in all_scripts:
            script_path = self.scripts_dir / script_rel_path
            if not script_path.exists():
                continue
                
            content = script_path.read_text()
            
            found_params = []
            for param in common_params:
                if f"{{{{{param}" in content or f"${param}" in content:
                    found_params.append(param)
            
            if found_params:
                print(f"Script {script_rel_path} uses parameters: {found_params}")
    
    def test_parameter_defaults(self):
        """Test parameter default value handling"""
        scripts_to_check = [
            "FreePDK45/frontend/combined_synthesis.tcl",
            "FreePDK45/backend/combined_placement.tcl"
        ]
        
        for script_rel_path in scripts_to_check:
            script_path = self.scripts_dir / script_rel_path
            if not script_path.exists():
                continue
                
            content = script_path.read_text()
            
            # Look for default value patterns
            default_patterns = [
                r'if.*{.*}.*else.*{.*}',  # if-else for defaults
                r'\|\|',  # or operator for defaults
                r'default'  # explicit default keyword
            ]
            
            for pattern in default_patterns:
                if re.search(pattern, content, re.IGNORECASE):
                    print(f"Script {script_rel_path} has default handling")
                    break


if __name__ == '__main__':
    unittest.main(verbosity=2)
