#!/usr/bin/env python3

import os
import json
from pathlib import Path
from typing import Dict, List, Optional, Tuple
import sys

# Add the codebleu directory to path for imports
sys.path.append(str(Path(__file__).parent / "codebleu" / "codebleu"))

try:
    from codebleu import calc_codebleu
except ImportError:
    print("Warning: Could not import calc_codebleu. Make sure the codebleu package is properly set up.")
    calc_codebleu = None


class TCLCodeBLEUEvaluator:
    """TCL CodeBLEU Evaluator for experiment framework integration"""
    
    def __init__(self, keywords_dir: Optional[Path] = None):
        """Initialize the evaluator
        
        Args:
            keywords_dir: Path to keywords directory
        """
        if keywords_dir is None:
            keywords_dir = Path(__file__).parent / "codebleu" / "codebleu" / "keywords"
        self.keywords_dir = keywords_dir
        
        # Default weights for CodeBLEU calculation
        self.default_weights = (0.25, 0.25, 0.25, 0.25)
        
        # EDA tool specific evaluation weights - Updated for 4 unified servers
        self.eda_weights = {
            'synthesis': (0.20, 0.30, 0.25, 0.25),           # Higher weighted ngram for synthesis commands
            'unified_placement': (0.15, 0.25, 0.30, 0.30),   # Higher syntax and dataflow for complex placement
            'cts': (0.20, 0.25, 0.30, 0.25),                # Higher syntax weight for clock tree structure
            'unified_route_save': (0.20, 0.25, 0.25, 0.30),  # Higher dataflow for routing connectivity
            'default': (0.25, 0.25, 0.25, 0.25)
        }
    
    def _detect_tool_type_from_script(self, script: str) -> str:
        """Automatically detect the tool type from script content with improved logic"""
        import re
        
        # Enhanced detection patterns with weights
        detection_patterns = {
            'synthesis': [
                (r'Complete.*Synthesis.*TCL Script', 3.0),  # High confidence
                (r'Frontend Script:', 2.5),
                (r'\bcompile\b', 1.5),
                (r'\bwrite_sdc\b', 2.0),
                (r'\belaborate\b', 1.8),
                (r'\banalyze\b', 1.2),  # Lower weight as it's common
                (r'set_max_fanout', 1.5),
                (r'create_clock', 1.0),  # Can appear in multiple stages
            ],
            'unified_placement': [
                (r'Complete Unified Placement.*TCL Script', 3.0),
                (r'Floorplan.*Powerplan.*Placement', 2.8),
                (r'\bfloorPlan\b', 2.5),
                (r'\bplaceDesign\b', 2.5),
                (r'globalNetConnect', 2.0),
                (r'addStripe', 2.0),
                (r'setPinAssignMode', 1.8),
                (r'planDesign', 1.8),
            ],
            'cts': [
                (r'Complete CTS.*TCL Script', 3.0),
                (r'\bccopt_design\b', 2.8),
                (r'\bset_ccopt_property\b', 2.5),
                (r'create_clock_tree_spec', 2.5),
                (r'Clock tree synthesis', 2.0),
                (r'report_ccopt_clock_tree_structure', 2.0),
                (r'all_registers', 1.5),
            ],
            'unified_route_save': [
                (r'Complete Unified Route.*Save.*TCL Script', 3.0),
                (r'Route\+Save', 2.5),
                (r'\brouteDesign\b', 2.5),
                (r'\bstreamOut\b', 2.5),
                (r'Complete Unified Route', 2.0),
                (r'checkRoute', 1.8),
                (r'verifyConnectivity', 1.8),
                (r'saveDesign', 1.5),  # Can appear in multiple stages
            ]
        }
        
        # Calculate weighted scores for each tool type
        tool_scores = {}
        for tool_type, patterns in detection_patterns.items():
            score = 0.0
            matched_patterns = []
            
            for pattern, weight in patterns:
                matches = re.findall(pattern, script, re.IGNORECASE)
                if matches:
                    score += weight * len(matches)
                    matched_patterns.append((pattern, len(matches), weight))
            
            tool_scores[tool_type] = {
                'score': score,
                'matched_patterns': matched_patterns
            }
        
        # Return default if no patterns matched
        if all(scores['score'] == 0 for scores in tool_scores.values()):
            return 'default'
        
        best_tool = max(tool_scores, key=lambda x: tool_scores[x]['score'])
        best_score = tool_scores[best_tool]['score']
        
        # Confidence threshold - require minimum score for reliable detection
        min_confidence_score = 2.0
        if best_score < min_confidence_score:
            return 'default'
        
        # Check if the winner is significantly better than others
        sorted_scores = sorted(tool_scores.values(), key=lambda x: x['score'], reverse=True)
        if len(sorted_scores) > 1:
            first_score = sorted_scores[0]['score']
            second_score = sorted_scores[1]['score']
            
            # Require at least 20% margin to be confident
            if first_score > 0 and (first_score - second_score) / first_score < 0.2:
                return 'default'  # Too close to call
        
        return best_tool
    
    def evaluate_generated_tcl(
        self,
        generated_tcl_file: Path,
        reference_tcl_file: Path,
        template_tcl_file: Optional[Path] = None,
        tool_type: str = "auto"  # Changed default to "auto"
    ) -> Dict:
        """Evaluate generated TCL against reference and template
        
        Args:
            generated_tcl_file: Path to generated TCL file
            reference_tcl_file: Path to reference TCL file  
            template_tcl_file: Optional path to template TCL file
            tool_type: Tool type for evaluation weights ("auto" for automatic detection)
            
        Returns:
            Dictionary containing evaluation results
        """
        
        try:
            # Read TCL files
            generated_script = self._read_tcl_file(generated_tcl_file)
            reference_script = self._read_tcl_file(reference_tcl_file)
            template_script = self._read_tcl_file(template_tcl_file) if template_tcl_file else ""
            
            if not generated_script or not reference_script:
                raise ValueError("Failed to read TCL files")
            
            # Auto-detect tool type if requested
            if tool_type == "auto":
                tool_type = self._detect_tool_type_from_script(generated_script)
            
            # Get appropriate weights for the detected/specified tool type
            weights = self.eda_weights.get(tool_type, self.default_weights)
            
            # Calculate CodeBLEU scores
            if calc_codebleu is None:
                raise ImportError("CodeBLEU calculation not available")
            
            codebleu_result = calc_codebleu(
                references=[reference_script],
                predictions=[generated_script],
                lang="tcl",
                weights=weights,
                keywords_dir=self.keywords_dir
            )
            
            # Analyze TCL script
            analysis_result = self._analyze_tcl_script(generated_script)
            
            # Create comprehensive evaluation result
            evaluation_result = {
                'file_info': {
                    'generated_file': str(generated_tcl_file),
                    'reference_file': str(reference_tcl_file),
                    'template_file': str(template_tcl_file) if template_tcl_file else None,
                    'detected_tool_type': tool_type,
                    'evaluation_weights': weights
                },
                'codebleu_scores': codebleu_result,
                'scores': {
                    'ngram_match_score': codebleu_result.get('ngram_match_score', 0.0),
                    'weighted_ngram_match_score': codebleu_result.get('weighted_ngram_match_score', 0.0),
                    'syntax_match_score': codebleu_result.get('syntax_match_score', 0.0),
                    'dataflow_match_score': codebleu_result.get('dataflow_match_score', 0.0)
                },
                'analysis': analysis_result,
                'summary': self._create_summary(codebleu_result, analysis_result)
            }
            
            return evaluation_result
            
        except Exception as e:
            print(f"Error in evaluate_generated_tcl: {e}")
            import traceback
            traceback.print_exc()
            return self._create_error_result(str(e))
    
    def _read_tcl_file(self, file_path_or_content) -> str:
        """Read TCL file content or return content if it's already a string"""
        if file_path_or_content is None:
            return ""
        
        # If it's not a string, treat as invalid input
        if not isinstance(file_path_or_content, (str, Path)):
            return ""
        
        # If it's already TCL content (contains newlines or TCL commands), return as-is
        if isinstance(file_path_or_content, str):
            # Check if it looks like TCL content rather than a file path
            if '\n' in file_path_or_content or any(cmd in file_path_or_content.lower() for cmd in ['set ', 'proc ', 'source ', 'analyze', 'elaborate', 'compile']):
                return file_path_or_content
            
            # Otherwise treat as file path
            file_path = Path(file_path_or_content)
        else:
            file_path = file_path_or_content
            
        if not file_path.exists():
            return ""
        
        try:
            with open(file_path, 'r', encoding='utf-8') as f:
                return f.read()
        except Exception as e:
            print(f"Error reading file {file_path}: {e}")
            return ""
    
    def _analyze_tcl_script(self, script: str) -> Dict:
        """Analyze TCL script for various metrics"""
        lines = script.split('\n')
        
        # Basic metrics
        analysis = {
            'total_lines': len(lines),
            'code_lines': 0,
            'comment_lines': 0,
            'blank_lines': 0,
            'variables': [],
            'eda_commands': {},
            'syntax_errors': [],
            'script_sections': {},  # New: Track different sections of the script
            'server_type': 'unknown'  # New: Identify which server generated this script
        }
        
        # EDA commands organized by the four unified server stages
        eda_commands = {
            # Synthesis Server Commands
            'synthesis': [
                'analyze', 'elaborate', 'compile', 'compile_ultra',
                'set_max_fanout', 'set_max_transition', 'set_max_capacitance',
                'set_clock_uncertainty', 'create_clock', 'set_input_delay', 'set_output_delay',
                'report_timing', 'report_area', 'report_power', 'report_qor',
                'write_file', 'write_sdc', 'change_names', 'uniquify'
            ],

            # Unified Placement Server Commands (Floorplan + Powerplan + Placement)
            'unified_placement': [
                # Floorplan commands
                'setDrawView', 'floorPlan', 'setPinAssignMode', 'editPin', 'planDesign', 'checkFPlan',
                'setDesignMode', 'defOut', 'summaryReport',

                # Powerplan commands
                'globalNetConnect', 'addStripe', 'sroute', 'addRing', 'addEndCap', 'addWellTap',
                'createPowerDomain', 'createPowerSwitch', 'createPowerPort', 'connectPowerNet',

                # Placement commands
                'setPlaceMode', 'placeDesign', 'refinePlace', 'place_opt_design', 'setOptMode', 'optDesign',
                'checkPlace', 'timeDesign', 'setExtractRCMode', 'extractRC', 'rcOut', 'saveNetlist'
            ],

            # CTS Server Commands
            'cts': [
                'set_ccopt_property', 'ccopt_design', 'create_clock_tree_spec', 'clock_opt',
                'setNanoRouteMode', 'report_ccopt_clock_tree_structure', 'report_ccopt_skew_groups',
                'set_ccopt_mode', 'create_ccopt_clock_tree_spec', 'ccopt_check_and_flatten_ilms',
                'all_registers', 'group_path', 'filter_collection', 'remove_from_collection'
            ],

            # Unified Route+Save Server Commands
            'unified_route_save': [
                # Route commands
                'setNanoRouteMode', 'setRouteMode', 'routeDesign', 'route_opt_design',
                'checkRoute', 'verifyConnectivity', 'setAnalysisMode', 'addFiller',

                # Save commands
                'saveDesign', 'streamOut', 'defOut', 'saveNetlist', 'rcOut',
                'write_sdf', 'report_power', 'report_timing', 'report_area'
            ],

            # Common/Setup commands used across stages
            'common_setup': [
                'init_design', 'setMultiCpuUsage', 'setLibraryUnit', 'create_library_set',
                'create_rc_corner', 'create_delay_corner', 'create_constraint_mode', 'create_analysis_view',
                'set_analysis_view', 'update_constraint_mode', 'update_delay_corner'
            ]
        }
        
        # Identify script sections
        section_patterns = {
            'environment_setup': r'#.*Environment Variables|#.*Set environment variables',
            'design_config': r'#.*Design Config|#.*design configuration',
            'tech_config': r'#.*Technology Configuration|#.*tech\.tcl',
            'backend_scripts': r'#.*Backend Script:|#.*Script:',
            'synthesis_flow': r'#.*Synthesis|#.*Frontend Script',
            'placement_flow': r'#.*Floorplan|#.*Powerplan|#.*Placement',
            'cts_flow': r'#.*CTS|#.*Clock tree synthesis',
            'route_flow': r'#.*Route|#.*Routing|#.*Save'
        }
        
        import re
        for i, line in enumerate(lines, 1):
            stripped = line.strip()
            
            # Count line types
            if not stripped:
                analysis['blank_lines'] += 1
            elif stripped.startswith('#'):
                analysis['comment_lines'] += 1
                # Check for script sections
                for section_name, pattern in section_patterns.items():
                    if re.search(pattern, stripped, re.IGNORECASE):
                        analysis['script_sections'][section_name] = analysis['script_sections'].get(section_name, 0) + 1
            else:
                analysis['code_lines'] += 1
        
        # Determine server type based on script content
        server_indicators = {
            'synthesis': ['compile', 'elaborate', 'analyze', 'write_sdc', 'Frontend Script'],
            'unified_placement': ['floorPlan', 'placeDesign', 'globalNetConnect', 'addStripe', 'Complete Unified Placement'],
            'cts': ['ccopt_design', 'set_ccopt_property', 'Complete CTS', 'Clock tree synthesis'],
            'unified_route_save': ['routeDesign', 'Complete Unified Route', 'streamOut', 'Route+Save']
        }
        
        server_scores = {}
        for server_type, indicators in server_indicators.items():
            score = 0
            for indicator in indicators:
                if indicator.lower() in script.lower():
                    score += 1
            server_scores[server_type] = score
        
        if server_scores:
            analysis['server_type'] = max(server_scores, key=server_scores.get)
        
        # Enhanced variable extraction
        var_patterns = [
            r'\$(\w+)',                    # Standard TCL variables
            r'\$env\((\w+)\)',            # Environment variables
            r'set\s+(\w+)\s+',            # Variable assignments
            r'set\s+env\((\w+)\)\s+'      # Environment variable assignments
        ]
        
        all_variables = set()
        for pattern in var_patterns:
            matches = re.findall(pattern, script)
            all_variables.update(matches)
        analysis['variables'] = list(all_variables)
        
        # Enhanced syntax validation
        brace_count = script.count('{') - script.count('}')
        bracket_count = script.count('[') - script.count(']')
        paren_count = script.count('(') - script.count(')')
        
        if brace_count != 0:
            analysis['syntax_errors'].append(f"Unmatched braces: {brace_count}")
        if bracket_count != 0:
            analysis['syntax_errors'].append(f"Unmatched brackets: {bracket_count}")
        if paren_count != 0:
            analysis['syntax_errors'].append(f"Unmatched parentheses: {paren_count}")
        
        # Check for unmatched quotes
        for i, line in enumerate(lines, 1):
            if line.count('"') % 2 != 0:
                analysis['syntax_errors'].append(f"Line {i}: Unmatched quotes")
        
        # Calculate complexity metrics
        analysis['complexity_metrics'] = {
            'avg_line_length': sum(len(line) for line in lines) / len(lines) if lines else 0,
            'max_line_length': max(len(line) for line in lines) if lines else 0,
            'command_density': len(analysis['variables']) / analysis['code_lines'] if analysis['code_lines'] > 0 else 0,
            'comment_ratio': analysis['comment_lines'] / analysis['total_lines'] if analysis['total_lines'] > 0 else 0
        }
        
        # Analyze EDA command usage
        for category, commands in eda_commands.items():
            found_commands = []
            for command in commands:
                if command in script:
                    found_commands.append(command)
            
            analysis['eda_commands'][category] = {
                'found': found_commands,
                'count': len(found_commands),
                'total': len(commands),
                'completeness': len(found_commands) / len(commands) if commands else 0
            }
        
        return analysis
    
    def _create_summary(self, codebleu_result: Dict, analysis_result: Dict) -> Dict:
        """Create a summary of evaluation results"""
        return {
            'overall_score': codebleu_result.get('codebleu', 0.0),
            'syntax_score': codebleu_result.get('syntax_match_score', 0.0),
            'dataflow_score': codebleu_result.get('dataflow_match_score', 0.0),
            'ngram_score': codebleu_result.get('ngram_match_score', 0.0),
            'weighted_ngram_score': codebleu_result.get('weighted_ngram_match_score', 0.0),

            # Basic metrics
            'total_lines': analysis_result.get('total_lines', 0),
            'code_lines': analysis_result.get('code_lines', 0),
            'comment_lines': analysis_result.get('comment_lines', 0),
            'syntax_errors': len(analysis_result.get('syntax_errors', [])),
            'variable_count': len(analysis_result.get('variables', [])),

            # New enhanced metrics
            'server_type': analysis_result.get('server_type', 'unknown'),
            'script_sections': analysis_result.get('script_sections', {}),
            'complexity_metrics': analysis_result.get('complexity_metrics', {}),

            # EDA command completeness by server type
            'eda_completeness': {
                category: data.get('completeness', 0.0)
                for category, data in analysis_result.get('eda_commands', {}).items()
            },

            # Quality indicators
            'quality_indicators': {
                'has_environment_setup': 'environment_setup' in analysis_result.get('script_sections', {}),
                'has_design_config': 'design_config' in analysis_result.get('script_sections', {}),
                'has_tech_config': 'tech_config' in analysis_result.get('script_sections', {}),
                'comment_ratio': analysis_result.get('complexity_metrics', {}).get('comment_ratio', 0.0),
                'syntax_error_rate': len(analysis_result.get('syntax_errors', [])) / max(analysis_result.get('total_lines', 1), 1)
            }
        }
    
    def _create_error_result(self, error_message: str) -> Dict:
        """Create error result structure"""
        return {
            'file_info': {},
            'codebleu_scores': {'codebleu': 0.0},
            'scores': {
                'ngram_match_score': 0.0,
                'weighted_ngram_match_score': 0.0,
                'syntax_match_score': 0.0,
                'dataflow_match_score': 0.0
            },
            'analysis': {},
            'summary': {'overall_score': 0.0},
            'error': error_message
        }
    
    def batch_evaluate(self, evaluation_tasks: List[Dict]) -> Dict:
        """Batch evaluate multiple TCL files"""
        results = {}
        
        for task in evaluation_tasks:
            task_id = task.get('id', 'unknown')
            try:
                result = self.evaluate_generated_tcl(
                    generated_tcl_file=Path(task['generated_file']),
                    reference_tcl_file=Path(task['reference_file']),
                    template_tcl_file=Path(task['template_file']) if task.get('template_file') else None,
                    tool_type=task.get('tool_type', 'auto')
                )
                results[task_id] = result
            except Exception as e:
                results[task_id] = self._create_error_result(str(e))
        
        return results 
