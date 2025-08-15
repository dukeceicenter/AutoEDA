#!/usr/bin/env python3

import subprocess, datetime, os, argparse, gzip, shutil
from pathlib import Path
from fastapi import FastAPI
from pydantic import BaseModel
from jinja2 import Template
from typing import Optional, Dict, List, Tuple
from abc import ABC, abstractmethod

# Load environment variables from .env file at project root
from dotenv import load_dotenv

# Add project root to Python path
ROOT = Path(__file__).resolve().parent.parent.parent
load_dotenv(dotenv_path=ROOT / ".env")

class BaseServer(ABC):
    """
    Abstract base class for EDA servers.
    
    The server will automatically:
    - Set up workspace directories
    - Generate TCL scripts from your configuration
    - Call the appropriate executor
    - Collect and return reports
    """
    
    def __init__(self, server_name: str, log_dir_name: str, port_env: str, default_port: int):
        """
        Initialize the unified server.
        
        Args:
            server_name: Name of executor script ({server_name}_Executor.py)
            log_dir_name: Directory name for log files (under logs/)
            port_env: Environment variable name for port configuration
            default_port: Default port if environment variable not set
        """
        self.server_name = server_name
        self.log_dir_name = log_dir_name
        self.port_env = port_env
        self.default_port = default_port
        
        # Setup log directory
        self.log_dir = Path(os.getenv("LOG_ROOT", str(ROOT / "logs"))) / log_dir_name
        self.log_dir.mkdir(parents=True, exist_ok=True)
        
        # Create FastAPI app
        self.app = FastAPI(title=f"MCP · {server_name}")
        
        # Register endpoints
        self._register_endpoints()
    
    @abstractmethod
    def get_request_model(self) -> type[BaseModel]:
        """
        Return the Pydantic request model for this server.
        
        This model defines the API request structure and validation.
        Should return a Pydantic BaseModel class.
        
        Example:
            class MyReq(BaseModel):
                design: str
                tech: str = "FreePDK45"
                force: bool = True
            return MyReq
        """
        pass
    
    @abstractmethod
    def get_response_model(self) -> type[BaseModel]:
        """
        Return the Pydantic response model for this server.
        
        This model defines the API response structure.
        Should return a Pydantic BaseModel class.
        
        Example:
            class MyResp(BaseModel):
                status: str
                log_path: str
                reports: dict
                tcl_path: str
            return MyResp
        """
        pass
    
    @abstractmethod
    def get_workspace_setup_method(self):
        """
        Return the workspace setup method.
        
        Usually returns self.setup_workspace for standard behavior.
        Can be overridden for custom workspace setup logic.
        """
        pass
    
    @abstractmethod
    def get_executor_call_method(self):
        """
        Return the executor call method.
        
        Usually returns self.call_executor for standard behavior.
        Can be overridden for custom executor calling logic.
        """
        pass
    
    @abstractmethod
    def get_workspace_directory(self, req) -> Path:
        """
        Return the workspace directory path for the given request.
        
        Args:
            req: The request object containing design/tech/version info
            
        Returns:
            Path object pointing to the workspace directory
            
        Example:
            return ROOT / "designs" / req.design / req.tech / "synthesis" / req.syn_version
        """
        pass
    
    @abstractmethod
    def get_auto_version_field(self, req) -> str:
        """
        Return the field name for auto-versioning.

        Args:
            req: The request object
            
        Returns:
            String name of the field to auto-version
            
        Example:
            return "syn_version"  # Will auto-set req.syn_version if None
        """
        pass
    
    @abstractmethod
    def get_tcl_script_config(self, req) -> Dict:
        """
        Return TCL script configuration for this server type.
        
        Args:
            req: The request object
            
        Returns:
            Dictionary with TCL generation configuration
            
        Example:
            return {
                'title': 'Complete Synthesis TCL Script',
                'version_info': f'Design: {req.design}, Tech: {req.tech}',
                'script_paths': [ROOT / "src" / "scripts" / req.tech / "frontend" / "*.tcl"],
                'script_section_title': 'Frontend Scripts',
                'footer_title': 'Synthesis completed',
                'footer_content': 'exec touch _Finished_\nexit',
                'output_filename': 'complete_synthesis.tcl'
            }
        """
        pass
    
    @abstractmethod
    def get_output_directories(self) -> List[str]:
        """
        Return list of output directory names for this server type.
        
        These directories will be created in the workspace and cleaned up
        when force=True is specified.
        
        Returns:
            List of directory names to create
            
        Example:
            return ["pnr_save", "pnr_out", "pnr_reports"]  # For placement/CTS
            return ["reports", "results", "logs"]          # For synthesis
        """
        pass
    
    @abstractmethod
    def get_reports_directory(self) -> str:
        """
        Return the name of the directory containing reports.
        
        This is where the collect_reports() method will look for report files.
        
        Returns:
            String name of the reports directory
            
        Example:
            return "pnr_reports"  # For placement/CTS
            return "reports"       # For synthesis
        """
        pass
    
        
    @abstractmethod
    def get_report_files(self) -> List[Tuple[str, str]]:
        """
        Return list of (base_name, gz_name) report file pairs.
        
        This defines which reports the server should collect.
        The method will look for both compressed (.gz) and uncompressed files.
        
        Returns:
            List of tuples: [(base_name, gz_name), ...]
            
        Example:
            return [
                ("timing.rpt", "timing.rpt.gz"),
                ("area.rpt", "area.rpt"),
                ("power.rpt", "power.rpt.gz")
            ]
        """
        pass

    def collect_reports(self, workspace_dir: Path) -> Dict[str, str]:
        """
        Default implementation to collect reports from workspace.

        Args:
            workspace_dir: Path to the workspace directory
            
        Returns:
            Dictionary mapping report names to file paths or "Report not found"
            
        Note:
            Servers can override this method for custom report collection logic.
        """
        reports = {}
        rpt_dir = workspace_dir / self.get_reports_directory()
        
        for base_name, gz_name in self.get_report_files():
            found = False
            for name in [gz_name, base_name]:
                rpt_path = rpt_dir / name
                if rpt_path.exists():
                    if str(rpt_path).endswith(".gz"):
                        unzipped_path = rpt_dir / base_name
                        with gzip.open(rpt_path, "rb") as f_in, open(unzipped_path, "wb") as f_out:
                            shutil.copyfileobj(f_in, f_out)
                        reports[base_name] = str(unzipped_path)
                    else:
                        reports[base_name] = str(rpt_path)
                    found = True
                    break
            if not found:
                reports[base_name] = "Report not found"
        
        return reports
    
    # def remove_output_files(self, workspace_dir: Path):
    #     """
    #     Remove output files from workspace.
    #     """
    #     for output_dir in self.get_output_directories():
    #         output_path = workspace_dir / output_dir
    #         if not output_path.exists():
    #             continue
    #         for file in self.get_output_files():
    #             file_path = output_path / file
    #             file_path.unlink(missing_ok=True)

    #     return
    
    def generate_tcl_script(self, req, result_dir: Path) -> Path:
        """
        Generic TCL script generation method.
        
        This method:
        1. Reads design config and tech config files
        2. Combines multiple TCL scripts based on configuration
        3. Applies Jinja2 templating to replace variables
        4. Generates a complete TCL script with headers and footers
        
        Args:
            req: The request object containing parameters
            result_dir: Directory where the TCL script should be saved
            
        Returns:
            Path to the generated TCL script
        """
        config = self.get_tcl_script_config(req)
        
        # Read design config
        design_config = ROOT / "designs" / req.design / "config.tcl"
        design_config_content = ""
        if design_config.exists():
            design_config_content = design_config.read_text()
        
        # Read tech config
        tech_tcl_path = ROOT / "src" / "scripts" / req.tech / "tech.tcl"
        tech_content = ""
        if tech_tcl_path.exists():
            tech_content = tech_tcl_path.read_text()
        
        # Read and combine TCL scripts based on config
        combined_script_content = ""
        for script_path in config['script_paths']:
            if not script_path.exists():
                raise FileNotFoundError(f"Required script not found: {script_path}")
            
            with open(script_path, "r") as f:
                script_content = f.read()
                combined_script_content += f"#===============================================================================\n"
                combined_script_content += f"# Script: {script_path.name}\n"
                combined_script_content += f"#===============================================================================\n\n"
                combined_script_content += script_content + "\n\n"
        
        # Replace template variables using Jinja2
        combined_script_content = Template(combined_script_content).render(**vars(req))
        
        # Generate complete TCL content
        tcl_content = f"""#===============================================================================
# Complete {config['title']} TCL Script
# Generated by MCP EDA Server
# Design: {req.design}
# Tech: {req.tech}
# {config.get('version_info', '')}
# Generated at: {datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")}
#==============================================================================="""
        
        tcl_content += f"""
#-------------------------------------------------------------------------------
# Design Config (from config.tcl)
#-------------------------------------------------------------------------------
{design_config_content}

#-------------------------------------------------------------------------------
# Technology Configuration (from tech.tcl)
#-------------------------------------------------------------------------------
{tech_content}

#-------------------------------------------------------------------------------
# {config['script_section_title']}
#-------------------------------------------------------------------------------
{combined_script_content}

#-------------------------------------------------------------------------------
# {config['footer_title']}
#-------------------------------------------------------------------------------
"""
        
        tcl_path = result_dir / config['output_filename']
        tcl_path.write_text(tcl_content)
        return tcl_path
    
    def setup_workspace(self, req, log_file: Path) -> Tuple[bool, str, Path, Dict]:
        """
        Generic workspace setup with caching support.

        Args:
            req: The request object
            log_file: Path to the log file for writing status
            
        Returns:
            Tuple of (success, status_message, workspace_dir, reports_dict)
        """
        
        try:
            workspace_dir = self.get_workspace_directory(req)
            print(f"Workspace directory: {workspace_dir}")
            # Check if directories exist
            if workspace_dir.exists():
                if not getattr(req, 'force', True):
                    # Collect existing reports to return last call response
                    reports = self.collect_reports(workspace_dir)
                    
                    with log_file.open("w") as lf:
                        lf.write(f"=== {self.server_name} Workspace Setup ===\n")
                        lf.write(f"[Warning] {workspace_dir} already exists! Skipped...\n")
                        lf.write(f"Returning last call response.\n")
                    
                    return True, "workspace created (already existed)", workspace_dir, reports
                else:
                    # Force overwrite - remove existing output directories
                    # self.remove_output_files(workspace_dir) # TODO: all files produced by the server
                    pass
            
            # Create all necessary subdirectories
            workspace_dir.mkdir(parents=True, exist_ok=True)
            for subdir in self.get_output_directories():
                (workspace_dir / subdir).mkdir(exist_ok=True)
            
            with log_file.open("w") as lf:
                lf.write(f"=== {self.server_name} Workspace Setup ===\n")
                lf.write(f"Workspace Directory: {workspace_dir}\n")
                lf.write("Workspace setup completed successfully.\n")

            return True, "workspace created", workspace_dir, {}

        except Exception as e:
            return False, f"error: {e}", None, {}
    
    def _find_latest_synthesis_version(self, design: str, tech: str) -> str:
        """
        Find the latest synthesis version for a given design and technology.

        Args:
            design: Design name
            tech: Technology name

        Returns:
            Latest synthesis version name, or timestamp if none found
            
        Raises:
            FileNotFoundError: If synthesis directory or versions not found
        """
        synthesis_dir = ROOT / "designs" / design / tech / "synthesis"
        
        if not synthesis_dir.exists():
            raise FileNotFoundError(f"Synthesis directory not found: {synthesis_dir}")
        
        # Get all synthesis version directories
        syn_versions = [d.name for d in synthesis_dir.iterdir() if d.is_dir()]
        
        if not syn_versions:
            raise FileNotFoundError(f"No synthesis versions found in {synthesis_dir}")
        
        # Sort by name (assuming timestamp format) and take the latest
        syn_versions.sort()
        latest_version = syn_versions[-1]
        print(f"Auto-detected latest synthesis version: {latest_version}")
        return latest_version

    def _find_latest_implementation_version(self, design: str, tech: str, syn_ver: str) -> str:
        """
        Find the latest implementation version for a given design, technology, and synthesis version.

        Args:
            design: Design name
            tech: Technology name
            syn_ver: Synthesis version

        Returns:
            Latest implementation version name, or timestamp if none found
            
        Raises:
            FileNotFoundError: If implementation directory or versions not found
        """
        impl_dir = ROOT / "designs" / design / tech / "implementation"
        
        if not impl_dir.exists():
            raise FileNotFoundError(f"Implementation directory not found: {impl_dir}")
        
        # Get all implementation directories that match the synthesis version pattern
        impl_versions = []
        for impl_subdir in impl_dir.iterdir():
            if impl_subdir.is_dir() and impl_subdir.name.startswith(f"{syn_ver}__"):
                # Extract the impl_ver part after the double underscore
                impl_ver = impl_subdir.name.split("__", 1)[1]
                impl_versions.append(impl_ver)
        
        if not impl_versions:
            raise FileNotFoundError(f"No implementation versions found for synthesis version {syn_ver} in {impl_dir}")
        
        # Sort by name (assuming timestamp format) and take the latest
        impl_versions.sort()
        latest_version = impl_versions[-1]
        print(f"Auto-detected latest implementation version: {latest_version}")
        return latest_version
    
    def _find_latest_enc_file(self, design: str, tech: str, syn_ver: str, impl_ver: str, enc_type: str) -> str:
        """
        Find the latest .enc file for a given design and technology.
        
        Args:
            design: Design name
            tech: Technology name
            syn_ver: Synthesis version
            impl_ver: Implementation version
            enc_type: Type of .enc file (e.g., "placement", "cts")
            
        Returns:
            Path to the latest .enc file
            
        Raises:
            FileNotFoundError: If .enc file not found
        """
        # Try to find .enc file in the specific impl_ver directory
        specific_dir = ROOT / "designs" / design / tech / "implementation" / f"{syn_ver}__{impl_ver}"
        enc_path = specific_dir / "pnr_save" / f"{enc_type}.enc"
        
        if enc_path.exists():
            print(f"Found {enc_type}.enc in specific directory: {enc_path}")
            return str(enc_path)
        else:
            raise FileNotFoundError(f"{enc_type}.enc not found in specific directory: {enc_path}")
    
    def call_executor(self, tcl_file: Path, workspace_dir: Path, req, log_file: Path) -> Tuple[bool, str, Dict]:
        """
        Generic executor call with report collection.
        
        This method:
        1. Builds the unified executor command based on server name
        2. Sets up environment variables
        3. Executes the command with timeout
        4. Logs all output and errors
        5. Collects reports after successful execution
        
        Args:
            tcl_file: Path to the TCL script to execute
            workspace_dir: Path to the workspace directory
            req: The request object
            log_file: Path to the log file
            
        Returns:
            Tuple of (success, status_message, reports_dict)
        """
        
        try:
            # Build unified executor command
            executor_path = ROOT / "src" / "server" / "executor.py"
            cmd = [
                "python", str(executor_path),
                "-mode", self.server_name,
                "-tcl", str(tcl_file),
                "-workspace", str(workspace_dir)
            ]
            
            # Set up environment
            env = os.environ.copy()
            env['BASE_DIR'] = str(ROOT)
            
            # Execute the executor
            with log_file.open("a") as lf:
                lf.write(f"\n=== Calling Unified Executor ===\n")
                lf.write(f"Mode: {self.server_name}\n")
                lf.write(f"Command: {' '.join(cmd)}\n")
                lf.write(f"Working Directory: {workspace_dir}\n")
                lf.write(f"Executor started at: {datetime.datetime.now()}\n\n")
            
            result = subprocess.run(
                cmd,
                cwd=str(workspace_dir),
                env=env,
                capture_output=True,
                text=True,
                timeout=36000  # 10 hour timeout
            )
            
            # Log the execution results
            with log_file.open("a") as lf:
                lf.write(f"\n=== Executor Results ===\n")
                lf.write(f"Return code: {result.returncode}\n")
                lf.write(f"STDOUT:\n{result.stdout}\n")
                if result.stderr:
                    lf.write(f"STDERR:\n{result.stderr}\n")
            
            if result.returncode != 0:
                return False, f"executor failed with code {result.returncode}", {}
            
            # Collect reports using the generic method
            reports = self.collect_reports(workspace_dir)
            
            return True, f"{self.server_name} completed successfully", reports

        except subprocess.TimeoutExpired:
            return False, "executor timeout (10 hours)", {}
        except Exception as e:
            return False, f"error: {e}", {}
    
    def _register_endpoints(self):
        """
        Register the main endpoint.
        """
        
        @self.app.post("/run", response_model=self.get_response_model())
        def run_workflow(req: self.get_request_model()):
            """
            Main workflow endpoint: TCL generation + executor call
            
            Args:
                req: The request object (validated by Pydantic)
                
            Returns:
                Response object with status, log path, reports, and TCL path
            """
            
            ts = datetime.datetime.now().strftime("%Y%m%d_%H%M%S")
            log_file = self.log_dir / f"{req.design}_{self.log_dir_name}_{ts}.log"
            result_dir = ROOT / "result" / req.design / req.tech
            result_dir.mkdir(parents=True, exist_ok=True)
            
            # Auto-version handling
            version_field = self.get_auto_version_field(req)
            if getattr(req, version_field) is None:
                setattr(req, version_field, ts)
            
            try:
                # Phase 1: Setup workspace
                if getattr(req, 'skip_execution', True):
                    pass
                else:
                    workspace_success, workspace_status, workspace_dir, reports = self.setup_workspace(req, log_file)
                    
                    if not workspace_success:
                        return self.get_response_model()(
                            status=workspace_status,
                            log_path=str(log_file),
                            reports={"error": workspace_status},
                            tcl_path=""
                        )
                    
                    # If workspace already existed and force=False, return last call response
                    if "already existed" in workspace_status and not getattr(req, 'force', True):
                        return self.get_response_model()(
                            status="execution_completed (cached)",
                            log_path=str(log_file),
                            reports={"workspace": workspace_status, "workflow": "cached from previous run", **reports},
                            tcl_path=""
                        )
                    
                # Phase 2: Generate complete TCL file
                tcl_file = self.generate_tcl_script(req, result_dir)
                
                # Phase 3: Call executor to run workflow
                if getattr(req, 'skip_execution', True):
                    # Skip execution, just return TCL generation results
                    final_reports = {
                        "workspace": "skipped_execution", 
                        "workflow": "skipped_execution",
                        "note": "TCL generation only - execution skipped"
                    }
                    exec_success = True
                    exec_status = "execution_skipped"
                else:
                    # Normal execution
                    exec_success, exec_status, reports = self.call_executor(tcl_file, workspace_dir, req, log_file)
                    
                    if not exec_success:
                        return self.get_response_model()(
                            status=exec_status,
                            log_path=str(log_file),
                            reports={"error": exec_status},
                            tcl_path=str(tcl_file)
                        )
                    
                    final_reports = {"workspace": workspace_status, "workflow": exec_status}
                    final_reports.update(reports)
                
                return self.get_response_model()(
                    status="execution_completed",
                    log_path=str(log_file),
                    reports=final_reports,
                    tcl_path=str(tcl_file)
                )

            except Exception as e:
                return self.get_response_model()(
                    status=f"error: {e}",
                    log_path=str(log_file),
                    reports={"error": str(e)},
                    tcl_path=""
                )
    
    def run_server(self, port: int = None):
        """
        Run the server.
        
        This method starts the FastAPI server using uvicorn.
        Port can be specified directly or via environment variable.
        
        Args:
            port: Port to run on (overrides environment variable)
        """
        if port is None:
            port = int(os.getenv(self.port_env, self.default_port))
        
        import uvicorn
        uvicorn.run(
            self.app,
            host="0.0.0.0",
            port=port,
            reload=False,  
            log_level="info",
        )

if __name__ == "__main__":
    print("This is an abstract base class. Please use a concrete implementation.")
