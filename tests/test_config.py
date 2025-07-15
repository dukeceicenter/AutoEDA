"""
Configuration Tests - Test the correctness of CSV configuration files
"""
import unittest
import os
import csv
import tempfile
import shutil
from pathlib import Path

class TestConfigFiles(unittest.TestCase):
    """Test the validity of configuration files"""
    
    def setUp(self):
        """Set up test environment"""
        self.config_dir = Path("config")
        self.test_config_dir = Path(tempfile.mkdtemp())
        
    def tearDown(self):
        """Clean up test environment"""
        shutil.rmtree(self.test_config_dir)
    
    def test_config_files_exist(self):
        """Test if required configuration files exist"""
        required_files = [
            "synthesis.csv",
            "imp_global.csv", 
            "placement.csv",
            "cts.csv"
        ]
        
        for file in required_files:
            file_path = self.config_dir / file
            self.assertTrue(file_path.exists(), f"Configuration file {file} does not exist")
    
    def test_csv_format(self):
        """Test if CSV file format is correct"""
        csv_files = list(self.config_dir.glob("*.csv"))
        
        for csv_file in csv_files:
            with open(csv_file, 'r') as f:
                reader = csv.reader(f)
                rows = list(reader)
                
                # Check if there is a header row
                self.assertGreater(len(rows), 1, f"{csv_file} needs at least a header row and one data row")
                
                # Check if each row has the same number of columns
                header_length = len(rows[0])
                for i, row in enumerate(rows[1:], 1):
                    self.assertEqual(len(row), header_length, 
                                   f"{csv_file} row {i} has mismatched column count")
    
    def test_synthesis_config(self):
        """Test synthesis configuration parameters"""
        synth_file = self.config_dir / "synthesis.csv"
        if not synth_file.exists():
            self.skipTest("synthesis.csv does not exist")
            
        with open(synth_file, 'r') as f:
            reader = csv.DictReader(f)
            for row in reader:
                # Check required parameters
                # Compatible with clock_period and clk_period
                period_key = None
                for k in ["clock_period", "clk_period"]:
                    if k in row:
                        period_key = k
                        break
                self.assertIsNotNone(period_key, "Missing required parameter: clock_period or clk_period")
                
                # Check validity of numeric parameters
                if period_key and row[period_key]:
                    try:
                        clock_period = float(row[period_key])
                        self.assertGreater(clock_period, 0, "Clock period must be greater than 0")
                    except ValueError:
                        self.fail("Clock period must be a valid number")
                # compile_effort is optional, not enforced
    
    def test_placement_config(self):
        """Test placement configuration parameters"""
        place_file = self.config_dir / "placement.csv"
        if not place_file.exists():
            self.skipTest("placement.csv does not exist")
            
        with open(place_file, 'r') as f:
            reader = csv.DictReader(f)
            for row in reader:
                # Check density parameters
                if "target_util" in row and row["target_util"]:
                    try:
                        util = float(row["target_util"])
                        self.assertGreater(util, 0, "Target utilization must be greater than 0")
                        self.assertLessEqual(util, 1, "Target utilization cannot exceed 1")
                    except ValueError:
                        self.fail("Target utilization must be a valid number")

if __name__ == '__main__':
    unittest.main() 