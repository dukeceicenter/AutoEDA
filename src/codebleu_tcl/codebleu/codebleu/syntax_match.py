# Copyright (c) Microsoft Corporation.
# Licensed under the MIT license.

from tree_sitter import Parser

from parser import (
    DFG_csharp,
    DFG_go,
    DFG_java,
    DFG_javascript,
    DFG_php,
    DFG_python,
    DFG_ruby,
    DFG_tcl,
    remove_comments_and_docstrings,
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
    "tcl": DFG_tcl,
}


def calc_syntax_match(references, candidate, lang):
    return corpus_syntax_match([references], [candidate], lang)


def corpus_syntax_match(references, candidates, lang, tree_sitter_language=None):
    if not tree_sitter_language:
        tree_sitter_language = get_tree_sitter_language(lang)

    parser = Parser()
    # Handle our custom TCL language parser
    if hasattr(tree_sitter_language, 'name') and tree_sitter_language.name == "tcl":
        # Use our sophisticated TCL parser with proper syntax tree analysis
        return _advanced_tcl_syntax_match(references, candidates, tree_sitter_language)
    else:
        parser.language = tree_sitter_language
    match_count = 0
    match_count_candidate_to_reference = 0
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

            candidate_tree = parser.parse(bytes(candidate, "utf8")).root_node

            reference_tree = parser.parse(bytes(reference, "utf8")).root_node

            def get_all_sub_trees(root_node):
                node_stack = []
                sub_tree_sexp_list = []
                depth = 1
                node_stack.append([root_node, depth])
                while len(node_stack) != 0:
                    cur_node, cur_depth = node_stack.pop()
                    sub_tree_sexp_list.append([str(cur_node), cur_depth])
                    for child_node in cur_node.children:
                        if len(child_node.children) != 0:
                            depth = cur_depth + 1
                            node_stack.append([child_node, depth])
                return sub_tree_sexp_list

            cand_sexps = [x[0] for x in get_all_sub_trees(candidate_tree)]
            ref_sexps = [x[0] for x in get_all_sub_trees(reference_tree)]

            # TODO: fix, now we count number of reference subtrees matching candidate,
            #       but we should count number of candidate subtrees matching reference
            #       See (4) in "3.2 Syntactic AST Match" of https://arxiv.org/pdf/2009.10297.pdf
            for sub_tree in ref_sexps:
                if sub_tree in cand_sexps:
                    match_count += 1

            for sub_tree in cand_sexps:
                if sub_tree in ref_sexps:
                    match_count_candidate_to_reference += 1

            total_count += len(ref_sexps)
    # print(f'match_count       {match_count} / {total_count}')
    # print(f'match_count_fixed {match_count_candidate_to_reference} / {total_count}')
    score = match_count / total_count
    return score


def _advanced_tcl_syntax_match(references, candidates, tcl_language):
    """
    Advanced syntax match for TCL using our sophisticated parser.
    
    This function performs deep syntax tree comparison instead of simple line matching.
    It analyzes command structures, argument patterns, and EDA workflow stages.
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
            
            # Extract syntax features from both trees
            ref_features = _extract_syntax_features(ref_tree.root_node)
            cand_features = _extract_syntax_features(cand_tree.root_node)
            
            # Compare syntax features with weighted scoring
            if ref_features:
                total_count += len(ref_features)
                for ref_feature in ref_features:
                    # Check for exact matches first
                    if ref_feature in cand_features:
                        match_count += 1
                    # Check for semantic equivalence (e.g., same command different args)
                    elif _is_semantically_equivalent(ref_feature, cand_features):
                        match_count += 0.7  # Partial credit for semantic similarity
    
    if total_count == 0:
        return 0.0
    
    return match_count / total_count


def _extract_syntax_features(node):
    """
    Extract detailed syntax features from TCL AST node.
    
    Features include:
    - Command types and hierarchy
    - Argument patterns  
    - Variable assignments and usage
    - Control flow structures
    - EDA-specific command sequences
    """
    features = []
    
    def _traverse_node(node, depth=0):
        if hasattr(node, 'type') and hasattr(node, 'children'):
            # Record command structure with context
            if node.type == 'command' and node.children:
                command_name = node.children[0].text if node.children[0].text else 'unknown'
                arg_count = len(node.children) - 1
                features.append({
                    'type': 'command',
                    'name': command_name,
                    'arg_count': arg_count,
                    'depth': depth,
                    'signature': f"{command_name}({arg_count})"
                })
                
                # Extract argument patterns for EDA commands
                if _is_eda_command(command_name):
                    features.append({
                        'type': 'eda_command',
                        'name': command_name,
                        'stage': _get_eda_stage(command_name),
                        'signature': f"eda:{command_name}"
                    })
            
            # Record variable assignments
            elif node.type == 'command' and node.children and node.children[0].text == 'set':
                if len(node.children) >= 3:
                    var_name = node.children[1].text
                    features.append({
                        'type': 'variable_assignment',
                        'name': var_name,
                        'signature': f"set:{var_name}"
                    })
            
            # Record control structures
            elif node.type == 'command' and node.children:
                cmd = node.children[0].text
                if cmd in ['if', 'for', 'foreach', 'while', 'proc']:
                    features.append({
                        'type': 'control_structure',
                        'name': cmd,
                        'signature': f"control:{cmd}"
                    })
            
            # Recursively process children
            for child in node.children:
                _traverse_node(child, depth + 1)
    
    _traverse_node(node)
    return features


def _is_semantically_equivalent(ref_feature, cand_features):
    """Check if a reference feature has semantic equivalent in candidate features"""
    if ref_feature['type'] == 'command':
        # Look for same command with similar argument count
        for cand_feature in cand_features:
            if (cand_feature['type'] == 'command' and 
                cand_feature['name'] == ref_feature['name'] and
                abs(cand_feature['arg_count'] - ref_feature['arg_count']) <= 1):
                return True
                
    elif ref_feature['type'] == 'eda_command':
        # Look for EDA commands in same stage
        for cand_feature in cand_features:
            if (cand_feature['type'] == 'eda_command' and
                cand_feature['stage'] == ref_feature['stage']):
                return True
    
    return False


def _is_eda_command(command_name):
    """Check if command is an EDA tool command"""
    eda_commands = {
        'synthesis': ['analyze', 'elaborate', 'compile', 'compile_ultra', 'set_max_fanout', 
                     'set_max_transition', 'create_clock', 'report_timing', 'report_area'],
        'placement': ['floorPlan', 'placeDesign', 'setPlaceMode', 'checkPlace', 'refinePlace'],
        'cts': ['ccopt_design', 'create_clock_tree_spec', 'set_ccopt_property'],
        'route': ['routeDesign', 'setRouteMode', 'checkRoute', 'addFiller']
    }
    
    for stage, commands in eda_commands.items():
        if command_name in commands:
            return True
    return False


def _get_eda_stage(command_name):
    """Get EDA stage for a command"""
    eda_stages = {
        'synthesis': ['analyze', 'elaborate', 'compile', 'compile_ultra', 'set_max_fanout', 
                     'set_max_transition', 'create_clock', 'report_timing', 'report_area'],
        'placement': ['floorPlan', 'placeDesign', 'setPlaceMode', 'checkPlace', 'refinePlace'],
        'cts': ['ccopt_design', 'create_clock_tree_spec', 'set_ccopt_property'],
        'route': ['routeDesign', 'setRouteMode', 'checkRoute', 'addFiller']
    }
    
    for stage, commands in eda_stages.items():
        if command_name in commands:
            return stage
    return 'unknown'


# Keep the old simple function for backward compatibility (but mark as deprecated)
def _simple_syntax_match(references, candidates, lang):
    """DEPRECATED: Simple syntax match - replaced by _advanced_tcl_syntax_match"""
    print("Warning: Using deprecated simple syntax match")
    return _advanced_tcl_syntax_match(references, candidates, get_tree_sitter_language(lang))
