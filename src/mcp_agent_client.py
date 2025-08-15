#!/usr/bin/env python3

import os
import json
import requests
import re
import pathlib
from fastapi import FastAPI, HTTPException
from pydantic import BaseModel
from dotenv import load_dotenv
from typing import Any, Dict, Optional, List, Tuple
from dataclasses import dataclass
import datetime

def load_env() -> Tuple[str]:
    load_dotenv()
    MCP_SERVER_HOST = os.getenv("MCP_SERVER_HOST", "http://localhost")
    return (MCP_SERVER_HOST,)

MCP_SERVER_HOST, = load_env()
app = FastAPI(title="Intelligent MCP EDA Agent (Local Qwen SFT)")

class LocalLLM:
    """Minimal loader/inference wrapper for local Qwen SFT model.

    Attempts to load from several candidate directories. If transformers is not
    available or model directory missing, generation will raise RuntimeError
    and the caller should fallback to heuristic logic.
    """

    def __init__(self, model_dir: Optional[str] = None):
        self.available = False
        self.model = None
        self.tokenizer = None
        self.device = "cpu"
        self.model_dir = model_dir
        if self.model_dir is None:
            root = "/home/yl996/proj/mcp-eda-example/src"
            candidates = [
                os.getenv("SFT_MODEL_PATH"),
                os.path.join(root, "sft model"),
                os.path.join(root, "sft_model"),
                os.path.join(root, "sft"),
            ]
            self.candidate_paths = [p for p in candidates if p]
        else:
            self.candidate_paths = [self.model_dir]
        self._try_load()

    def _try_load(self):
        if self.available:
            return
        try:
            from transformers import AutoTokenizer, AutoModelForCausalLM
            import torch
        except Exception:
            return
        def has_artifacts(p: str) -> bool:
            return os.path.isfile(os.path.join(p, "model.safetensors")) or os.path.isfile(os.path.join(p, "pytorch_model.bin"))

        for base in self.candidate_paths:
            try:
                if not base or not os.path.isdir(base):
                    continue

                candidate_dirs = []
                # Direct dir if it has artifacts
                if has_artifacts(base):
                    candidate_dirs.append(base)
                # Search under runs/* if present
                runs_dir = os.path.join(base, "runs")
                if os.path.isdir(runs_dir):
                    subdirs = [os.path.join(runs_dir, d) for d in os.listdir(runs_dir) if os.path.isdir(os.path.join(runs_dir, d))]
                    # Sort by mtime desc
                    subdirs.sort(key=lambda d: os.path.getmtime(d), reverse=True)
                    for d in subdirs:
                        if has_artifacts(d):
                            candidate_dirs.append(d)

                for path in candidate_dirs:
                    try:
                        self.tokenizer = AutoTokenizer.from_pretrained(path, trust_remote_code=True, local_files_only=True)
                        self.model = AutoModelForCausalLM.from_pretrained(
                            path,
                            trust_remote_code=True,
                            local_files_only=True,
                        )
                        if torch.cuda.is_available():
                            self.model = self.model.to("cuda")
                            self.device = "cuda"
                        else:
                            self.model = self.model.to("cpu")
                            self.device = "cpu"
                        self.available = True
                        break
                    except Exception:
                        continue
                if self.available:
                    break
            except Exception:
                continue

    def _gen(self, prompt: str, max_new_tokens: int = 256, temperature: float = 0.1) -> str:
        self._try_load()
        if not self.available:
            raise RuntimeError("Local LLM not available")
        import torch
        inputs = self.tokenizer(prompt, return_tensors="pt").to(self.device)
        with torch.no_grad():
            generation_kwargs = {
                **inputs,
                "max_new_tokens": max_new_tokens,
                "pad_token_id": self.tokenizer.eos_token_id,
                "eos_token_id": self.tokenizer.eos_token_id,
            }
            if temperature > 0:
                generation_kwargs.update({
                    "do_sample": True,
                    "temperature": temperature,
                })
            else:
                generation_kwargs["do_sample"] = False
            output = self.model.generate(**generation_kwargs)
        text = self.tokenizer.decode(output[0], skip_special_tokens=True)
        if text.startswith(prompt):
            return text[len(prompt):].strip()
        return text.strip()

    def generate_json(self, system_instruction: str, user_instruction: str, schema_hint: str) -> Dict[str, Any]:
        try:
            self._try_load()
            if not self.available:
                raise RuntimeError("Local LLM not available")
            
            prompt = (
                f"{system_instruction}\n\n"
                f"{user_instruction}\n\n"
                "Return ONLY one JSON object. No extra text.\n"
                f"Schema: {schema_hint}\n"
            )
            for temp in (0.1, 0.0):
                try:
                    raw = self._gen(prompt, temperature=temp, max_new_tokens=128)
                    m = re.search(r"\{[\s\S]*\}", raw)
                    if not m:
                        continue
                    return json.loads(m.group(0))
                except Exception as e:
                    print(f"Generation attempt failed with temp={temp}: {e}")
                    continue
            raise RuntimeError("JSON generation failed after all attempts")
        except Exception as e:
            print(f"LocalLLM.generate_json failed: {e}")
            raise


llm = LocalLLM()

@dataclass
class UserSession:
    """User session context"""
    last_parameters: Optional[Dict[str, Any]] = None
    last_tool: str = ""
    preferences: Optional[Dict[str, Any]] = None
    history: Optional[List[Dict[str, Any]]] = None
    
    def __post_init__(self):
        if self.history is None:
            self.history = []
        if self.preferences is None:
            self.preferences = {}

# Global session storage (should use database in production)
user_sessions: Dict[str, UserSession] = {}

class Instruction(BaseModel):
    user_query: str
    session_id: str = "default"  # Remove Optional, provide default value

class AgentResponse(BaseModel):
    tool_called: str
    tool_input: dict
    tool_output: dict
    ai_reasoning: str
    conflicts_detected: Optional[List[str]] = None
    suggestions: Optional[List[str]] = None

# Enhanced parameter extractor
class EnhancedParameterExtractor:
    """Enhanced parameter extractor"""
    
    def __init__(self):
        # Extended parameter mappings
        self.parameter_patterns = {
            # Numerical parameters
            "target_util": [
                r'utilization.*?([0-9.]+)',
                r'density.*?([0-9.]+)',
                r'fill.*?([0-9.]+)',
                r'occupancy.*?([0-9.]+)'
            ],
            "version_idx": [
                r'version.*?index.*?([0-9]+)',
                r'config.*?version.*?([0-9]+)',
                r'synthesis.*?version.*?([0-9]+)',
                r'version.*?([0-9]+)'
            ],
            "clk_period": [
                r'clock.*?period.*?([0-9.]+)\s*ns',
                r'period.*?([0-9.]+)\s*ns'
            ],
            "ASPECT_RATIO": [
                r'aspect.*?ratio.*?([0-9.]+)',
                r'width.*?height.*?ratio.*?([0-9.]+)',
                r'length.*?width.*?ratio.*?([0-9.]+)'
            ]
        }
        
        # Relative change patterns
        self.relative_patterns = {
            "increase": [r'(increase|higher|larger).*?([0-9.]+)?', 1.2],
            "decrease": [r'(decrease|lower|smaller).*?([0-9.]+)?', 0.8],
            "slight_increase": [r'(slightly|slight).*?(increase|higher)', 1.1],
            "slight_decrease": [r'(slightly|slight).*?(decrease|lower)', 0.9],
            "significant_increase": [r'(significantly|significant|obviously).*?(increase|higher)', 1.5],
            "significant_decrease": [r'(significantly|significant|obviously).*?(decrease|lower)', 0.6]
        }
        
        # Descriptive parameter mappings
        self.descriptive_mapping = {
            "utilization": {
                "low": 0.5, "medium": 0.7, "high": 0.85, "very_high": 0.9,
                "sparse": 0.4, "tight": 0.8, "dense": 0.9
            },
            "clock_frequency": {
                "low_freq": 20.0, "medium_freq": 10.0, "high_freq": 5.0, "ultra_high_freq": 2.0
            }
        }
        
        # Frequency to period conversion
        self.frequency_pattern = r'frequency.*?([0-9.]+)\s*MHz'
    
    def extract_parameters(self, query: str, previous_params: Optional[Dict[str, Any]] = None) -> Dict[str, Any]:
        """Enhanced parameter extraction"""
        extracted = {}
        query_lower = query.lower()
        
        # 1. Basic numerical parameter extraction
        for param, patterns in self.parameter_patterns.items():
            for pattern in patterns:
                match = re.search(pattern, query_lower)
                if match:
                    try:
                        if param == "version_idx":
                            extracted[param] = int(match.group(1))
                        else:
                            extracted[param] = float(match.group(1))
                        break
                    except (ValueError, IndexError):
                        continue
        
        # 2. Frequency to period conversion
        freq_match = re.search(self.frequency_pattern, query_lower)
        if freq_match:
            try:
                freq_mhz = float(freq_match.group(1))
                extracted["clk_period"] = 1000.0 / freq_mhz  # MHz to ns
            except (ValueError, IndexError):
                pass
        
        # 3. Descriptive parameter mapping
        for param_type, mapping in self.descriptive_mapping.items():
            for desc, value in mapping.items():
                if desc in query_lower:
                    if param_type == "utilization":
                        extracted["target_util"] = value
                    elif param_type == "clock_frequency":
                        extracted["clk_period"] = value
                    break
        
        # Handle boolean force parameter
        force_patterns = [
            r'force',
            r'overwrite',
            r'force.*?overwrite',
            r'force.*?re.*?run',
            r'ignore.*?existing'
        ]
        
        for pattern in force_patterns:
            if re.search(pattern, query_lower):
                extracted["force"] = True
                break
        
        # 4. Relative change processing
        if previous_params:
            for change_type, (pattern, multiplier) in self.relative_patterns.items():
                if re.search(pattern, query_lower):
                    for param in ["target_util", "clk_period", "ASPECT_RATIO"]:
                        if param in previous_params:
                            extracted[param] = previous_params[param] * multiplier
                    # Handle version_idx separately (integer increment/decrement)
                    if "version_idx" in previous_params:
                        if "increase" in change_type:
                            extracted["version_idx"] = previous_params["version_idx"] + 1
                        elif "decrease" in change_type:
                            extracted["version_idx"] = max(0, previous_params["version_idx"] - 1)
                    break
        
        # 5. Context reference processing
        context_patterns = [
            r'same.*?(as|like).*?(before|previous|last)',
            r'use.*?(before|previous|last).*?settings',
            r'keep.*?(before|previous|last)',
            r'run.*?again',
            r'do.*?again',
            r're.*?run',
            r'continue.*?running'
        ]
        
        for pattern in context_patterns:
            if re.search(pattern, query_lower) and previous_params:
                # Reuse previous settings
                for key, value in previous_params.items():
                    if key not in extracted:
                        extracted[key] = value
                break
        
        # 6. Auto-inherit base parameters (if not specified in query and available in session)
        # Note: Only inherit non-critical parameters to avoid cross-design contamination
        if previous_params:
            # Only inherit safe parameters, not design-specific ones like 'design', 'top_module'
            safe_inherited_params = ["tech", "version_idx", "force"]
            for param in safe_inherited_params:
                if param not in extracted and param in previous_params:
                    extracted[param] = previous_params[param]
            
            # For syn_ver and impl_ver, only inherit if the design name is explicitly the same
            design_in_query = self.extract_design_from_query(query)
            previous_design = previous_params.get("design")
            
            if design_in_query and previous_design and design_in_query == previous_design:
                # Same design, can inherit version parameters
                version_params = ["syn_ver", "impl_ver"]
                for param in version_params:
                    if param not in extracted and param in previous_params:
                        extracted[param] = previous_params[param]
        
        return extracted
    
    def extract_design_from_query(self, query: str) -> Optional[str]:
        """Extract design name from user query"""
        query_lower = query.lower()
        
        # Common design name patterns
        design_patterns = [
            r'design\s+(\w+)',
            r'run\s+(\w+)',
            r'execute\s+(\w+)',
            r'process\s+(\w+)',
            r'synthesis\s+for\s+(\w+)',
            r'synthesis\s+(\w+)',
            r'(\w+)\s+synthesis',
            r'compile\s+(\w+)',
            r'(\w+)\s+compile',
            r'(\w+)\s+design',
            # Direct design name patterns
            r'\b(des|b14|aes|riscv|cpu|gpu|soc)\b'
        ]
        
        for pattern in design_patterns:
            match = re.search(pattern, query_lower)
            if match:
                design_name = match.group(1)
                # Filter out common non-design words
                if design_name not in ['the', 'and', 'for', 'with', 'using', 'run', 'execute', 'process']:
                    return design_name
        
        return None

# Conflict detector
class ConflictDetector:
    """Conflict requirement detector"""
    
    def __init__(self):
        self.conflicts = {
            ("power", "performance"): "Low power usually means performance may be limited",
            ("area", "performance"): "Small area design may affect timing performance",
            ("speed", "quality"): "Fast flow may affect design quality",
            ("utilization", "timing"): "High utilization may cause timing issues"
        }
    
    def detect_conflicts(self, query: str, strategy: str) -> List[str]:
        """Detect conflicting requirements"""
        detected = []
        query_lower = query.lower()
        
        # Detect power vs performance conflict
        if ("power" in query_lower or "low_power" in query_lower) and \
           ("performance" in query_lower or "high_performance" in query_lower):
            detected.append("Power and performance requirements may conflict")
        
        # Detect area vs performance conflict
        if ("area" in query_lower or "small_area" in query_lower) and \
           ("performance" in query_lower or "high_performance" in query_lower):
            detected.append("Area and performance requirements may conflict")
        
        # Detect speed vs quality conflict
        if ("fast" in query_lower or "speed" in query_lower) and \
           ("quality" in query_lower or "best_quality" in query_lower):
            detected.append("Speed and quality requirements may conflict")
        
        return detected

# Strategy parameter mappings
STRATEGY_PARAMS = {
    "fast": {
        "design_flow_effort": "express",
        "design_power_effort": "none",
        "target_util": 0.5,
        "ASPECT_RATIO": 1.0,
        "clk_period": 15.0
    },
    "performance": {
        "design_flow_effort": "standard",
        "design_power_effort": "medium",
        "target_util": 0.85,
        "ASPECT_RATIO": 1.0,
        "clk_period": 5.0
    },
    "power": {
        "design_flow_effort": "standard",
        "design_power_effort": "high",
        "target_util": 0.7,
        "ASPECT_RATIO": 1.2,
        "clk_period": 10.0
    },
    "area": {
        "design_flow_effort": "standard",
        "design_power_effort": "medium",
        "target_util": 0.9,
        "ASPECT_RATIO": 1.2,
        "clk_period": 8.0
    }
}

def get_session(session_id: str) -> UserSession:
    """Get or create user session"""
    if session_id not in user_sessions:
        user_sessions[session_id] = UserSession()
    return user_sessions[session_id]

def update_session(session_id: str, tool: str, params: Dict[str, Any], strategy: str):
    """Update user session"""
    session = get_session(session_id)
    session.last_tool = tool
    session.last_parameters = params.copy()
    
    # Ensure preferences is not None
    if session.preferences is None:
        session.preferences = {}
    session.preferences[f"preferred_strategy"] = strategy
    
    # Ensure history is not None
    if session.history is None:
        session.history = []
    session.history.append({
        "timestamp": datetime.datetime.now().isoformat(),
        "tool": tool,
        "parameters": params,
        "strategy": strategy
    })
    
    # Keep only recent 10 history entries
    if len(session.history) > 10:
        session.history = session.history[-10:]

def find_exact_enc(design: str, impl_ver: str, stage: str) -> str:
    """Find the exact .enc file for a specific stage and implementation version"""
    base_path = pathlib.Path(f"designs/{design}/FreePDK45/implementation/{impl_ver}/pnr_save")
    enc_file = base_path / f"{stage}.enc"
    
    if enc_file.exists():
        return str(enc_file)
    return ""

def get_latest_synthesis_version_by_mtime(design: str, tech: str) -> Optional[str]:
    """Pick latest synthesis version directory by modification time."""
    base_dir = pathlib.Path(f"designs/{design}/{tech}/synthesis")
    if not base_dir.exists():
        return None
    dirs = [d for d in base_dir.iterdir() if d.is_dir()]
    if not dirs:
        return None
    latest = max(dirs, key=lambda d: d.stat().st_mtime)
    return latest.name

def get_latest_impl_ver_by_mtime(design: str, tech: str, syn_ver: str) -> Optional[str]:
    """Pick latest implementation version by modification time for a given synthesis version.
    Returns the impl_ver part (right side of syn_ver__impl_ver).
    """
    base_dir = pathlib.Path(f"designs/{design}/{tech}/implementation")
    if not base_dir.exists():
        return None
    candidates = []
    prefix = f"{syn_ver}__"
    for d in base_dir.iterdir():
        if d.is_dir() and d.name.startswith(prefix):
            candidates.append(d)
    if not candidates:
        return None
    latest = max(candidates, key=lambda d: d.stat().st_mtime)
    # Return the impl_ver substring after the first "__"
    return latest.name.split("__", 1)[1]

async def execute_multi_stage_flow(flow_name: str, params: Dict[str, Any], strategy: str, session_id: str) -> AgentResponse:
    """Execute multi-stage EDA flows with current servers (synthesis → placement → cts → routing)."""

    stage_requirements = params.get("stage_requirements", {})

    flow_definitions = {
        "synth": [
            ("synthesis", {"design": params.get("design", "des"), "tech": params.get("tech", "FreePDK45"), "force": params.get("force", True)})
        ],
        "pnr": [
            ("placement", {"design": params.get("design", "des"), "tech": params.get("tech", "FreePDK45"), "force": params.get("force", True) }),
            ("cts",       {"design": params.get("design", "des"), "tech": params.get("tech", "FreePDK45"), "force": params.get("force", True) }),
            ("routing",   {"design": params.get("design", "des"), "tech": params.get("tech", "FreePDK45"), "force": params.get("force", True) }),
        ],
        "full_flow": [
            ("synthesis", {"design": params.get("design", "des"), "tech": params.get("tech", "FreePDK45"), "force": params.get("force", True) }),
            ("placement", {"design": params.get("design", "des"), "tech": params.get("tech", "FreePDK45"), "force": params.get("force", True) }),
            ("cts",       {"design": params.get("design", "des"), "tech": params.get("tech", "FreePDK45"), "force": params.get("force", True) }),
            ("routing",   {"design": params.get("design", "des"), "tech": params.get("tech", "FreePDK45"), "force": params.get("force", True) }),
        ],
    }
    
    if flow_name not in flow_definitions:
        raise HTTPException(status_code=400, detail=f"Unknown flow: {flow_name}")
    
    stages = flow_definitions[flow_name]
    results = []
    
    for stage_name, base_stage_params in stages:
        # Create a copy of base parameters
        stage_params = base_stage_params.copy()
        
        # Add strategy to all stages (advisory only)
        stage_params["strategy"] = strategy

        # Apply stage-specific requirements if available
        if stage_name in stage_requirements:
            stage_req = stage_requirements[stage_name]
            
            # Add requirements text to stage parameters
            if "requirements" in stage_req:
                stage_params["requirements"] = stage_req["requirements"]
            
            # Add specific parameters for this stage
            if "parameters" in stage_req:
                stage_params.update(stage_req["parameters"])
        
        # Map common extracted names
        if "clk_period" in params and "period" not in stage_params:
            stage_params["period"] = params["clk_period"]
        
        # Call the stage
        if stage_name not in TOOLS:
            raise HTTPException(status_code=400, detail=f"Unknown tool: {stage_name}")
        
        info = TOOLS[stage_name]
        url = f"{MCP_SERVER_HOST}:{info['port']}{info['path']}"
        
        # Filter payload per stage to avoid extra fields
        if stage_name == "synthesis":
            allowed = {
                "design","tech","syn_version","period","fanout_value","transition_value","capacitance_value",
                "compile_cmd","power_effort","area_effort","map_effort","dynamic_optimization","leakage_optimization",
                "force","skip_execution"
            }
            # Map syn_ver to syn_version if present
            if "syn_ver" in stage_params and "syn_version" not in stage_params:
                stage_params["syn_version"] = stage_params.pop("syn_ver")
            payload = {k: v for k, v in stage_params.items() if k in allowed}
        else:
            general = {"design","tech","syn_ver","impl_ver","restore_enc","force","skip_execution"}
            placement_knobs = {
                "flowEffort","globalPowerEffort","aspectRatio","rowDensity","place_global_timing_effort",
                "place_global_cong_effort","place_detail_wire_length_opt_effort","place_global_max_density",
                "place_global_activity_power_driven","maxDensity","powerEffort","reclaimArea","fixFanoutLoad"
            }
            payload = {k: v for k, v in stage_params.items() if k in general.union(placement_knobs)}

        try:
            response = requests.post(url, json=payload, timeout=3600)
            response.raise_for_status()
            stage_output = response.json()
            results.append({
                "stage": stage_name,
                "params": stage_params,
                "output": stage_output
            })
            
            # Update session after each stage
            update_session(session_id, stage_name, stage_params, strategy)
            
        except requests.exceptions.RequestException as e:
            raise HTTPException(status_code=500, detail=f"Stage {stage_name} execution failed: {str(e)}")
    
    # Generate summary for multi-stage execution
    summary = f"Successfully executed {flow_name} flow with {len(stages)} stages:\n"
    for result in results:
        summary += f"- {result['stage']}: {result['output'].get('message', 'Completed')}\n"
    
    return AgentResponse(
        tool_called=flow_name,
        tool_input=params,
        tool_output={"stages": results, "flow_type": flow_name},
        ai_reasoning=f"Successfully executed {flow_name} flow with {strategy} strategy. Completed {len(stages)} stages: {', '.join([stage[0] for stage in stages])}",
        conflicts_detected=None,
        suggestions=[f"{flow_name} flow completed with {strategy} optimization"]
    )

# Required parameters for each tool (aligned with current servers)
REQUIRED_PARAMS = {
    "synthesis": ["design"],
    "placement": ["design"],
    "cts": ["design"],
    "routing": ["design"],
}

# EDA tool server endpoints (aligned names)
TOOLS = {
    "synthesis": {"port": 18001, "path": "/run"},
    "placement": {"port": 18002, "path": "/run"},
    "cts": {"port": 18003, "path": "/run"},
    "routing": {"port": 18004, "path": "/run"},
}

async def intelligent_agent(instruction: Instruction) -> AgentResponse:
    """Intelligent agent using local Qwen SFT with heuristic fallbacks"""
    
    # Get user session
    session = get_session(instruction.session_id)
    
    # Initialize extractors
    extractor = EnhancedParameterExtractor()
    conflict_detector = ConflictDetector()
    
    # Step 1: AI tool selection and base parameter extraction
    TOOL_SELECTION_PROMPT = f"""
You are an intelligent EDA tool selector. Analyze the user query and select the appropriate EDA tool(s) and extract basic parameters.

IMPORTANT: Provide all responses in English only, regardless of the input language.

Available tools:
- synth: Complete RTL-to-gate synthesis (setup + compile)
- placement: Unified placement flow (floorplan + powerplan + placement)
- cts: Clock tree synthesis
- routing: Unified routing and save flow (routing + save design)
- pnr: Complete P&R flow (placement + cts + routing)
- full_flow: Complete EDA flow (all stages)

Required parameters:
- design: Design name
- tech: Technology library (optional, default: FreePDK45)
- version_idx: Synthesis configuration version index (optional, default: 0)
- top_module: Top module name (required for physical design stages)
- syn_ver: Synthesis version (optional, default: cpV1_clkP1_drcV1)
- impl_ver: Implementation version (optional, default: cpV1_clkP1_drcV1__g0_p0)
- force: Force overwrite existing results (optional, default: false)

Stage-specific requirements (for multi-stage flows):
If user mentions specific requirements for stages like "placement requirements: area optimization", 
"cts requirements: low power", "routing requirements: timing optimization", extract them.

User query: "{instruction.user_query}"

Return JSON response:
{{
    "tool": "selected_tool_name",
    "tool_input": {{
        "design": "extracted_design",
        "top_module": "extracted_top_module",
        "syn_ver": "extracted_or_default",
        "impl_ver": "extracted_or_default",
        "stage_requirements": {{
            "placement": {{"requirements": "extracted_text", "parameters": {{}}}},
            "cts": {{"requirements": "extracted_text", "parameters": {{}}}},
            "routing": {{"requirements": "extracted_text", "parameters": {{}}}}
        }}
    }}
}}

Only include stages in stage_requirements that have specific requirements mentioned by the user.
"""

    # Local LLM JSON generation with heuristic fallback
    tool_schema = '{"tool": "one of [synthesis, placement, cts, routing, pnr, full_flow]", "tool_input": {"design": "string", "tech": "string (optional)", "syn_ver": "string (optional)", "impl_ver": "string (optional)", "stage_requirements": "object (optional)"}}'
    sys_inst = "You are an EDA tool selector extracting structured JSON."
    usr_inst = f"User query: {instruction.user_query}"
    try:
        tool_data = llm.generate_json(sys_inst, usr_inst, tool_schema)
        tool_name = tool_data.get("tool", "full_flow")
        base_params = tool_data.get("tool_input", {})
    except Exception:
        q = instruction.user_query.lower()
        base_params = {"design": "des", "tech": "FreePDK45"}
        if any(k in q for k in ["full_flow", "complete flow", "all stages"]):
            tool_name = "full_flow"
        elif any(k in q for k in ["pnr", "place and route", "placement and routing", "routing", "placement"]):
            tool_name = "pnr"
        elif any(k in q for k in ["cts", "clock", "clock tree"]):
            tool_name = "cts"
        elif any(k in q for k in ["synth", "synthesis", "synthesize"]):
            tool_name = "synthesis"
        else:
            tool_name = "full_flow"
    
    # Step 2: Intelligent strategy recommendation
    STRATEGY_PROMPT = f"""
Analyze user requirements and recommend the most suitable optimization strategy. Return JSON format: {{"strategy": "strategy_name", "reasoning": "reasoning_process"}}

IMPORTANT: Provide reasoning in English only, regardless of the input language.

Available strategies:
- fast: Fast flow, short optimization time, suitable for prototype verification
- performance: High performance optimization, highest quality, suitable for final products
- power: Power optimization, reduce power consumption, suitable for mobile devices
- area: Area optimization, reduce chip area, suitable for cost-sensitive applications

Strategy selection rules:
- If user mentions "fast", "quick", "save time" -> fast
- If user mentions "performance", "high performance", "best quality" -> performance
- If user mentions "power", "low power", "energy saving" -> power
- If user mentions "area", "small area", "cost" -> area
- Default: fast (for quick verification)

User request: {instruction.user_query}
"""

    # Local LLM JSON generation for strategy with heuristic fallback
    strategy_schema = '{"strategy": "one of [fast, performance, power, area]", "reasoning": "string"}'
    sys_inst_s = "You recommend a strategy in strict JSON."
    try:
        st_data = llm.generate_json(sys_inst_s, usr_inst, strategy_schema)
        strategy = st_data.get("strategy", "fast")
        reasoning = st_data.get("reasoning", "Default to fast strategy")
    except Exception:
        q = instruction.user_query.lower()
        if any(k in q for k in ["fast", "quick", "rapid", "speed"]):
            strategy, reasoning = "fast", "Default fast strategy for quick verification"
        elif any(k in q for k in ["performance", "high performance", "best quality", "quality"]):
            strategy, reasoning = "performance", "High performance strategy selected based on user intent"
        elif any(k in q for k in ["power", "low power", "energy saving", "power efficient"]):
            strategy, reasoning = "power", "Power strategy selected based on user intent"
        elif any(k in q for k in ["area", "small area", "cost", "area optimization"]):
            strategy, reasoning = "area", "Area optimization strategy selected based on user intent"
        else:
            strategy, reasoning = "fast", "Fallback to fast strategy"
    
    # Step 3: Enhanced parameter extraction
    extracted_params = extractor.extract_parameters(instruction.user_query, session.last_parameters)
    
    # Step 4: Conflict detection
    conflicts = conflict_detector.detect_conflicts(instruction.user_query, strategy)
    
    # Step 5: Build final parameters
    final_params = base_params.copy()
    
    # Apply strategy parameters
    if strategy in STRATEGY_PARAMS:
        for key, value in STRATEGY_PARAMS[strategy].items():
            if key not in final_params:
                final_params[key] = value
    
    # Apply extracted parameters (override strategy parameters)
    final_params.update(extracted_params)
    
    # Apply user preferences
    if session.preferences:
        for key, value in session.preferences.items():
            if key.startswith('default_') and key[8:] not in final_params:
                final_params[key[8:]] = value
    
    # Step 6: Check for multi-stage flows and execute if needed
    multi_stage_flows = ["pnr", "full_flow", "synth"]
    
    # Step 7: Auto-complete file paths (using user-specified exact version)
    if tool_name in ["cts"] and "restore_enc" not in final_params:
        impl_ver = final_params.get("impl_ver", "")
        if not impl_ver:
            raise HTTPException(status_code=400, detail=f"{tool_name} stage requires impl_ver parameter")
        # Determine required previous stage (for CTS it's always placement)
        previous_stage = "placement"
        # Find user-specified version's previous stage output
        restore_enc = find_exact_enc(final_params["design"], impl_ver, previous_stage)
        
        if restore_enc:
            final_params["restore_enc"] = restore_enc
        else:
            # EDA flow order prompt
            flow_order = ["synthesis", "placement", "cts", "routing"]
            current_index = flow_order.index(tool_name)
            required_stages = " → ".join(flow_order[:current_index])
            
            raise HTTPException(
                status_code=400, 
                detail=f"Cannot find {previous_stage} stage output file ({impl_ver}).\n"
                       f"EDA flow must be executed in order: {required_stages}\n"
                       f"Please run {previous_stage} stage first to generate necessary input files."
            )

    # Step 8: Validate required parameters
    required = REQUIRED_PARAMS.get(tool_name, [])
    missing = [param for param in required if param not in final_params]
    
    if missing:
        error_msg = f"Missing required parameters: {', '.join(missing)}. Please provide these parameters."
        if conflicts:
            error_msg += f"\nAdditionally detected potential conflicts: {'; '.join(conflicts)}"
        raise HTTPException(status_code=400, detail=error_msg)
    
    # Skip multi-stage flow check as it was already handled above
    if tool_name in multi_stage_flows:
        flow_key = "synth" if tool_name == "synth" else tool_name
        return await execute_multi_stage_flow(flow_key, final_params, strategy, instruction.session_id)
    
    # Step 9: Call EDA tool
    if tool_name not in TOOLS:
        raise HTTPException(status_code=400, detail=f"Unknown tool: {tool_name}")
    
    info = TOOLS[tool_name]
    url = f"{MCP_SERVER_HOST}:{info['port']}{info['path']}"

    # Build precise payload per server
    payload = dict(final_params)
    if tool_name == "synthesis":
        if "syn_ver" in payload and "syn_version" not in payload:
            payload["syn_version"] = payload.pop("syn_ver")
        if "clk_period" in payload:
            payload.setdefault("period", payload.pop("clk_period"))
        allowed = {
            "design","tech","syn_version","period","fanout_value","transition_value","capacitance_value",
            "compile_cmd","power_effort","area_effort","map_effort","dynamic_optimization","leakage_optimization",
            "force","skip_execution"
        }
        payload = {k: v for k, v in payload.items() if k in allowed}
    elif tool_name in ("placement", "cts", "routing"):
        general = {"design","tech","syn_ver","impl_ver","restore_enc","force","skip_execution"}
        placement_knobs = {
            "flowEffort","globalPowerEffort","aspectRatio","rowDensity","place_global_timing_effort",
            "place_global_cong_effort","place_detail_wire_length_opt_effort","place_global_max_density",
            "place_global_activity_power_driven","maxDensity","powerEffort","reclaimArea","fixFanoutLoad"
        }
        payload = {k: v for k, v in payload.items() if k in general.union(placement_knobs)}

    try:
        response = requests.post(url, json=payload, timeout=300)
        response.raise_for_status()
        tool_output = response.json()
    except requests.exceptions.RequestException as e:
        raise HTTPException(status_code=500, detail=f"Tool execution failed: {str(e)}")
    
    # Step 10: Update session
    update_session(instruction.session_id, tool_name, final_params, strategy)
    
    # Step 11: Generate suggestions
    suggestions = []
    if strategy == "fast":
        suggestions.append("After fast flow completion, recommend running performance optimization version")
    elif strategy == "performance":
        suggestions.append("Performance optimization completed, consider power analysis if needed")
    elif strategy == "power":
        suggestions.append("Power optimization completed, verify timing constraints")
    elif strategy == "area":
        suggestions.append("Area optimization completed, check timing and power impact")
    
    return AgentResponse(
        tool_called=tool_name,
        tool_input=final_params,
        tool_output=tool_output,
        ai_reasoning=reasoning,
        conflicts_detected=conflicts if conflicts else None,
        suggestions=suggestions
    )

@app.post("/agent", response_model=AgentResponse)
async def agent_endpoint(instruction: Instruction):
    """Enhanced intelligent agent endpoint"""
    return await intelligent_agent(instruction)

@app.get("/session/{session_id}/history")
async def get_session_history(session_id: str):
    """Get session history"""
    session = get_session(session_id)
    return {
        "session_id": session_id,
        "history": session.history,
        "last_parameters": session.last_parameters,
        "preferences": session.preferences
    }

@app.post("/session/{session_id}/preferences")
async def update_preferences(session_id: str, preferences: Dict[str, Any]):
    """Update session preferences"""
    session = get_session(session_id)
    if session.preferences is None:
        session.preferences = {}
    session.preferences.update(preferences)
    return {"status": "success", "message": "Preferences updated"}

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)
