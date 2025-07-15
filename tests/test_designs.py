"""
Design File Tests - Test the correctness of RTL files and design configurations
"""
import unittest
import os
import re
from pathlib import Path

class TestDesignFiles(unittest.TestCase):
    """Test the validity of design files"""
    
    def setUp(self):
        """Set up test environment"""
        self.designs_dir = Path("designs")
        
    def test_design_directories_exist(self):
        """Test if design directories exist"""
        self.assertTrue(self.designs_dir.exists(), "designs directory does not exist")
        
        # Check if there are design directories
        design_dirs = [d for d in self.designs_dir.iterdir() if d.is_dir()]
        self.assertGreater(len(design_dirs), 0, "No design directories found")
        
        print(f"Found designs: {[d.name for d in design_dirs]}")
    
    def test_rtl_files_exist(self):
        """Test if RTL files exist"""
        for design_dir in self.designs_dir.iterdir():
            if not design_dir.is_dir():
                continue
                
            rtl_dir = design_dir / "rtl"
            if rtl_dir.exists():
                rtl_files = list(rtl_dir.glob("*.v")) + list(rtl_dir.glob("*.vhd"))
                self.assertGreater(len(rtl_files), 0, 
                                 f"Design {design_dir.name} has no RTL files")
                
                print(f"RTL files for design {design_dir.name}: {[f.name for f in rtl_files]}")
    
    def test_config_tcl_exists(self):
        """Test if config.tcl files exist"""
        for design_dir in self.designs_dir.iterdir():
            if not design_dir.is_dir():
                continue
                
            config_file = design_dir / "config.tcl"
            if config_file.exists():
                # Check basic content of config.tcl
                with open(config_file, 'r') as f:
                    content = f.read()
                    
                # Check required configuration items, compatible with TOP_MODULE and TOP_NAME
                required_configs = ["TOP_MODULE", "TOP_NAME", "FILE_FORMAT", "CLOCK_NAME"]
                found_top = any(k in content for k in ["TOP_MODULE", "TOP_NAME"])
                self.assertTrue(found_top, f"Design {design_dir.name} config.tcl missing TOP_MODULE or TOP_NAME")
                for config in ["FILE_FORMAT", "CLOCK_NAME"]:
                    self.assertIn(config, content, f"Design {design_dir.name} config.tcl missing {config}")

    def test_verilog_syntax(self):
        """Test basic Verilog syntax"""
        for design_dir in self.designs_dir.iterdir():
            if not design_dir.is_dir():
                continue
                
            rtl_dir = design_dir / "rtl"
            if not rtl_dir.exists():
                continue
                
            verilog_files = list(rtl_dir.glob("*.v"))
            for v_file in verilog_files:
                # Skip include, package and other non-standard module files
                if v_file.name.lower().endswith(".vh") or "package" in v_file.name.lower() or "include" in v_file.name.lower() or "library" in v_file.name.lower():
                    continue
                with open(v_file, 'r') as f:
                    content = f.read()
                # Skip files with only `include statements
                if content.strip().startswith('`include'):
                    continue
                # Skip files with only define statements
                lines = [l.strip() for l in content.splitlines() if l.strip()]
                if lines and all(l.startswith('`define') for l in lines):
                    continue
                # Check basic Verilog syntax elements
                self.assertIn("module", content.lower(), f"Verilog file {v_file.name} missing module declaration")
                self.assertIn("endmodule", content.lower(), f"Verilog file {v_file.name} missing endmodule")
    
    def test_vhdl_syntax(self):
        """Test basic VHDL syntax"""
        for design_dir in self.designs_dir.iterdir():
            if not design_dir.is_dir():
                continue
                
            rtl_dir = design_dir / "rtl"
            if not rtl_dir.exists():
                continue
                
            vhdl_files = list(rtl_dir.glob("*.vhd"))
            for vhd_file in vhdl_files:
                # Skip package, library and other non-standard entity files
                if "package" in vhd_file.name.lower() or "library" in vhd_file.name.lower() or "include" in vhd_file.name.lower():
                    continue
                try:
                    with open(vhd_file, 'r', encoding='utf-8', errors='ignore') as f:
                        content = f.read()
                except Exception:
                    continue
                # Skip files with only library statements
                if content.strip().lower().startswith('library'):
                    continue
                # Skip package declaration files
                if 'package' in content.lower() and 'end' in content.lower() and 'entity' not in content.lower():
                    continue
                # Check basic VHDL syntax elements
                self.assertIn("entity", content.lower(), f"VHDL file {vhd_file.name} missing entity declaration")
                self.assertIn("end", content.lower(), f"VHDL file {vhd_file.name} missing end statement")
    
    def test_top_module_consistency(self):
        """Test top module name consistency"""
        for design_dir in self.designs_dir.iterdir():
            if not design_dir.is_dir():
                continue
                
            config_file = design_dir / "config.tcl"
            if not config_file.exists():
                continue
                
            # Read top module name from config.tcl, compatible with TOP_MODULE and TOP_NAME
            with open(config_file, 'r') as f:
                content = f.read()
            import re
            top_module_match = re.search(r'(TOP_MODULE|TOP_NAME)\s*=\s*"([^"]+)"', content)
            if not top_module_match:
                continue
            top_module = top_module_match.group(2)
            # Check if the module exists in RTL files
            rtl_dir = design_dir / "rtl"
            if rtl_dir.exists():
                rtl_files = list(rtl_dir.glob("*.v")) + list(rtl_dir.glob("*.vhd"))
                module_found = False
                for rtl_file in rtl_files:
                    # Skip package/include/library files
                    if any(x in rtl_file.name.lower() for x in ["package", "include", "library"]):
                        continue
                    with open(rtl_file, 'r') as f:
                        rtl_content = f.read()
                    # Check Verilog modules
                    if rtl_file.suffix == '.v':
                        module_pattern = rf'module\s+{top_module}\s*\('
                        if re.search(module_pattern, rtl_content, re.IGNORECASE):
                            module_found = True
                            break
                    # Check VHDL entities
                    elif rtl_file.suffix == '.vhd':
                        entity_pattern = rf'entity\s+{top_module}\s+is'
                        if re.search(entity_pattern, rtl_content, re.IGNORECASE):
                            module_found = True
                            break
                if rtl_files:  # Only check if there are RTL files
                    self.assertTrue(module_found, f"Design {design_dir.name} top module {top_module} not found in RTL files")

if __name__ == '__main__':
    unittest.main() 