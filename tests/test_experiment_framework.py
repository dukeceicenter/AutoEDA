"""
Experimental Framework Tests - Test the TCL accuracy evaluation system
"""
import unittest
import json
import tempfile
import shutil
from pathlib import Path
from typing import Dict, Any
import sys

class TestExperimentFramework(unittest.TestCase):
    """Test the experimental framework functionality"""
    
    @classmethod
    def setUpClass(cls):
        """Set up test environment"""
        cls.test_dir = Path(tempfile.mkdtemp())
        cls.experiment_dir = cls.test_dir / "experiment"
        cls.experiment_dir.mkdir()
        
        # Create test structure
        (cls.experiment_dir / "results").mkdir()
        (cls.experiment_dir / "evaluation_results").mkdir()
        (cls.experiment_dir / "generate").mkdir()
        (cls.experiment_dir / "evaluate").mkdir()
        
        # Create test results
        cls.create_test_results()
    
    @classmethod
    def tearDownClass(cls):
        """Clean up test environment"""
        shutil.rmtree(cls.test_dir)
    
    @classmethod
    def create_test_results(cls):
        """Create test results for evaluation"""
        # Create baseline1 result
        baseline1_dir = cls.experiment_dir / "results" / "baseline1"
        baseline1_dir.mkdir()
        
        baseline1_result = {
            "generation_success": True,
            "execution_time": 2.5,
            "tcl_code": "set design_name test\nfloorPlan -r 1.0 0.7 -d 100 100 10 10 10 10",
            "notes": "Test baseline1 generation",
            "timestamp": "2024-12-19 14:30:22"
        }
        
        with open(baseline1_dir / "case_0.json", "w") as f:
            json.dump(baseline1_result, f, indent=2)
        
        # Create ours result
        ours_dir = cls.experiment_dir / "results" / "ours"
        ours_dir.mkdir()
        
        ours_result = {
            "generation_success": True,
            "execution_time": 15.2,
            "tcl_code": "set design_name test\nfloorPlan -r 1.0 0.7 -d 100 100 10 10 10 10\nsaveDesign test.enc.dat",
            "notes": "Test ours generation",
            "timestamp": "2024-12-19 14:30:22"
        }
        
        with open(ours_dir / "case_0.json", "w") as f:
            json.dump(ours_result, f, indent=2)
    
    def test_experiment_directory_structure(self):
        """Test experiment directory structure"""
        self.assertTrue(self.experiment_dir.exists())
        self.assertTrue((self.experiment_dir / "results").exists())
        self.assertTrue((self.experiment_dir / "evaluation_results").exists())
        self.assertTrue((self.experiment_dir / "generate").exists())
        self.assertTrue((self.experiment_dir / "evaluate").exists())
        
        print("✓ Experiment directory structure is correct")
    
    def test_result_files_exist(self):
        """Test that result files exist"""
        baseline1_file = self.experiment_dir / "results" / "baseline1" / "case_0.json"
        ours_file = self.experiment_dir / "results" / "ours" / "case_0.json"
        
        self.assertTrue(baseline1_file.exists())
        self.assertTrue(ours_file.exists())
        
        print("✓ Result files exist")
    
    def test_result_file_format(self):
        """Test result file JSON format"""
        baseline1_file = self.experiment_dir / "results" / "baseline1" / "case_0.json"
        
        with open(baseline1_file, "r") as f:
            result = json.load(f)
        
        required_fields = ["generation_success", "execution_time", "tcl_code", "notes", "timestamp"]
        for field in required_fields:
            self.assertIn(field, result)
        
        self.assertIsInstance(result["generation_success"], bool)
        self.assertIsInstance(result["execution_time"], (int, float))
        self.assertIsInstance(result["tcl_code"], str)
        
        print("✓ Result file format is correct")
    
    def test_tcl_quality_evaluation(self):
        """Test TCL quality evaluation"""
        # Import evaluation function
        try:
            sys.path.insert(0, str(Path.cwd() / "experiment" / "evaluate"))
            from evaluation_metrics import evaluate_tcl_quality
            
            # Test baseline1 TCL
            baseline1_tcl = "set design_name test\nfloorPlan -r 1.0 0.7 -d 100 100 10 10 10 10"
            baseline1_quality = evaluate_tcl_quality(baseline1_tcl, "innovus")
            
            self.assertIn("overall", baseline1_quality)
            self.assertIn("syntax", baseline1_quality)
            self.assertIn("completeness", baseline1_quality)
            self.assertIn("executability", baseline1_quality)
            self.assertIn("professionalism", baseline1_quality)
            
            # Test ours TCL (should be better)
            ours_tcl = "set design_name test\nfloorPlan -r 1.0 0.7 -d 100 100 10 10 10 10\nsaveDesign test.enc.dat"
            ours_quality = evaluate_tcl_quality(ours_tcl, "innovus")
            
            self.assertIn("overall", ours_quality)
            
            print(f"✓ TCL quality evaluation: baseline1={baseline1_quality['overall']}, ours={ours_quality['overall']}")
            
        except ImportError:
            self.skipTest("Evaluation metrics module not available")
    
    def test_empty_tcl_handling(self):
        """Test handling of empty TCL code"""
        try:
            sys.path.insert(0, str(Path.cwd() / "experiment" / "evaluate"))
            from evaluation_metrics import evaluate_tcl_quality
            
            empty_quality = evaluate_tcl_quality("", "innovus")
            self.assertEqual(empty_quality["overall"], "0.00")
            self.assertEqual(empty_quality["syntax"], "0.00")
            self.assertEqual(empty_quality["completeness"], "0.00")
            self.assertEqual(empty_quality["executability"], "0.00")
            self.assertEqual(empty_quality["professionalism"], "0.00")
            
            print("✓ Empty TCL handling is correct")
            
        except ImportError:
            self.skipTest("Evaluation metrics module not available")
    
    def test_method_comparison(self):
        """Test method comparison functionality"""
        try:
            sys.path.insert(0, str(Path.cwd() / "experiment" / "evaluate"))
            from evaluation_metrics import compare_methods
            
            # Create test evaluation results
            test_results = {
                "case_0": {
                    "case_id": "case_0",
                    "methods": {
                        "baseline1": {
                            "generation_success": True,
                            "execution_time": 2.5,
                            "tcl_quality": {
                                "overall": "0.75",
                                "syntax": "1.00",
                                "completeness": "0.67",
                                "executability": "0.67",
                                "professionalism": "0.67"
                            },
                            "notes": "Test baseline1",
                            "timestamp": "2024-12-19 14:30:22"
                        },
                        "ours": {
                            "generation_success": True,
                            "execution_time": 15.2,
                            "tcl_quality": {
                                "overall": "1.00",
                                "syntax": "1.00",
                                "completeness": "1.00",
                                "executability": "1.00",
                                "professionalism": "1.00"
                            },
                            "notes": "Test ours",
                            "timestamp": "2024-12-19 14:30:22"
                        }
                    }
                }
            }
            
            comparison = compare_methods(test_results)
            
            self.assertIn("method_rankings", comparison)
            self.assertIn("quality_analysis", comparison)
            self.assertIn("insights", comparison)
            
            # Check that ours is ranked higher than baseline1
            rankings = comparison["method_rankings"]
            ours_rank = None
            baseline1_rank = None
            
            for rank, data in rankings.items():
                if data["method"] == "ours":
                    ours_rank = int(rank)
                elif data["method"] == "baseline1":
                    baseline1_rank = int(rank)
            
            if ours_rank and baseline1_rank:
                self.assertLess(ours_rank, baseline1_rank, "Ours should be ranked higher than baseline1")
            
            print("✓ Method comparison functionality is correct")
            
        except ImportError:
            self.skipTest("Evaluation metrics module not available")
    
    def test_experiment_configuration(self):
        """Test experiment configuration"""
        # Check if experiment config exists
        config_file = Path.cwd() / "experiment" / "test_config.json"
        if config_file.exists():
            with open(config_file, "r") as f:
                config = json.load(f)
            
            self.assertIn("designs", config)
            self.assertIn("methods", config)
            self.assertIn("evaluation", config)
            
            print("✓ Experiment configuration is valid")
        else:
            self.skipTest("Experiment configuration file not found")
    
    def test_experiment_runner_availability(self):
        """Test experiment runner script availability"""
        runner_script = Path.cwd() / "experiment" / "run_experiment.py"
        
        if runner_script.exists():
            self.assertTrue(runner_script.is_file())
            print("✓ Experiment runner script is available")
        else:
            self.skipTest("Experiment runner script not found")

if __name__ == "__main__":
    unittest.main() 