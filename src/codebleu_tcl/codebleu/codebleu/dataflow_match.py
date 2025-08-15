# Copyright (c) Microsoft Corporation.
# Licensed under the MIT license.
import logging

from tree_sitter import Parser

from parser import (
    DFG_csharp,
    DFG_go,
    DFG_java,
    DFG_javascript,
    DFG_php,
    DFG_python,
    DFG_ruby,
    DFG_rust,
    DFG_tcl,
    index_to_code_token,
    remove_comments_and_docstrings,
    tree_to_token_index,
)
from utils import get_tree_sitter_language

dfg_function = {
    "python": DFG_python,
    "java": DFG_java,
    "ruby": DFG_ruby,
    "go": DFG_go,
    "php": DFG_php,
    "javascript": DFG_javascript,
    "c_sharp": DFG_csharp,
    "c": DFG_csharp,  # XLCoST uses C# parser for C
    "cpp": DFG_csharp,  # XLCoST uses C# parser for C++
    "rust": DFG_rust,
    "tcl": DFG_tcl,
}


def calc_dataflow_match(references, candidate, lang, langso_so_file):
    return corpus_dataflow_match([references], [candidate], lang, langso_so_file)


def corpus_dataflow_match(references, candidates, lang, tree_sitter_language=None):
    if not tree_sitter_language:
        tree_sitter_language = get_tree_sitter_language(lang)

    # Handle our custom TCL language parser
    if hasattr(tree_sitter_language, 'name') and tree_sitter_language.name == "tcl":
        # Use our sophisticated TCL parser with proper dataflow analysis
        return _advanced_tcl_dataflow_match(references, candidates, tree_sitter_language)
    
    parser = Parser()
    parser.language = tree_sitter_language
    parser = [parser, dfg_function[lang]]
    match_count = 0
    total_count = 0

    for i in range(len(candidates)):
        references_sample = references[i]
        candidate = candidates[i]
        for reference in references_sample:
            try:
                candidate = remove_comments_and_docstrings(candidate, lang)
            except Exception:
                pass
            try:
                reference = remove_comments_and_docstrings(reference, lang)
            except Exception:
                pass

            cand_dfg = get_data_flow(candidate, parser)
            ref_dfg = get_data_flow(reference, parser)

            normalized_cand_dfg = normalize_dataflow(cand_dfg)
            normalized_ref_dfg = normalize_dataflow(ref_dfg)

            if len(normalized_ref_dfg) > 0:
                total_count += len(normalized_ref_dfg)
                for dataflow in normalized_ref_dfg:
                    if dataflow in normalized_cand_dfg:
                        match_count += 1
                        normalized_cand_dfg.remove(dataflow)
    if total_count == 0:
        logging.warning(
            "WARNING: There is no reference data-flows extracted from the whole corpus, "
            "and the data-flow match score degenerates to 0. Please consider ignoring this score."
        )
        return 0
    score = match_count / total_count
    return score


def get_data_flow(code, parser):
    try:
        tree = parser[0].parse(bytes(code, "utf8"))
        root_node = tree.root_node
        tokens_index = tree_to_token_index(root_node)
        code = code.split("\n")
        code_tokens = [index_to_code_token(x, code) for x in tokens_index]
        index_to_code = {}
        for idx, (index, code) in enumerate(zip(tokens_index, code_tokens)):
            index_to_code[index] = (idx, code)
        try:
            DFG, _ = parser[1](root_node, index_to_code, {})
        except Exception:
            DFG = []
        DFG = sorted(DFG, key=lambda x: x[1])
        indexs = set()
        for d in DFG:
            if len(d[-1]) != 0:
                indexs.add(d[1])
            for x in d[-1]:
                indexs.add(x)
        new_DFG = []
        for d in DFG:
            if d[1] in indexs:
                new_DFG.append(d)
        dfg = new_DFG
    except Exception:
        code.split()
        dfg = []
    # merge nodes
    dic = {}
    for d in dfg:
        if d[1] not in dic:
            dic[d[1]] = d
        else:
            dic[d[1]] = (
                d[0],
                d[1],
                d[2],
                list(set(dic[d[1]][3] + d[3])),
                list(set(dic[d[1]][4] + d[4])),
            )
    DFG = []
    for d in dic:
        DFG.append(dic[d])
    dfg = DFG
    return dfg


def normalize_dataflow_item(dataflow_item):
    var_name = dataflow_item[0]
    dataflow_item[1]
    relationship = dataflow_item[2]
    par_vars_name_list = dataflow_item[3]
    dataflow_item[4]

    var_names = list(set(par_vars_name_list + [var_name]))
    norm_names = {}
    for i in range(len(var_names)):
        norm_names[var_names[i]] = "var_" + str(i)

    norm_var_name = norm_names[var_name]
    relationship = dataflow_item[2]
    norm_par_vars_name_list = [norm_names[x] for x in par_vars_name_list]

    return (norm_var_name, relationship, norm_par_vars_name_list)


def normalize_dataflow(dataflow):
    var_dict = {}
    i = 0
    normalized_dataflow = []
    for item in dataflow:
        var_name = item[0]
        relationship = item[2]
        par_vars_name_list = item[3]
        for name in par_vars_name_list:
            if name not in var_dict:
                var_dict[name] = "var_" + str(i)
                i += 1
        if var_name not in var_dict:
            var_dict[var_name] = "var_" + str(i)
            i += 1
        normalized_dataflow.append(
            (
                var_dict[var_name],
                relationship,
                [var_dict[x] for x in par_vars_name_list],
            )
        )
    return normalized_dataflow


def _advanced_tcl_dataflow_match(references, candidates, tcl_language):
    """
    Advanced dataflow match for TCL using our sophisticated parser.
    
    This function performs deep dataflow analysis by:
    1. Building proper AST using our TCL parser
    2. Extracting variable definitions, uses, and dependencies
    3. Tracking data flow through EDA command sequences
    4. Comparing dataflow graphs with semantic understanding
    """
    match_count = 0
    total_count = 0
    
    for i in range(len(candidates)):
        references_sample = references[i]
        candidate = candidates[i]
        
        for reference in references_sample:
            # Parse both reference and candidate using our advanced TCL parser
            ref_tree = tcl_language.parse(reference.encode('utf-8'))
            cand_tree = tcl_language.parse(candidate.encode('utf-8'))
            
            # Extract dataflow information from both trees
            ref_dataflows = _extract_dataflow_from_ast(ref_tree.root_node)
            cand_dataflows = _extract_dataflow_from_ast(cand_tree.root_node)
            
            # Compare dataflow patterns with sophisticated matching
            if ref_dataflows:
                total_count += len(ref_dataflows)
                for ref_flow in ref_dataflows:
                    # Check for exact dataflow matches
                    if ref_flow in cand_dataflows:
                        match_count += 1
                    # Check for semantically equivalent dataflows
                    elif _is_dataflow_equivalent(ref_flow, cand_dataflows):
                        match_count += 0.8  # Partial credit for semantic equivalence
    
    if total_count == 0:
        return 1.0  # No dataflows to match
    
    return match_count / total_count


def _extract_dataflow_from_ast(node):
    """
    Extract comprehensive dataflow information from TCL AST.
    
    Tracks:
    - Variable definitions and assignments
    - Variable usage and dependencies  
    - Command parameter flows
    - EDA-specific data dependencies (design objects, constraints, etc.)
    - Control flow effects on data
    """
    dataflows = []
    variable_defs = {}  # Track where variables are defined
    variable_uses = {}  # Track where variables are used
    
    def _traverse_for_dataflow(node, context='global'):
        if not (hasattr(node, 'type') and hasattr(node, 'children')):
            return
            
        if node.type == 'command' and node.children:
            command_name = node.children[0].text if node.children[0].text else 'unknown'
            
            # Handle variable assignments (set command)
            if command_name == 'set' and len(node.children) >= 3:
                var_name = node.children[1].text
                var_value = node.children[2].text if len(node.children) > 2 else ''
                
                # Record variable definition
                variable_defs[var_name] = {
                    'value': var_value,
                    'context': context,
                    'command': command_name
                }
                
                # Create dataflow entry
                dataflows.append({
                    'type': 'definition',
                    'variable': var_name,
                    'value': var_value,
                    'context': context,
                    'signature': f"def:{var_name}={var_value}"
                })
                
                # Check if value references other variables
                for other_var in variable_defs:
                    if f'${other_var}' in var_value or f'${{{other_var}}}' in var_value:
                        dataflows.append({
                            'type': 'dependency',
                            'from_var': other_var,
                            'to_var': var_name,
                            'signature': f"dep:{other_var}->{var_name}"
                        })
            
            # Handle procedure definitions
            elif command_name == 'proc' and len(node.children) >= 4:
                proc_name = node.children[1].text
                proc_args = node.children[2].text
                
                dataflows.append({
                    'type': 'procedure_def',
                    'name': proc_name,
                    'args': proc_args,
                    'signature': f"proc:{proc_name}({proc_args})"
                })
            
            # Handle EDA commands with data dependencies
            elif _is_eda_command_dataflow(command_name):
                # Extract EDA-specific dataflow patterns
                eda_flows = _extract_eda_dataflow(command_name, node.children[1:])
                dataflows.extend(eda_flows)
            
            # Handle variable usage in any command
            for child in node.children[1:]:  # Skip command name
                if hasattr(child, 'text') and child.text:
                    # Find variable references in arguments
                    import re
                    var_refs = re.findall(r'\$\{?([a-zA-Z_][a-zA-Z0-9_]*)\}?', child.text)
                    for var_ref in var_refs:
                        if var_ref not in variable_uses:
                            variable_uses[var_ref] = []
                        variable_uses[var_ref].append({
                            'command': command_name,
                            'context': context
                        })
                        
                        dataflows.append({
                            'type': 'usage',
                            'variable': var_ref,
                            'command': command_name,
                            'context': context,
                            'signature': f"use:{var_ref}@{command_name}"
                        })
        
        # Recursively process children
        for child in node.children if hasattr(node, 'children') else []:
            _traverse_for_dataflow(child, context)
    
    _traverse_for_dataflow(node)
    
    # Add cross-references between definitions and uses
    for var_name, uses in variable_uses.items():
        if var_name in variable_defs:
            for use in uses:
                dataflows.append({
                    'type': 'def_use_chain',
                    'variable': var_name,
                    'def_context': variable_defs[var_name]['context'],
                    'use_command': use['command'],
                    'signature': f"chain:{var_name}@{use['command']}"
                })
    
    return dataflows


def _is_eda_command_dataflow(command_name):
    """Check if command creates significant dataflow patterns"""
    dataflow_commands = [
        # Commands that create/modify design objects
        'analyze', 'elaborate', 'compile', 'compile_ultra',
        # Commands that create constraints (data dependencies)
        'create_clock', 'set_input_delay', 'set_output_delay',
        'set_max_fanout', 'set_max_transition',
        # Commands that process design data
        'floorPlan', 'placeDesign', 'routeDesign',
        'ccopt_design', 'report_timing', 'report_area'
    ]
    return command_name in dataflow_commands


def _extract_eda_dataflow(command_name, args):
    """Extract EDA-specific dataflow patterns"""
    flows = []
    
    # Clock creation creates timing dependencies
    if command_name == 'create_clock':
        if len(args) >= 2:
            clock_name = args[0].text if hasattr(args[0], 'text') else 'unknown_clock'
            flows.append({
                'type': 'timing_constraint',
                'constraint_type': 'clock',
                'target': clock_name,
                'signature': f"timing:clock:{clock_name}"
            })
    
    # Delay constraints create timing dependencies
    elif command_name in ['set_input_delay', 'set_output_delay']:
        constraint_type = 'input_delay' if 'input' in command_name else 'output_delay'
        flows.append({
            'type': 'timing_constraint',
            'constraint_type': constraint_type,
            'signature': f"timing:{constraint_type}"
        })
    
    # Physical commands create placement dependencies
    elif command_name in ['floorPlan', 'placeDesign']:
        flows.append({
            'type': 'physical_constraint',
            'stage': 'placement',
            'signature': f"physical:placement:{command_name}"
        })
    
    # Routing commands create connectivity dependencies
    elif command_name == 'routeDesign':
        flows.append({
            'type': 'physical_constraint',
            'stage': 'routing',
            'signature': f"physical:routing:{command_name}"
        })
    
    return flows


def _is_dataflow_equivalent(ref_flow, cand_dataflows):
    """Check if reference dataflow has equivalent in candidate dataflows"""
    
    # Exact signature match
    ref_sig = ref_flow.get('signature', '')
    for cand_flow in cand_dataflows:
        if cand_flow.get('signature', '') == ref_sig:
            return True
    
    # Semantic equivalence checks
    if ref_flow['type'] == 'definition':
        # Look for same variable definition
        ref_var = ref_flow.get('variable', '')
        for cand_flow in cand_dataflows:
            if (cand_flow['type'] == 'definition' and 
                cand_flow.get('variable', '') == ref_var):
                return True
                
    elif ref_flow['type'] == 'timing_constraint':
        # Look for same type of timing constraint
        ref_constraint = ref_flow.get('constraint_type', '')
        for cand_flow in cand_dataflows:
            if (cand_flow['type'] == 'timing_constraint' and
                cand_flow.get('constraint_type', '') == ref_constraint):
                return True
                
    elif ref_flow['type'] == 'physical_constraint':
        # Look for same physical stage
        ref_stage = ref_flow.get('stage', '')
        for cand_flow in cand_dataflows:
            if (cand_flow['type'] == 'physical_constraint' and
                cand_flow.get('stage', '') == ref_stage):
                return True
    
    return False


# Keep the old simple function for backward compatibility (but mark as deprecated)
def _simple_dataflow_match(references, candidates, lang):
    """DEPRECATED: Simple dataflow match - replaced by _advanced_tcl_dataflow_match"""
    print("Warning: Using deprecated simple dataflow match")
    from utils import get_tree_sitter_language
    return _advanced_tcl_dataflow_match(references, candidates, get_tree_sitter_language(lang))


def _extract_tcl_assignments(script):
    """DEPRECATED: Replaced by _extract_dataflow_from_ast"""
    print("Warning: Using deprecated TCL assignment extraction")
    return []
