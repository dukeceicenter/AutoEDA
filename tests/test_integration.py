"""
Integration Tests - Test complete design workflows
"""
import unittest
import requests
import json
import time
import subprocess
import os
from pathlib import Path

class TestIntegrationWorkflow(unittest.TestCase):
    """Test complete design workflow integration"""
    
    @classmethod
    def setUpClass(cls):
        """Set up test environment"""
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
        
        # Check and start servers
        cls.check_and_start_servers()
    
    @classmethod
    def check_and_start_servers(cls):
        """Check and start servers"""
        try:
            response = requests.get(f"{cls.base_url}:13333/health", timeout=2)
            if response.status_code != 200:
                raise Exception("Servers not running")
        except:
            print("Starting MCP servers...")
            subprocess.run(["./restart_servers.sh"], check=True, capture_output=True)
            time.sleep(5)
    
    def test_complete_b14_workflow(self):
        """Test complete b14 design workflow"""
        design = "b14"
        top_module = "b14"
        
        print(f"\nStarting complete workflow test for {design} design...")
        
        # 1. Synthesis setup
        print("1. Executing synthesis setup...")
        result = self.run_synthesis_setup(design)
        self.assertEqual(result["status"], "success", f"Synthesis setup failed: {result}")
        
        # 2. Synthesis compile
        print("2. Executing synthesis compile...")
        result = self.run_synthesis_compile(design)
        self.assertEqual(result["status"], "success", f"Synthesis compile failed: {result}")
        
        # 3. Floorplan
        print("3. Executing floorplan...")
        result = self.run_floorplan(design, top_module)
        self.assertEqual(result["status"], "success", f"Floorplan failed: {result}")
        
        # 4. Power plan
        print("4. Executing power plan...")
        result = self.run_powerplan(design, top_module)
        self.assertEqual(result["status"], "success", f"Power plan failed: {result}")
        
        # 5. Placement
        print("5. Executing placement...")
        result = self.run_placement(design, top_module)
        self.assertEqual(result["status"], "success", f"Placement failed: {result}")
        
        # 6. Clock tree synthesis
        print("6. Executing clock tree synthesis...")
        result = self.run_cts(design, top_module)
        self.assertEqual(result["status"], "success", f"Clock tree synthesis failed: {result}")
        
        # 7. Routing
        print("7. Executing routing...")
        result = self.run_route(design, top_module)
        self.assertEqual(result["status"], "success", f"Routing failed: {result}")
        
        # 8. Save results
        print("8. Saving results...")
        result = self.run_save(design, top_module)
        self.assertEqual(result["status"], "success", f"Save failed: {result}")
        
        print(f"✓ {design} design complete workflow test passed!")
    
    def test_complete_leon2_workflow(self):
        """Test complete leon2 design workflow"""
        design = "leon2"
        top_module = "leon2mp"  # LEON2 top module name
        
        print(f"\nStarting complete workflow test for {design} design...")
        
        # 1. Synthesis setup
        print("1. Executing synthesis setup...")
        result = self.run_synthesis_setup(design)
        self.assertEqual(result["status"], "success", f"Synthesis setup failed: {result}")
        
        # 2. Synthesis compile
        print("2. Executing synthesis compile...")
        result = self.run_synthesis_compile(design)
        self.assertEqual(result["status"], "success", f"Synthesis compile failed: {result}")
        
        # 3. Floorplan
        print("3. Executing floorplan...")
        result = self.run_floorplan(design, top_module)
        self.assertEqual(result["status"], "success", f"Floorplan failed: {result}")
        
        # 4. Power plan
        print("4. Executing power plan...")
        result = self.run_powerplan(design, top_module)
        self.assertEqual(result["status"], "success", f"Power plan failed: {result}")
        
        # 5. Placement
        print("5. Executing placement...")
        result = self.run_placement(design, top_module)
        self.assertEqual(result["status"], "success", f"Placement failed: {result}")
        
        # 6. Clock tree synthesis
        print("6. Executing clock tree synthesis...")
        result = self.run_cts(design, top_module)
        self.assertEqual(result["status"], "success", f"Clock tree synthesis failed: {result}")
        
        # 7. Routing
        print("7. Executing routing...")
        result = self.run_route(design, top_module)
        self.assertEqual(result["status"], "success", f"Routing failed: {result}")
        
        # 8. Save results
        print("8. Saving results...")
        result = self.run_save(design, top_module)
        self.assertEqual(result["status"], "success", f"Save failed: {result}")
        
        print(f"✓ {design} design complete workflow test passed!")
    
    def test_workflow_with_different_configs(self):
        """Test workflows with different configurations"""
        design = "b14"
        top_module = "b14"
        
        print(f"\nStarting different configuration test for {design} design...")
        
        # Test different synthesis configurations
        configs = [
            {"version_idx": 0, "g_idx": 0, "p_idx": 0, "c_idx": 0},
            {"version_idx": 1, "g_idx": 1, "p_idx": 1, "c_idx": 1},
        ]
        
        for i, config in enumerate(configs):
            print(f"Testing configuration {i+1}: {config}")
            
            # Synthesis setup
            result = self.run_synthesis_setup(design, version_idx=config["version_idx"])
            self.assertEqual(result["status"], "success", f"Configuration {i+1} synthesis setup failed")
            
            # Synthesis compile
            result = self.run_synthesis_compile(design, version_idx=config["version_idx"])
            self.assertEqual(result["status"], "success", f"Configuration {i+1} synthesis compile failed")
            
            # Floorplan
            result = self.run_floorplan(design, top_module, 
                                      version_idx=config["version_idx"],
                                      g_idx=config["g_idx"], 
                                      p_idx=config["p_idx"])
            self.assertEqual(result["status"], "success", f"Configuration {i+1} floorplan failed")
            
            print(f"✓ Configuration {i+1} test passed")
    
    def run_synthesis_setup(self, design, version_idx=0):
        """Run synthesis setup"""
        url = f"{self.base_url}:{self.ports['synth_setup']}/setup/run"
        payload = {
            "design": design,
            "tech": "FreePDK45",
            "version_idx": version_idx,
            "force": True
        }
        
        response = requests.post(url, json=payload, timeout=30)
        return response.json()
    
    def run_synthesis_compile(self, design, version_idx=0):
        """Run synthesis compile"""
        url = f"{self.base_url}:{self.ports['synth_compile']}/compile/run"
        payload = {
            "design": design,
            "tech": "FreePDK45",
            "version_idx": version_idx,
            "force": True
        }
        
        response = requests.post(url, json=payload, timeout=60)
        return response.json()
    
    def run_floorplan(self, design, top_module, version_idx=0, g_idx=0, p_idx=0):
        """Run floorplan"""
        url = f"{self.base_url}:{self.ports['floorplan']}/floorplan/run"
        payload = {
            "design": design,
            "top_module": top_module,
            "tech": "FreePDK45",
            "syn_ver": f"v{version_idx}",
            "g_idx": g_idx,
            "p_idx": p_idx,
            "force": True
        }
        
        response = requests.post(url, json=payload, timeout=60)
        return response.json()
    
    def run_powerplan(self, design, top_module, version_idx=0, g_idx=0, p_idx=0):
        """Run power plan"""
        url = f"{self.base_url}:{self.ports['powerplan']}/power/run"
        payload = {
            "design": design,
            "top_module": top_module,
            "tech": "FreePDK45",
            "impl_ver": f"v{version_idx}__g{g_idx}_p{p_idx}",
            "g_idx": g_idx,
            "p_idx": p_idx,
            "force": True
        }
        
        response = requests.post(url, json=payload, timeout=60)
        return response.json()
    
    def run_placement(self, design, top_module, version_idx=0, g_idx=0, p_idx=0):
        """Run placement"""
        url = f"{self.base_url}:{self.ports['placement']}/place/run"
        payload = {
            "design": design,
            "top_module": top_module,
            "tech": "FreePDK45",
            "impl_ver": f"v{version_idx}__g{g_idx}_p{p_idx}",
            "g_idx": g_idx,
            "p_idx": p_idx,
            "force": True
        }
        
        response = requests.post(url, json=payload, timeout=60)
        return response.json()
    
    def run_cts(self, design, top_module, version_idx=0, g_idx=0, p_idx=0, c_idx=0):
        """Run clock tree synthesis"""
        url = f"{self.base_url}:{self.ports['cts']}/cts/run"
        payload = {
            "design": design,
            "top_module": top_module,
            "tech": "FreePDK45",
            "impl_ver": f"v{version_idx}__g{g_idx}_p{p_idx}",
            "g_idx": g_idx,
            "p_idx": p_idx,
            "c_idx": c_idx,
            "force": True
        }
        
        response = requests.post(url, json=payload, timeout=60)
        return response.json()
    
    def run_route(self, design, top_module, version_idx=0, g_idx=0, p_idx=0, c_idx=0):
        """Run routing"""
        url = f"{self.base_url}:{self.ports['route']}/route/run"
        payload = {
            "design": design,
            "top_module": top_module,
            "tech": "FreePDK45",
            "impl_ver": f"v{version_idx}__g{g_idx}_p{p_idx}",
            "g_idx": g_idx,
            "p_idx": p_idx,
            "c_idx": c_idx,
            "force": True
        }
        
        response = requests.post(url, json=payload, timeout=60)
        return response.json()
    
    def run_save(self, design, top_module, version_idx=0, g_idx=0, p_idx=0, c_idx=0):
        """Run save"""
        url = f"{self.base_url}:{self.ports['save']}/save/run"
        payload = {
            "design": design,
            "top_module": top_module,
            "tech": "FreePDK45",
            "impl_ver": f"v{version_idx}__g{g_idx}_p{p_idx}",
            "archive": True,
            "force": True
        }
        
        response = requests.post(url, json=payload, timeout=30)
        return response.json()

if __name__ == '__main__':
    unittest.main() 