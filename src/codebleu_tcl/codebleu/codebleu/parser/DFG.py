# Copyright (c) Microsoft Corporation.
# Licensed under the MIT license.

from .utils import tree_to_variable_index


def DFG_python(root_node, index_to_code, states):
    assignment = ["assignment", "augmented_assignment", "for_in_clause"]
    if_statement = ["if_statement"]
    for_statement = ["for_statement"]
    while_statement = ["while_statement"]
    do_first_statement = ["for_in_clause"]
    def_statement = ["default_parameter"]
    states = states.copy()
    if (
        len(root_node.children) == 0 or root_node.type in ["string_literal", "string", "character_literal"]
    ) and root_node.type != "comment":
        idx, code = index_to_code[(root_node.start_point, root_node.end_point)]
        if root_node.type == code:
            return [], states
        elif code in states:
            return [(code, idx, "comesFrom", [code], states[code].copy())], states
        else:
            if root_node.type == "identifier":
                states[code] = [idx]
            return [(code, idx, "comesFrom", [], [])], states
    elif root_node.type in def_statement:
        name = root_node.child_by_field_name("name")
        value = root_node.child_by_field_name("value")
        DFG = []
        if value is None:
            indexs = tree_to_variable_index(name, index_to_code)
            for index in indexs:
                idx, code = index_to_code[index]
                DFG.append((code, idx, "comesFrom", [], []))
                states[code] = [idx]
            return sorted(DFG, key=lambda x: x[1]), states
        else:
            name_indexs = tree_to_variable_index(name, index_to_code)
            value_indexs = tree_to_variable_index(value, index_to_code)
            temp, states = DFG_python(value, index_to_code, states)
            DFG += temp
            for index1 in name_indexs:
                idx1, code1 = index_to_code[index1]
                for index2 in value_indexs:
                    idx2, code2 = index_to_code[index2]
                    DFG.append((code1, idx1, "comesFrom", [code2], [idx2]))
                states[code1] = [idx1]
            return sorted(DFG, key=lambda x: x[1]), states
    elif root_node.type in assignment:
        if root_node.type == "for_in_clause":
            right_nodes = [root_node.children[-1]]
            left_nodes = [root_node.child_by_field_name("left")]
        else:
            if root_node.child_by_field_name("right") is None:
                return [], states
            left_nodes = [x for x in root_node.child_by_field_name("left").children if x.type != ","]
            right_nodes = [x for x in root_node.child_by_field_name("right").children if x.type != ","]
            if len(right_nodes) != len(left_nodes):
                left_nodes = [root_node.child_by_field_name("left")]
                right_nodes = [root_node.child_by_field_name("right")]
            if len(left_nodes) == 0:
                left_nodes = [root_node.child_by_field_name("left")]
            if len(right_nodes) == 0:
                right_nodes = [root_node.child_by_field_name("right")]
        DFG = []
        for node in right_nodes:
            temp, states = DFG_python(node, index_to_code, states)
            DFG += temp

        for left_node, right_node in zip(left_nodes, right_nodes):
            left_tokens_index = tree_to_variable_index(left_node, index_to_code)
            right_tokens_index = tree_to_variable_index(right_node, index_to_code)
            temp = []
            for token1_index in left_tokens_index:
                idx1, code1 = index_to_code[token1_index]
                temp.append(
                    (
                        code1,
                        idx1,
                        "computedFrom",
                        [index_to_code[x][1] for x in right_tokens_index],
                        [index_to_code[x][0] for x in right_tokens_index],
                    )
                )
                states[code1] = [idx1]
            DFG += temp
        return sorted(DFG, key=lambda x: x[1]), states
    elif root_node.type in if_statement:
        DFG = []
        current_states = states.copy()
        others_states = []
        tag = False
        if "else" in root_node.type:
            tag = True
        for child in root_node.children:
            if "else" in child.type:
                tag = True
            if child.type not in ["elif_clause", "else_clause"]:
                temp, current_states = DFG_python(child, index_to_code, current_states)
                DFG += temp
            else:
                temp, new_states = DFG_python(child, index_to_code, states)
                DFG += temp
                others_states.append(new_states)
        others_states.append(current_states)
        if tag is False:
            others_states.append(states)
        new_states = {}
        for dic in others_states:
            for key in dic:
                if key not in new_states:
                    new_states[key] = dic[key].copy()
                else:
                    new_states[key] += dic[key]
        for key in new_states:
            new_states[key] = sorted(list(set(new_states[key])))
        return sorted(DFG, key=lambda x: x[1]), new_states
    elif root_node.type in for_statement:
        DFG = []
        for i in range(2):
            right_nodes = [x for x in root_node.child_by_field_name("right").children if x.type != ","]
            left_nodes = [x for x in root_node.child_by_field_name("left").children if x.type != ","]
            if len(right_nodes) != len(left_nodes):
                left_nodes = [root_node.child_by_field_name("left")]
                right_nodes = [root_node.child_by_field_name("right")]
            if len(left_nodes) == 0:
                left_nodes = [root_node.child_by_field_name("left")]
            if len(right_nodes) == 0:
                right_nodes = [root_node.child_by_field_name("right")]
            for node in right_nodes:
                temp, states = DFG_python(node, index_to_code, states)
                DFG += temp
            for left_node, right_node in zip(left_nodes, right_nodes):
                left_tokens_index = tree_to_variable_index(left_node, index_to_code)
                right_tokens_index = tree_to_variable_index(right_node, index_to_code)
                temp = []
                for token1_index in left_tokens_index:
                    idx1, code1 = index_to_code[token1_index]
                    temp.append(
                        (
                            code1,
                            idx1,
                            "computedFrom",
                            [index_to_code[x][1] for x in right_tokens_index],
                            [index_to_code[x][0] for x in right_tokens_index],
                        )
                    )
                    states[code1] = [idx1]
                DFG += temp
            if root_node.children[-1].type == "block":
                temp, states = DFG_python(root_node.children[-1], index_to_code, states)
                DFG += temp
        dic = {}
        for x in DFG:
            if (x[0], x[1], x[2]) not in dic:
                dic[(x[0], x[1], x[2])] = [x[3], x[4]]
            else:
                dic[(x[0], x[1], x[2])][0] = list(set(dic[(x[0], x[1], x[2])][0] + x[3]))
                dic[(x[0], x[1], x[2])][1] = sorted(list(set(dic[(x[0], x[1], x[2])][1] + x[4])))
        DFG = [(x[0], x[1], x[2], y[0], y[1]) for x, y in sorted(dic.items(), key=lambda t: t[0][1])]
        return sorted(DFG, key=lambda x: x[1]), states
    elif root_node.type in while_statement:
        DFG = []
        for i in range(2):
            for child in root_node.children:
                temp, states = DFG_python(child, index_to_code, states)
                DFG += temp
        dic = {}
        for x in DFG:
            if (x[0], x[1], x[2]) not in dic:
                dic[(x[0], x[1], x[2])] = [x[3], x[4]]
            else:
                dic[(x[0], x[1], x[2])][0] = list(set(dic[(x[0], x[1], x[2])][0] + x[3]))
                dic[(x[0], x[1], x[2])][1] = sorted(list(set(dic[(x[0], x[1], x[2])][1] + x[4])))
        DFG = [(x[0], x[1], x[2], y[0], y[1]) for x, y in sorted(dic.items(), key=lambda t: t[0][1])]
        return sorted(DFG, key=lambda x: x[1]), states
    else:
        DFG = []
        for child in root_node.children:
            if child.type in do_first_statement:
                temp, states = DFG_python(child, index_to_code, states)
                DFG += temp
        for child in root_node.children:
            if child.type not in do_first_statement:
                temp, states = DFG_python(child, index_to_code, states)
                DFG += temp

        return sorted(DFG, key=lambda x: x[1]), states


def DFG_java(root_node, index_to_code, states):
    assignment = ["assignment_expression"]
    def_statement = ["variable_declarator"]
    increment_statement = ["update_expression"]
    if_statement = ["if_statement", "else"]
    for_statement = ["for_statement"]
    enhanced_for_statement = ["enhanced_for_statement"]
    while_statement = ["while_statement"]
    do_first_statement = []
    states = states.copy()
    if (
        len(root_node.children) == 0 or root_node.type in ["string_literal", "string", "character_literal"]
    ) and root_node.type != "comment":
        idx, code = index_to_code[(root_node.start_point, root_node.end_point)]
        if root_node.type == code:
            return [], states
        elif code in states:
            return [(code, idx, "comesFrom", [code], states[code].copy())], states
        else:
            if root_node.type == "identifier":
                states[code] = [idx]
            return [(code, idx, "comesFrom", [], [])], states
    elif root_node.type in def_statement:
        name = root_node.child_by_field_name("name")
        value = root_node.child_by_field_name("value")
        DFG = []
        if value is None:
            indexs = tree_to_variable_index(name, index_to_code)
            for index in indexs:
                idx, code = index_to_code[index]
                DFG.append((code, idx, "comesFrom", [], []))
                states[code] = [idx]
            return sorted(DFG, key=lambda x: x[1]), states
        else:
            name_indexs = tree_to_variable_index(name, index_to_code)
            value_indexs = tree_to_variable_index(value, index_to_code)
            temp, states = DFG_java(value, index_to_code, states)
            DFG += temp
            for index1 in name_indexs:
                idx1, code1 = index_to_code[index1]
                for index2 in value_indexs:
                    idx2, code2 = index_to_code[index2]
                    DFG.append((code1, idx1, "comesFrom", [code2], [idx2]))
                states[code1] = [idx1]
            return sorted(DFG, key=lambda x: x[1]), states
    elif root_node.type in assignment:
        left_nodes = root_node.child_by_field_name("left")
        right_nodes = root_node.child_by_field_name("right")
        DFG = []
        temp, states = DFG_java(right_nodes, index_to_code, states)
        DFG += temp
        name_indexs = tree_to_variable_index(left_nodes, index_to_code)
        value_indexs = tree_to_variable_index(right_nodes, index_to_code)
        for index1 in name_indexs:
            idx1, code1 = index_to_code[index1]
            for index2 in value_indexs:
                idx2, code2 = index_to_code[index2]
                DFG.append((code1, idx1, "computedFrom", [code2], [idx2]))
            states[code1] = [idx1]
        return sorted(DFG, key=lambda x: x[1]), states
    elif root_node.type in increment_statement:
        DFG = []
        indexs = tree_to_variable_index(root_node, index_to_code)
        for index1 in indexs:
            idx1, code1 = index_to_code[index1]
            for index2 in indexs:
                idx2, code2 = index_to_code[index2]
                DFG.append((code1, idx1, "computedFrom", [code2], [idx2]))
            states[code1] = [idx1]
        return sorted(DFG, key=lambda x: x[1]), states
    elif root_node.type in if_statement:
        DFG = []
        current_states = states.copy()
        others_states = []
        flag = False
        tag = False
        if "else" in root_node.type:
            tag = True
        for child in root_node.children:
            if "else" in child.type:
                tag = True
            if child.type not in if_statement and flag is False:
                temp, current_states = DFG_java(child, index_to_code, current_states)
                DFG += temp
            else:
                flag = True
                temp, new_states = DFG_java(child, index_to_code, states)
                DFG += temp
                others_states.append(new_states)
        others_states.append(current_states)
        if tag is False:
            others_states.append(states)
        new_states = {}
        for dic in others_states:
            for key in dic:
                if key not in new_states:
                    new_states[key] = dic[key].copy()
                else:
                    new_states[key] += dic[key]
        for key in new_states:
            new_states[key] = sorted(list(set(new_states[key])))
        return sorted(DFG, key=lambda x: x[1]), new_states
    elif root_node.type in for_statement:
        DFG = []
        for child in root_node.children:
            temp, states = DFG_java(child, index_to_code, states)
            DFG += temp
        flag = False
        for child in root_node.children:
            if flag:
                temp, states = DFG_java(child, index_to_code, states)
                DFG += temp
            elif child.type == "local_variable_declaration":
                flag = True
        dic = {}
        for x in DFG:
            if (x[0], x[1], x[2]) not in dic:
                dic[(x[0], x[1], x[2])] = [x[3], x[4]]
            else:
                dic[(x[0], x[1], x[2])][0] = list(set(dic[(x[0], x[1], x[2])][0] + x[3]))
                dic[(x[0], x[1], x[2])][1] = sorted(list(set(dic[(x[0], x[1], x[2])][1] + x[4])))
        DFG = [(x[0], x[1], x[2], y[0], y[1]) for x, y in sorted(dic.items(), key=lambda t: t[0][1])]
        return sorted(DFG, key=lambda x: x[1]), states
    elif root_node.type in enhanced_for_statement:
        name = root_node.child_by_field_name("name")
        value = root_node.child_by_field_name("value")
        body = root_node.child_by_field_name("body")
        DFG = []
        for i in range(2):
            temp, states = DFG_java(value, index_to_code, states)
            DFG += temp
            name_indexs = tree_to_variable_index(name, index_to_code)
            value_indexs = tree_to_variable_index(value, index_to_code)
            for index1 in name_indexs:
                idx1, code1 = index_to_code[index1]
                for index2 in value_indexs:
                    idx2, code2 = index_to_code[index2]
                    DFG.append((code1, idx1, "computedFrom", [code2], [idx2]))
                states[code1] = [idx1]
            temp, states = DFG_java(body, index_to_code, states)
            DFG += temp
        dic = {}
        for x in DFG:
            if (x[0], x[1], x[2]) not in dic:
                dic[(x[0], x[1], x[2])] = [x[3], x[4]]
            else:
                dic[(x[0], x[1], x[2])][0] = list(set(dic[(x[0], x[1], x[2])][0] + x[3]))
                dic[(x[0], x[1], x[2])][1] = sorted(list(set(dic[(x[0], x[1], x[2])][1] + x[4])))
        DFG = [(x[0], x[1], x[2], y[0], y[1]) for x, y in sorted(dic.items(), key=lambda t: t[0][1])]
        return sorted(DFG, key=lambda x: x[1]), states
    elif root_node.type in while_statement:
        DFG = []
        for i in range(2):
            for child in root_node.children:
                temp, states = DFG_java(child, index_to_code, states)
                DFG += temp
        dic = {}
        for x in DFG:
            if (x[0], x[1], x[2]) not in dic:
                dic[(x[0], x[1], x[2])] = [x[3], x[4]]
            else:
                dic[(x[0], x[1], x[2])][0] = list(set(dic[(x[0], x[1], x[2])][0] + x[3]))
                dic[(x[0], x[1], x[2])][1] = sorted(list(set(dic[(x[0], x[1], x[2])][1] + x[4])))
        DFG = [(x[0], x[1], x[2], y[0], y[1]) for x, y in sorted(dic.items(), key=lambda t: t[0][1])]
        return sorted(DFG, key=lambda x: x[1]), states
    else:
        DFG = []
        for child in root_node.children:
            if child.type in do_first_statement:
                temp, states = DFG_java(child, index_to_code, states)
                DFG += temp
        for child in root_node.children:
            if child.type not in do_first_statement:
                temp, states = DFG_java(child, index_to_code, states)
                DFG += temp

        return sorted(DFG, key=lambda x: x[1]), states


def DFG_csharp(root_node, index_to_code, states):
    assignment = ["assignment_expression"]
    def_statement = ["variable_declarator"]
    increment_statement = ["postfix_unary_expression"]
    if_statement = ["if_statement", "else"]
    for_statement = ["for_statement"]
    enhanced_for_statement = ["for_each_statement"]
    while_statement = ["while_statement"]
    do_first_statement = []
    states = states.copy()
    if (
        len(root_node.children) == 0 or root_node.type in ["string_literal", "string", "character_literal"]
    ) and root_node.type != "comment":
        idx, code = index_to_code[(root_node.start_point, root_node.end_point)]
        if root_node.type == code:
            return [], states
        elif code in states:
            return [(code, idx, "comesFrom", [code], states[code].copy())], states
        else:
            if root_node.type == "identifier":
                states[code] = [idx]
            return [(code, idx, "comesFrom", [], [])], states
    elif root_node.type in def_statement:
        if len(root_node.children) == 2:
            name = root_node.children[0]
            value = root_node.children[1]
        else:
            name = root_node.children[0]
            value = None
        DFG = []
        if value is None:
            indexs = tree_to_variable_index(name, index_to_code)
            for index in indexs:
                idx, code = index_to_code[index]
                DFG.append((code, idx, "comesFrom", [], []))
                states[code] = [idx]
            return sorted(DFG, key=lambda x: x[1]), states
        else:
            name_indexs = tree_to_variable_index(name, index_to_code)
            value_indexs = tree_to_variable_index(value, index_to_code)
            temp, states = DFG_csharp(value, index_to_code, states)
            DFG += temp
            for index1 in name_indexs:
                idx1, code1 = index_to_code[index1]
                for index2 in value_indexs:
                    idx2, code2 = index_to_code[index2]
                    DFG.append((code1, idx1, "comesFrom", [code2], [idx2]))
                states[code1] = [idx1]
            return sorted(DFG, key=lambda x: x[1]), states
    elif root_node.type in assignment:
        left_nodes = root_node.child_by_field_name("left")
        right_nodes = root_node.child_by_field_name("right")
        DFG = []
        temp, states = DFG_csharp(right_nodes, index_to_code, states)
        DFG += temp
        name_indexs = tree_to_variable_index(left_nodes, index_to_code)
        value_indexs = tree_to_variable_index(right_nodes, index_to_code)
        for index1 in name_indexs:
            idx1, code1 = index_to_code[index1]
            for index2 in value_indexs:
                idx2, code2 = index_to_code[index2]
                DFG.append((code1, idx1, "computedFrom", [code2], [idx2]))
            states[code1] = [idx1]
        return sorted(DFG, key=lambda x: x[1]), states
    elif root_node.type in increment_statement:
        DFG = []
        indexs = tree_to_variable_index(root_node, index_to_code)
        for index1 in indexs:
            idx1, code1 = index_to_code[index1]
            for index2 in indexs:
                idx2, code2 = index_to_code[index2]
                DFG.append((code1, idx1, "computedFrom", [code2], [idx2]))
            states[code1] = [idx1]
        return sorted(DFG, key=lambda x: x[1]), states
    elif root_node.type in if_statement:
        DFG = []
        current_states = states.copy()
        others_states = []
        flag = False
        tag = False
        if "else" in root_node.type:
            tag = True
        for child in root_node.children:
            if "else" in child.type:
                tag = True
            if child.type not in if_statement and flag is False:
                temp, current_states = DFG_csharp(child, index_to_code, current_states)
                DFG += temp
            else:
                flag = True
                temp, new_states = DFG_csharp(child, index_to_code, states)
                DFG += temp
                others_states.append(new_states)
        others_states.append(current_states)
        if tag is False:
            others_states.append(states)
        new_states = {}
        for dic in others_states:
            for key in dic:
                if key not in new_states:
                    new_states[key] = dic[key].copy()
                else:
                    new_states[key] += dic[key]
        for key in states:
            if key not in new_states:
                new_states[key] = states[key]
            else:
                new_states[key] += states[key]
        for key in new_states:
            new_states[key] = sorted(list(set(new_states[key])))
        return sorted(DFG, key=lambda x: x[1]), new_states
    elif root_node.type in for_statement:
        DFG = []
        for child in root_node.children:
            temp, states = DFG_csharp(child, index_to_code, states)
            DFG += temp
        flag = False
        for child in root_node.children:
            if flag:
                temp, states = DFG_csharp(child, index_to_code, states)
                DFG += temp
            elif child.type == "local_variable_declaration":
                flag = True
        dic = {}
        for x in DFG:
            if (x[0], x[1], x[2]) not in dic:
                dic[(x[0], x[1], x[2])] = [x[3], x[4]]
            else:
                dic[(x[0], x[1], x[2])][0] = list(set(dic[(x[0], x[1], x[2])][0] + x[3]))
                dic[(x[0], x[1], x[2])][1] = sorted(list(set(dic[(x[0], x[1], x[2])][1] + x[4])))
        DFG = [(x[0], x[1], x[2], y[0], y[1]) for x, y in sorted(dic.items(), key=lambda t: t[0][1])]
        return sorted(DFG, key=lambda x: x[1]), states
    elif root_node.type in enhanced_for_statement:
        name = root_node.child_by_field_name("left")
        value = root_node.child_by_field_name("right")
        body = root_node.child_by_field_name("body")
        DFG = []
        for i in range(2):
            temp, states = DFG_csharp(value, index_to_code, states)
            DFG += temp
            name_indexs = tree_to_variable_index(name, index_to_code)
            value_indexs = tree_to_variable_index(value, index_to_code)
            for index1 in name_indexs:
                idx1, code1 = index_to_code[index1]
                for index2 in value_indexs:
                    idx2, code2 = index_to_code[index2]
                    DFG.append((code1, idx1, "computedFrom", [code2], [idx2]))
                states[code1] = [idx1]
            temp, states = DFG_csharp(body, index_to_code, states)
            DFG += temp
        dic = {}
        for x in DFG:
            if (x[0], x[1], x[2]) not in dic:
                dic[(x[0], x[1], x[2])] = [x[3], x[4]]
            else:
                dic[(x[0], x[1], x[2])][0] = list(set(dic[(x[0], x[1], x[2])][0] + x[3]))
                dic[(x[0], x[1], x[2])][1] = sorted(list(set(dic[(x[0], x[1], x[2])][1] + x[4])))
        DFG = [(x[0], x[1], x[2], y[0], y[1]) for x, y in sorted(dic.items(), key=lambda t: t[0][1])]
        return sorted(DFG, key=lambda x: x[1]), states
    elif root_node.type in while_statement:
        DFG = []
        for i in range(2):
            for child in root_node.children:
                temp, states = DFG_csharp(child, index_to_code, states)
                DFG += temp
        dic = {}
        for x in DFG:
            if (x[0], x[1], x[2]) not in dic:
                dic[(x[0], x[1], x[2])] = [x[3], x[4]]
            else:
                dic[(x[0], x[1], x[2])][0] = list(set(dic[(x[0], x[1], x[2])][0] + x[3]))
                dic[(x[0], x[1], x[2])][1] = sorted(list(set(dic[(x[0], x[1], x[2])][1] + x[4])))
        DFG = [(x[0], x[1], x[2], y[0], y[1]) for x, y in sorted(dic.items(), key=lambda t: t[0][1])]
        return sorted(DFG, key=lambda x: x[1]), states
    else:
        DFG = []
        for child in root_node.children:
            if child.type in do_first_statement:
                temp, states = DFG_csharp(child, index_to_code, states)
                DFG += temp
        for child in root_node.children:
            if child.type not in do_first_statement:
                temp, states = DFG_csharp(child, index_to_code, states)
                DFG += temp

        return sorted(DFG, key=lambda x: x[1]), states


def DFG_ruby(root_node, index_to_code, states):
    assignment = ["assignment", "operator_assignment"]
    if_statement = ["if", "elsif", "else", "unless", "when"]
    for_statement = ["for"]
    while_statement = ["while_modifier", "until"]
    do_first_statement = []
    def_statement = ["keyword_parameter"]
    if (
        len(root_node.children) == 0 or root_node.type in ["string_literal", "string", "character_literal"]
    ) and root_node.type != "comment":
        states = states.copy()
        idx, code = index_to_code[(root_node.start_point, root_node.end_point)]
        if root_node.type == code:
            return [], states
        elif code in states:
            return [(code, idx, "comesFrom", [code], states[code].copy())], states
        else:
            if root_node.type == "identifier":
                states[code] = [idx]
            return [(code, idx, "comesFrom", [], [])], states
    elif root_node.type in def_statement:
        name = root_node.child_by_field_name("name")
        value = root_node.child_by_field_name("value")
        DFG = []
        if value is None:
            indexs = tree_to_variable_index(name, index_to_code)
            for index in indexs:
                idx, code = index_to_code[index]
                DFG.append((code, idx, "comesFrom", [], []))
                states[code] = [idx]
            return sorted(DFG, key=lambda x: x[1]), states
        else:
            name_indexs = tree_to_variable_index(name, index_to_code)
            value_indexs = tree_to_variable_index(value, index_to_code)
            temp, states = DFG_ruby(value, index_to_code, states)
            DFG += temp
            for index1 in name_indexs:
                idx1, code1 = index_to_code[index1]
                for index2 in value_indexs:
                    idx2, code2 = index_to_code[index2]
                    DFG.append((code1, idx1, "comesFrom", [code2], [idx2]))
                states[code1] = [idx1]
            return sorted(DFG, key=lambda x: x[1]), states
    elif root_node.type in assignment:
        left_nodes = [x for x in root_node.child_by_field_name("left").children if x.type != ","]
        right_nodes = [x for x in root_node.child_by_field_name("right").children if x.type != ","]
        if len(right_nodes) != len(left_nodes):
            left_nodes = [root_node.child_by_field_name("left")]
            right_nodes = [root_node.child_by_field_name("right")]
        if len(left_nodes) == 0:
            left_nodes = [root_node.child_by_field_name("left")]
        if len(right_nodes) == 0:
            right_nodes = [root_node.child_by_field_name("right")]
        if root_node.type == "operator_assignment":
            left_nodes = [root_node.children[0]]
            right_nodes = [root_node.children[-1]]

        DFG = []
        for node in right_nodes:
            temp, states = DFG_ruby(node, index_to_code, states)
            DFG += temp

        for left_node, right_node in zip(left_nodes, right_nodes):
            left_tokens_index = tree_to_variable_index(left_node, index_to_code)
            right_tokens_index = tree_to_variable_index(right_node, index_to_code)
            temp = []
            for token1_index in left_tokens_index:
                idx1, code1 = index_to_code[token1_index]
                temp.append(
                    (
                        code1,
                        idx1,
                        "computedFrom",
                        [index_to_code[x][1] for x in right_tokens_index],
                        [index_to_code[x][0] for x in right_tokens_index],
                    )
                )
                states[code1] = [idx1]
            DFG += temp
        return sorted(DFG, key=lambda x: x[1]), states
    elif root_node.type in if_statement:
        DFG = []
        current_states = states.copy()
        others_states = []
        tag = False
        if "else" in root_node.type:
            tag = True
        for child in root_node.children:
            if "else" in child.type:
                tag = True
            if child.type not in if_statement:
                temp, current_states = DFG_ruby(child, index_to_code, current_states)
                DFG += temp
            else:
                temp, new_states = DFG_ruby(child, index_to_code, states)
                DFG += temp
                others_states.append(new_states)
        others_states.append(current_states)
        if tag is False:
            others_states.append(states)
        new_states = {}
        for dic in others_states:
            for key in dic:
                if key not in new_states:
                    new_states[key] = dic[key].copy()
                else:
                    new_states[key] += dic[key]
        for key in new_states:
            new_states[key] = sorted(list(set(new_states[key])))
        return sorted(DFG, key=lambda x: x[1]), new_states
    elif root_node.type in for_statement:
        DFG = []
        for i in range(2):
            left_nodes = [root_node.child_by_field_name("pattern")]
            right_nodes = [root_node.child_by_field_name("value")]
            assert len(right_nodes) == len(left_nodes)
            for node in right_nodes:
                temp, states = DFG_ruby(node, index_to_code, states)
                DFG += temp
            for left_node, right_node in zip(left_nodes, right_nodes):
                left_tokens_index = tree_to_variable_index(left_node, index_to_code)
                right_tokens_index = tree_to_variable_index(right_node, index_to_code)
                temp = []
                for token1_index in left_tokens_index:
                    idx1, code1 = index_to_code[token1_index]
                    temp.append(
                        (
                            code1,
                            idx1,
                            "computedFrom",
                            [index_to_code[x][1] for x in right_tokens_index],
                            [index_to_code[x][0] for x in right_tokens_index],
                        )
                    )
                    states[code1] = [idx1]
                DFG += temp
            temp, states = DFG_ruby(root_node.child_by_field_name("body"), index_to_code, states)
            DFG += temp
        dic = {}
        for x in DFG:
            if (x[0], x[1], x[2]) not in dic:
                dic[(x[0], x[1], x[2])] = [x[3], x[4]]
            else:
                dic[(x[0], x[1], x[2])][0] = list(set(dic[(x[0], x[1], x[2])][0] + x[3]))
                dic[(x[0], x[1], x[2])][1] = sorted(list(set(dic[(x[0], x[1], x[2])][1] + x[4])))
        DFG = [(x[0], x[1], x[2], y[0], y[1]) for x, y in sorted(dic.items(), key=lambda t: t[0][1])]
        return sorted(DFG, key=lambda x: x[1]), states
    elif root_node.type in while_statement:
        DFG = []
        for i in range(2):
            for child in root_node.children:
                temp, states = DFG_ruby(child, index_to_code, states)
                DFG += temp
        dic = {}
        for x in DFG:
            if (x[0], x[1], x[2]) not in dic:
                dic[(x[0], x[1], x[2])] = [x[3], x[4]]
            else:
                dic[(x[0], x[1], x[2])][0] = list(set(dic[(x[0], x[1], x[2])][0] + x[3]))
                dic[(x[0], x[1], x[2])][1] = sorted(list(set(dic[(x[0], x[1], x[2])][1] + x[4])))
        DFG = [(x[0], x[1], x[2], y[0], y[1]) for x, y in sorted(dic.items(), key=lambda t: t[0][1])]
        return sorted(DFG, key=lambda x: x[1]), states
    else:
        DFG = []
        for child in root_node.children:
            if child.type in do_first_statement:
                temp, states = DFG_ruby(child, index_to_code, states)
                DFG += temp
        for child in root_node.children:
            if child.type not in do_first_statement:
                temp, states = DFG_ruby(child, index_to_code, states)
                DFG += temp

        return sorted(DFG, key=lambda x: x[1]), states


def DFG_go(root_node, index_to_code, states):
    assignment = [
        "assignment_statement",
    ]
    def_statement = ["var_spec"]
    increment_statement = ["inc_statement"]
    if_statement = ["if_statement", "else"]
    for_statement = ["for_statement"]
    do_first_statement = []
    states = states.copy()
    if (
        len(root_node.children) == 0 or root_node.type in ["string_literal", "string", "character_literal"]
    ) and root_node.type != "comment":
        idx, code = index_to_code[(root_node.start_point, root_node.end_point)]
        if root_node.type == code:
            return [], states
        elif code in states:
            return [(code, idx, "comesFrom", [code], states[code].copy())], states
        else:
            if root_node.type == "identifier":
                states[code] = [idx]
            return [(code, idx, "comesFrom", [], [])], states
    elif root_node.type in def_statement:
        name = root_node.child_by_field_name("name")
        value = root_node.child_by_field_name("value")
        DFG = []
        if value is None:
            indexs = tree_to_variable_index(name, index_to_code)
            for index in indexs:
                idx, code = index_to_code[index]
                DFG.append((code, idx, "comesFrom", [], []))
                states[code] = [idx]
            return sorted(DFG, key=lambda x: x[1]), states
        else:
            name_indexs = tree_to_variable_index(name, index_to_code)
            value_indexs = tree_to_variable_index(value, index_to_code)
            temp, states = DFG_go(value, index_to_code, states)
            DFG += temp
            for index1 in name_indexs:
                idx1, code1 = index_to_code[index1]
                for index2 in value_indexs:
                    idx2, code2 = index_to_code[index2]
                    DFG.append((code1, idx1, "comesFrom", [code2], [idx2]))
                states[code1] = [idx1]
            return sorted(DFG, key=lambda x: x[1]), states
    elif root_node.type in assignment:
        left_nodes = root_node.child_by_field_name("left")
        right_nodes = root_node.child_by_field_name("right")
        DFG = []
        temp, states = DFG_go(right_nodes, index_to_code, states)
        DFG += temp
        name_indexs = tree_to_variable_index(left_nodes, index_to_code)
        value_indexs = tree_to_variable_index(right_nodes, index_to_code)
        for index1 in name_indexs:
            idx1, code1 = index_to_code[index1]
            for index2 in value_indexs:
                idx2, code2 = index_to_code[index2]
                DFG.append((code1, idx1, "computedFrom", [code2], [idx2]))
            states[code1] = [idx1]
        return sorted(DFG, key=lambda x: x[1]), states
    elif root_node.type in increment_statement:
        DFG = []
        indexs = tree_to_variable_index(root_node, index_to_code)
        for index1 in indexs:
            idx1, code1 = index_to_code[index1]
            for index2 in indexs:
                idx2, code2 = index_to_code[index2]
                DFG.append((code1, idx1, "computedFrom", [code2], [idx2]))
            states[code1] = [idx1]
        return sorted(DFG, key=lambda x: x[1]), states
    elif root_node.type in if_statement:
        DFG = []
        current_states = states.copy()
        others_states = []
        flag = False
        tag = False
        if "else" in root_node.type:
            tag = True
        for child in root_node.children:
            if "else" in child.type:
                tag = True
            if child.type not in if_statement and flag is False:
                temp, current_states = DFG_go(child, index_to_code, current_states)
                DFG += temp
            else:
                flag = True
                temp, new_states = DFG_go(child, index_to_code, states)
                DFG += temp
                others_states.append(new_states)
        others_states.append(current_states)
        if tag is False:
            others_states.append(states)
        new_states = {}
        for dic in others_states:
            for key in dic:
                if key not in new_states:
                    new_states[key] = dic[key].copy()
                else:
                    new_states[key] += dic[key]
        for key in states:
            if key not in new_states:
                new_states[key] = states[key]
            else:
                new_states[key] += states[key]
        for key in new_states:
            new_states[key] = sorted(list(set(new_states[key])))
        return sorted(DFG, key=lambda x: x[1]), new_states
    elif root_node.type in for_statement:
        DFG = []
        for child in root_node.children:
            temp, states = DFG_go(child, index_to_code, states)
            DFG += temp
        flag = False
        for child in root_node.children:
            if flag:
                temp, states = DFG_go(child, index_to_code, states)
                DFG += temp
            elif child.type == "for_clause":
                if child.child_by_field_name("update") is not None:
                    temp, states = DFG_go(child.child_by_field_name("update"), index_to_code, states)
                    DFG += temp
                flag = True
        dic = {}
        for x in DFG:
            if (x[0], x[1], x[2]) not in dic:
                dic[(x[0], x[1], x[2])] = [x[3], x[4]]
            else:
                dic[(x[0], x[1], x[2])][0] = list(set(dic[(x[0], x[1], x[2])][0] + x[3]))
                dic[(x[0], x[1], x[2])][1] = sorted(list(set(dic[(x[0], x[1], x[2])][1] + x[4])))
        DFG = [(x[0], x[1], x[2], y[0], y[1]) for x, y in sorted(dic.items(), key=lambda t: t[0][1])]
        return sorted(DFG, key=lambda x: x[1]), states
    else:
        DFG = []
        for child in root_node.children:
            if child.type in do_first_statement:
                temp, states = DFG_go(child, index_to_code, states)
                DFG += temp
        for child in root_node.children:
            if child.type not in do_first_statement:
                temp, states = DFG_go(child, index_to_code, states)
                DFG += temp

        return sorted(DFG, key=lambda x: x[1]), states


def DFG_php(root_node, index_to_code, states):
    assignment = ["assignment_expression", "augmented_assignment_expression"]
    def_statement = ["simple_parameter"]
    increment_statement = ["update_expression"]
    if_statement = ["if_statement", "else_clause"]
    for_statement = ["for_statement"]
    enhanced_for_statement = ["foreach_statement"]
    while_statement = ["while_statement"]
    do_first_statement = []
    states = states.copy()
    if (
        len(root_node.children) == 0 or root_node.type in ["string_literal", "string", "character_literal"]
    ) and root_node.type != "comment":
        idx, code = index_to_code[(root_node.start_point, root_node.end_point)]
        if root_node.type == code:
            return [], states
        elif code in states:
            return [(code, idx, "comesFrom", [code], states[code].copy())], states
        else:
            if root_node.type == "identifier":
                states[code] = [idx]
            return [(code, idx, "comesFrom", [], [])], states
    elif root_node.type in def_statement:
        name = root_node.child_by_field_name("name")
        value = root_node.child_by_field_name("default_value")
        DFG = []
        if value is None:
            indexs = tree_to_variable_index(name, index_to_code)
            for index in indexs:
                idx, code = index_to_code[index]
                DFG.append((code, idx, "comesFrom", [], []))
                states[code] = [idx]
            return sorted(DFG, key=lambda x: x[1]), states
        else:
            name_indexs = tree_to_variable_index(name, index_to_code)
            value_indexs = tree_to_variable_index(value, index_to_code)
            temp, states = DFG_php(value, index_to_code, states)
            DFG += temp
            for index1 in name_indexs:
                idx1, code1 = index_to_code[index1]
                for index2 in value_indexs:
                    idx2, code2 = index_to_code[index2]
                    DFG.append((code1, idx1, "comesFrom", [code2], [idx2]))
                states[code1] = [idx1]
            return sorted(DFG, key=lambda x: x[1]), states
    elif root_node.type in assignment:
        left_nodes = root_node.child_by_field_name("left")
        right_nodes = root_node.child_by_field_name("right")
        DFG = []
        temp, states = DFG_php(right_nodes, index_to_code, states)
        DFG += temp
        name_indexs = tree_to_variable_index(left_nodes, index_to_code)
        value_indexs = tree_to_variable_index(right_nodes, index_to_code)
        for index1 in name_indexs:
            idx1, code1 = index_to_code[index1]
            for index2 in value_indexs:
                idx2, code2 = index_to_code[index2]
                DFG.append((code1, idx1, "computedFrom", [code2], [idx2]))
            states[code1] = [idx1]
        return sorted(DFG, key=lambda x: x[1]), states
    elif root_node.type in increment_statement:
        DFG = []
        indexs = tree_to_variable_index(root_node, index_to_code)
        for index1 in indexs:
            idx1, code1 = index_to_code[index1]
            for index2 in indexs:
                idx2, code2 = index_to_code[index2]
                DFG.append((code1, idx1, "computedFrom", [code2], [idx2]))
            states[code1] = [idx1]
        return sorted(DFG, key=lambda x: x[1]), states
    elif root_node.type in if_statement:
        DFG = []
        current_states = states.copy()
        others_states = []
        flag = False
        if "else" in root_node.type:
            pass
        for child in root_node.children:
            if "else" in child.type:
                pass
            if child.type not in if_statement and flag is False:
                temp, current_states = DFG_php(child, index_to_code, current_states)
                DFG += temp
            else:
                flag = True
                temp, new_states = DFG_php(child, index_to_code, states)
                DFG += temp
                others_states.append(new_states)
        others_states.append(current_states)
        new_states = {}
        for dic in others_states:
            for key in dic:
                if key not in new_states:
                    new_states[key] = dic[key].copy()
                else:
                    new_states[key] += dic[key]
        for key in states:
            if key not in new_states:
                new_states[key] = states[key]
            else:
                new_states[key] += states[key]
        for key in new_states:
            new_states[key] = sorted(list(set(new_states[key])))
        return sorted(DFG, key=lambda x: x[1]), new_states
    elif root_node.type in for_statement:
        DFG = []
        for child in root_node.children:
            temp, states = DFG_php(child, index_to_code, states)
            DFG += temp
        flag = False
        for child in root_node.children:
            if flag:
                temp, states = DFG_php(child, index_to_code, states)
                DFG += temp
            elif child.type == "assignment_expression":
                flag = True
        dic = {}
        for x in DFG:
            if (x[0], x[1], x[2]) not in dic:
                dic[(x[0], x[1], x[2])] = [x[3], x[4]]
            else:
                dic[(x[0], x[1], x[2])][0] = list(set(dic[(x[0], x[1], x[2])][0] + x[3]))
                dic[(x[0], x[1], x[2])][1] = sorted(list(set(dic[(x[0], x[1], x[2])][1] + x[4])))
        DFG = [(x[0], x[1], x[2], y[0], y[1]) for x, y in sorted(dic.items(), key=lambda t: t[0][1])]
        return sorted(DFG, key=lambda x: x[1]), states
    elif root_node.type in enhanced_for_statement:
        name = None
        value = None
        for child in root_node.children:
            if child.type == "variable_name" and value is None:
                value = child
            elif child.type == "variable_name" and name is None:
                name = child
                break
        body = root_node.child_by_field_name("body")
        DFG = []
        for i in range(2):
            temp, states = DFG_php(value, index_to_code, states)
            DFG += temp
            name_indexs = tree_to_variable_index(name, index_to_code)
            value_indexs = tree_to_variable_index(value, index_to_code)
            for index1 in name_indexs:
                idx1, code1 = index_to_code[index1]
                for index2 in value_indexs:
                    idx2, code2 = index_to_code[index2]
                    DFG.append((code1, idx1, "computedFrom", [code2], [idx2]))
                states[code1] = [idx1]
            temp, states = DFG_php(body, index_to_code, states)
            DFG += temp
        dic = {}
        for x in DFG:
            if (x[0], x[1], x[2]) not in dic:
                dic[(x[0], x[1], x[2])] = [x[3], x[4]]
            else:
                dic[(x[0], x[1], x[2])][0] = list(set(dic[(x[0], x[1], x[2])][0] + x[3]))
                dic[(x[0], x[1], x[2])][1] = sorted(list(set(dic[(x[0], x[1], x[2])][1] + x[4])))
        DFG = [(x[0], x[1], x[2], y[0], y[1]) for x, y in sorted(dic.items(), key=lambda t: t[0][1])]
        return sorted(DFG, key=lambda x: x[1]), states
    elif root_node.type in while_statement:
        DFG = []
        for i in range(2):
            for child in root_node.children:
                temp, states = DFG_php(child, index_to_code, states)
                DFG += temp
        dic = {}
        for x in DFG:
            if (x[0], x[1], x[2]) not in dic:
                dic[(x[0], x[1], x[2])] = [x[3], x[4]]
            else:
                dic[(x[0], x[1], x[2])][0] = list(set(dic[(x[0], x[1], x[2])][0] + x[3]))
                dic[(x[0], x[1], x[2])][1] = sorted(list(set(dic[(x[0], x[1], x[2])][1] + x[4])))
        DFG = [(x[0], x[1], x[2], y[0], y[1]) for x, y in sorted(dic.items(), key=lambda t: t[0][1])]
        return sorted(DFG, key=lambda x: x[1]), states
    else:
        DFG = []
        for child in root_node.children:
            if child.type in do_first_statement:
                temp, states = DFG_php(child, index_to_code, states)
                DFG += temp
        for child in root_node.children:
            if child.type not in do_first_statement:
                temp, states = DFG_php(child, index_to_code, states)
                DFG += temp

        return sorted(DFG, key=lambda x: x[1]), states


def DFG_javascript(root_node, index_to_code, states):
    assignment = ["assignment_pattern", "augmented_assignment_expression"]
    def_statement = ["variable_declarator"]
    increment_statement = ["update_expression"]
    if_statement = ["if_statement", "else"]
    for_statement = ["for_statement"]
    while_statement = ["while_statement"]
    do_first_statement = []
    states = states.copy()
    if (
        len(root_node.children) == 0 or root_node.type in ["string_literal", "string", "character_literal"]
    ) and root_node.type != "comment":
        idx, code = index_to_code[(root_node.start_point, root_node.end_point)]
        if root_node.type == code:
            return [], states
        elif code in states:
            return [(code, idx, "comesFrom", [code], states[code].copy())], states
        else:
            if root_node.type == "identifier":
                states[code] = [idx]
            return [(code, idx, "comesFrom", [], [])], states
    elif root_node.type in def_statement:
        name = root_node.child_by_field_name("name")
        value = root_node.child_by_field_name("value")
        DFG = []
        if value is None:
            indexs = tree_to_variable_index(name, index_to_code)
            for index in indexs:
                idx, code = index_to_code[index]
                DFG.append((code, idx, "comesFrom", [], []))
                states[code] = [idx]
            return sorted(DFG, key=lambda x: x[1]), states
        else:
            name_indexs = tree_to_variable_index(name, index_to_code)
            value_indexs = tree_to_variable_index(value, index_to_code)
            temp, states = DFG_javascript(value, index_to_code, states)
            DFG += temp
            for index1 in name_indexs:
                idx1, code1 = index_to_code[index1]
                for index2 in value_indexs:
                    idx2, code2 = index_to_code[index2]
                    DFG.append((code1, idx1, "comesFrom", [code2], [idx2]))
                states[code1] = [idx1]
            return sorted(DFG, key=lambda x: x[1]), states
    elif root_node.type in assignment:
        left_nodes = root_node.child_by_field_name("left")
        right_nodes = root_node.child_by_field_name("right")
        DFG = []
        temp, states = DFG_javascript(right_nodes, index_to_code, states)
        DFG += temp
        name_indexs = tree_to_variable_index(left_nodes, index_to_code)
        value_indexs = tree_to_variable_index(right_nodes, index_to_code)
        for index1 in name_indexs:
            idx1, code1 = index_to_code[index1]
            for index2 in value_indexs:
                idx2, code2 = index_to_code[index2]
                DFG.append((code1, idx1, "computedFrom", [code2], [idx2]))
            states[code1] = [idx1]
        return sorted(DFG, key=lambda x: x[1]), states
    elif root_node.type in increment_statement:
        DFG = []
        indexs = tree_to_variable_index(root_node, index_to_code)
        for index1 in indexs:
            idx1, code1 = index_to_code[index1]
            for index2 in indexs:
                idx2, code2 = index_to_code[index2]
                DFG.append((code1, idx1, "computedFrom", [code2], [idx2]))
            states[code1] = [idx1]
        return sorted(DFG, key=lambda x: x[1]), states
    elif root_node.type in if_statement:
        DFG = []
        current_states = states.copy()
        others_states = []
        flag = False
        tag = False
        if "else" in root_node.type:
            tag = True
        for child in root_node.children:
            if "else" in child.type:
                tag = True
            if child.type not in if_statement and flag is False:
                temp, current_states = DFG_javascript(child, index_to_code, current_states)
                DFG += temp
            else:
                flag = True
                temp, new_states = DFG_javascript(child, index_to_code, states)
                DFG += temp
                others_states.append(new_states)
        others_states.append(current_states)
        if tag is False:
            others_states.append(states)
        new_states = {}
        for dic in others_states:
            for key in dic:
                if key not in new_states:
                    new_states[key] = dic[key].copy()
                else:
                    new_states[key] += dic[key]
        for key in states:
            if key not in new_states:
                new_states[key] = states[key]
            else:
                new_states[key] += states[key]
        for key in new_states:
            new_states[key] = sorted(list(set(new_states[key])))
        return sorted(DFG, key=lambda x: x[1]), new_states
    elif root_node.type in for_statement:
        DFG = []
        for child in root_node.children:
            temp, states = DFG_javascript(child, index_to_code, states)
            DFG += temp
        flag = False
        for child in root_node.children:
            if flag:
                temp, states = DFG_javascript(child, index_to_code, states)
                DFG += temp
            elif child.type == "variable_declaration":
                flag = True
        dic = {}
        for x in DFG:
            if (x[0], x[1], x[2]) not in dic:
                dic[(x[0], x[1], x[2])] = [x[3], x[4]]
            else:
                dic[(x[0], x[1], x[2])][0] = list(set(dic[(x[0], x[1], x[2])][0] + x[3]))
                dic[(x[0], x[1], x[2])][1] = sorted(list(set(dic[(x[0], x[1], x[2])][1] + x[4])))
        DFG = [(x[0], x[1], x[2], y[0], y[1]) for x, y in sorted(dic.items(), key=lambda t: t[0][1])]
        return sorted(DFG, key=lambda x: x[1]), states
    elif root_node.type in while_statement:
        DFG = []
        for i in range(2):
            for child in root_node.children:
                temp, states = DFG_javascript(child, index_to_code, states)
                DFG += temp
        dic = {}
        for x in DFG:
            if (x[0], x[1], x[2]) not in dic:
                dic[(x[0], x[1], x[2])] = [x[3], x[4]]
            else:
                dic[(x[0], x[1], x[2])][0] = list(set(dic[(x[0], x[1], x[2])][0] + x[3]))
                dic[(x[0], x[1], x[2])][1] = sorted(list(set(dic[(x[0], x[1], x[2])][1] + x[4])))
        DFG = [(x[0], x[1], x[2], y[0], y[1]) for x, y in sorted(dic.items(), key=lambda t: t[0][1])]
        return sorted(DFG, key=lambda x: x[1]), states
    else:
        DFG = []
        for child in root_node.children:
            if child.type in do_first_statement:
                temp, states = DFG_javascript(child, index_to_code, states)
                DFG += temp
        for child in root_node.children:
            if child.type not in do_first_statement:
                temp, states = DFG_javascript(child, index_to_code, states)
                DFG += temp

        return sorted(DFG, key=lambda x: x[1]), states


def DFG_rust(root_node, index_to_code, states):
    assignment = ["assignment_expression", "compound_assignment_expr", "let_expression"]
    def_statement = ["function_item"]
    if_statement = ["if_expression", "if_let_expression", "match_expression", "else"]
    for_statement = ["for_expression"]
    enhanced_for_statement = ["for_each_statement"]
    while_statement = ["while_expression", "while_let_expression", "loop_expression"]
    do_first_statement = []
    states = states.copy()
    if (
        len(root_node.children) == 0 or root_node.type in ["string_literal", "string", "character_literal"]
    ) and root_node.type != "comment":
        idx, code = index_to_code[(root_node.start_point, root_node.end_point)]
        if root_node.type == code:
            return [], states
        elif code in states:
            return [(code, idx, "comesFrom", [code], states[code].copy())], states
        else:
            if root_node.type == "identifier":
                states[code] = [idx]
            return [(code, idx, "comesFrom", [], [])], states
    elif root_node.type in def_statement:
        if len(root_node.children) >= 3:
            name = root_node.children[1]
            value = root_node.children[2]
        else:
            name = root_node.children[1]
            value = None
        DFG = []
        if value is None:
            indexs = tree_to_variable_index(name, index_to_code)
            for index in indexs:
                idx, code = index_to_code[index]
                DFG.append((code, idx, "comesFrom", [], []))
                states[code] = [idx]
            return sorted(DFG, key=lambda x: x[1]), states
        else:
            name_indexs = tree_to_variable_index(name, index_to_code)
            value_indexs = tree_to_variable_index(value, index_to_code)
            temp, states = DFG_rust(value, index_to_code, states)
            DFG += temp
            for index1 in name_indexs:
                idx1, code1 = index_to_code[index1]
                for index2 in value_indexs:
                    idx2, code2 = index_to_code[index2]
                    DFG.append((code1, idx1, "comesFrom", [code2], [idx2]))
                states[code1] = [idx1]
            return sorted(DFG, key=lambda x: x[1]), states
    elif root_node.type in assignment:
        left_nodes = root_node.child_by_field_name("left")
        right_nodes = root_node.child_by_field_name("right")
        DFG = []
        temp, states = DFG_rust(right_nodes, index_to_code, states)
        DFG += temp
        name_indexs = tree_to_variable_index(left_nodes, index_to_code)
        value_indexs = tree_to_variable_index(right_nodes, index_to_code)
        for index1 in name_indexs:
            idx1, code1 = index_to_code[index1]
            for index2 in value_indexs:
                idx2, code2 = index_to_code[index2]
                DFG.append((code1, idx1, "computedFrom", [code2], [idx2]))
            states[code1] = [idx1]
        return sorted(DFG, key=lambda x: x[1]), states
    elif root_node.type in if_statement:
        DFG = []
        current_states = states.copy()
        others_states = []
        flag = False
        tag = False
        if "else" in root_node.type:
            tag = True
        for child in root_node.children:
            if "else" in child.type:
                tag = True
            if child.type not in if_statement and flag is False:
                temp, current_states = DFG_rust(child, index_to_code, current_states)
                DFG += temp
            else:
                flag = True
                temp, new_states = DFG_rust(child, index_to_code, states)
                DFG += temp
                others_states.append(new_states)
        others_states.append(current_states)
        if tag is False:
            others_states.append(states)
        new_states = {}
        for dic in others_states:
            for key in dic:
                if key not in new_states:
                    new_states[key] = dic[key].copy()
                else:
                    new_states[key] += dic[key]
        for key in new_states:
            new_states[key] = sorted(list(set(new_states[key])))
        return sorted(DFG, key=lambda x: x[1]), new_states
    elif root_node.type in for_statement:
        DFG = []
        for child in root_node.children:
            temp, states = DFG_rust(child, index_to_code, states)
            DFG += temp
        flag = False
        for child in root_node.children:
            if flag:
                temp, states = DFG_rust(child, index_to_code, states)
                DFG += temp
            elif child.type == "local_variable_declaration":
                flag = True
        dic = {}
        for x in DFG:
            if (x[0], x[1], x[2]) not in dic:
                dic[(x[0], x[1], x[2])] = [x[3], x[4]]
            else:
                dic[(x[0], x[1], x[2])][0] = list(set(dic[(x[0], x[1], x[2])][0] + x[3]))
                dic[(x[0], x[1], x[2])][1] = sorted(list(set(dic[(x[0], x[1], x[2])][1] + x[4])))
        DFG = [(x[0], x[1], x[2], y[0], y[1]) for x, y in sorted(dic.items(), key=lambda t: t[0][1])]
        return sorted(DFG, key=lambda x: x[1]), states
    elif root_node.type in enhanced_for_statement:
        name = root_node.child_by_field_name("left")
        value = root_node.child_by_field_name("right")
        body = root_node.child_by_field_name("body")
        DFG = []
        for i in range(2):
            temp, states = DFG_rust(value, index_to_code, states)
            DFG += temp
            name_indexs = tree_to_variable_index(name, index_to_code)
            value_indexs = tree_to_variable_index(value, index_to_code)
            for index1 in name_indexs:
                idx1, code1 = index_to_code[index1]
                for index2 in value_indexs:
                    idx2, code2 = index_to_code[index2]
                    DFG.append((code1, idx1, "computedFrom", [code2], [idx2]))
                states[code1] = [idx1]
            temp, states = DFG_rust(body, index_to_code, states)
            DFG += temp
        dic = {}
        for x in DFG:
            if (x[0], x[1], x[2]) not in dic:
                dic[(x[0], x[1], x[2])] = [x[3], x[4]]
            else:
                dic[(x[0], x[1], x[2])][0] = list(set(dic[(x[0], x[1], x[2])][0] + x[3]))
                dic[(x[0], x[1], x[2])][1] = sorted(list(set(dic[(x[0], x[1], x[2])][1] + x[4])))
        DFG = [(x[0], x[1], x[2], y[0], y[1]) for x, y in sorted(dic.items(), key=lambda t: t[0][1])]
        return sorted(DFG, key=lambda x: x[1]), states
    elif root_node.type in while_statement:
        DFG = []
        for i in range(2):
            for child in root_node.children:
                temp, states = DFG_rust(child, index_to_code, states)
                DFG += temp
        dic = {}
        for x in DFG:
            if (x[0], x[1], x[2]) not in dic:
                dic[(x[0], x[1], x[2])] = [x[3], x[4]]
            else:
                dic[(x[0], x[1], x[2])][0] = list(set(dic[(x[0], x[1], x[2])][0] + x[3]))
                dic[(x[0], x[1], x[2])][1] = sorted(list(set(dic[(x[0], x[1], x[2])][1] + x[4])))
        DFG = [(x[0], x[1], x[2], y[0], y[1]) for x, y in sorted(dic.items(), key=lambda t: t[0][1])]
        return sorted(DFG, key=lambda x: x[1]), states
    else:
        DFG = []
        for child in root_node.children:
            if child.type in do_first_statement:
                temp, states = DFG_rust(child, index_to_code, states)
                DFG += temp
        for child in root_node.children:
            if child.type not in do_first_statement:
                temp, states = DFG_rust(child, index_to_code, states)
                DFG += temp

        return sorted(DFG, key=lambda x: x[1]), states


def DFG_tcl(root_node, index_to_code, states):
    """Data Flow Graph extraction for TCL code"""
    assignment = ["set", "variable", "global"]
    if_statement = ["if", "elseif", "else"]
    for_statement = ["for", "foreach", "while"]
    proc_statement = ["proc"]
    command_statement = ["command"]
    states = states.copy()
    
    # Handle leaf nodes (variables, literals)
    if (
        len(root_node.children) == 0 or root_node.type in ["string_literal", "string", "number"]
    ) and root_node.type != "comment":
        try:
            idx, code = index_to_code[(root_node.start_point, root_node.end_point)]
            if root_node.type == code:
                return [], states
            elif code in states:
                return [(code, idx, "comesFrom", [code], states[code].copy())], states
            else:
                if root_node.type == "variable":
                    states[code] = [idx]
                return [(code, idx, "comesFrom", [], [])], states
        except KeyError:
            return [], states
    
    # Handle variable assignments (set commands)
    elif root_node.type in assignment or (hasattr(root_node, 'type') and root_node.type == "command" and 
                                         len(root_node.children) > 0 and 
                                         any(child.type == "word" and 
                                             index_to_code.get((child.start_point, child.end_point), ["", ""])[1] == "set" 
                                             for child in root_node.children)):
        DFG = []
        
        # Find set command and its arguments
        if root_node.type == "command":
            # Extract variable name and value from set command
            children = root_node.children
            if len(children) >= 3:  # set var value
                var_node = children[1]
                value_node = children[2]
                
                # Process value first
                temp, states = DFG_tcl(value_node, index_to_code, states)
                DFG += temp
                
                # Create assignment relationship
                var_indexs = tree_to_variable_index(var_node, index_to_code)
                value_indexs = tree_to_variable_index(value_node, index_to_code)
                
                for var_idx in var_indexs:
                    try:
                        idx1, code1 = index_to_code[var_idx]
                        for val_idx in value_indexs:
                            try:
                                idx2, code2 = index_to_code[val_idx]
                                DFG.append((code1, idx1, "computedFrom", [code2], [idx2]))
                            except KeyError:
                                continue
                        states[code1] = [idx1]
                    except KeyError:
                        continue
        
        return sorted(DFG, key=lambda x: x[1]), states
    
    # Handle procedure definitions
    elif root_node.type in proc_statement or (hasattr(root_node, 'type') and root_node.type == "command" and 
                                             len(root_node.children) > 0 and 
                                             any(child.type == "word" and 
                                                 index_to_code.get((child.start_point, child.end_point), ["", ""])[1] == "proc" 
                                                 for child in root_node.children)):
        DFG = []
        if root_node.type == "command" and len(root_node.children) >= 4:  # proc name args body
            name_node = root_node.children[1]
            args_node = root_node.children[2]
            body_node = root_node.children[3]
            
            # Process procedure body
            temp, states = DFG_tcl(body_node, index_to_code, states)
            DFG += temp
            
            # Add procedure name to states
            name_indexs = tree_to_variable_index(name_node, index_to_code)
            for index in name_indexs:
                try:
                    idx, code = index_to_code[index]
                    DFG.append((code, idx, "comesFrom", [], []))
                    states[code] = [idx]
                except KeyError:
                    continue
        
        return sorted(DFG, key=lambda x: x[1]), states
    
    # Handle control structures
    elif root_node.type in if_statement or (hasattr(root_node, 'type') and root_node.type == "command" and 
                                           len(root_node.children) > 0 and 
                                           any(child.type == "word" and 
                                               index_to_code.get((child.start_point, child.end_point), ["", ""])[1] in ["if", "elseif", "else"] 
                                               for child in root_node.children)):
        DFG = []
        current_states = states.copy()
        others_states = []
        tag = False
        
        # Check if this is an else clause
        if (hasattr(root_node, 'type') and root_node.type == "command" and 
            len(root_node.children) > 0 and 
            any(child.type == "word" and 
                index_to_code.get((child.start_point, child.end_point), ["", ""])[1] in ["elseif", "else"] 
                for child in root_node.children)):
            tag = True
        
        for child in root_node.children:
            if (hasattr(child, 'type') and child.type == "word" and 
                index_to_code.get((child.start_point, child.end_point), ["", ""])[1] in ["elseif", "else"]):
                tag = True
            
            if not (hasattr(child, 'type') and child.type == "word" and 
                   index_to_code.get((child.start_point, child.end_point), ["", ""])[1] in ["elseif", "else"]):
                temp, current_states = DFG_tcl(child, index_to_code, current_states)
                DFG += temp
            else:
                temp, new_states = DFG_tcl(child, index_to_code, states)
                DFG += temp
                others_states.append(new_states)
        
        others_states.append(current_states)
        if not tag:
            others_states.append(states)
        
        # Merge states
        new_states = {}
        for dic in others_states:
            for key in dic:
                if key not in new_states:
                    new_states[key] = dic[key].copy()
                else:
                    new_states[key] += dic[key]
        
        for key in new_states:
            new_states[key] = sorted(list(set(new_states[key])))
        
        return sorted(DFG, key=lambda x: x[1]), new_states
    
    # Handle loops
    elif root_node.type in for_statement or (hasattr(root_node, 'type') and root_node.type == "command" and 
                                            len(root_node.children) > 0 and 
                                            any(child.type == "word" and 
                                                index_to_code.get((child.start_point, child.end_point), ["", ""])[1] in ["for", "foreach", "while"] 
                                                for child in root_node.children)):
        DFG = []
        for i in range(2):  # Process twice for loop analysis
            for child in root_node.children:
                temp, states = DFG_tcl(child, index_to_code, states)
                DFG += temp
        
        # Merge duplicate entries
        dic = {}
        for x in DFG:
            if (x[0], x[1], x[2]) not in dic:
                dic[(x[0], x[1], x[2])] = [x[3], x[4]]
            else:
                dic[(x[0], x[1], x[2])][0] = list(set(dic[(x[0], x[1], x[2])][0] + x[3]))
                dic[(x[0], x[1], x[2])][1] = sorted(list(set(dic[(x[0], x[1], x[2])][1] + x[4])))
        
        DFG = [(x[0], x[1], x[2], y[0], y[1]) for x, y in sorted(dic.items(), key=lambda t: t[0][1])]
        return sorted(DFG, key=lambda x: x[1]), states
    
    # Handle EDA tool commands (special case for TCL)
    elif (hasattr(root_node, 'type') and root_node.type == "command" and 
          len(root_node.children) > 0 and 
          any(child.type == "word" and 
              index_to_code.get((child.start_point, child.end_point), ["", ""])[1] in [
                  # Floorplan commands
                  "setDrawView", "floorPlan", "setPinAssignMode", "editPin", "planDesign", "checkFPlan", "setDesignMode",
                  # Powerplan commands
                  "addTieHiLo", "createPowerDomain", "createPowerSwitch", "createPowerPort", "connectPowerNet", "setPowerDomain",
                  # Placement commands
                  "placeDesign", "place_opt_design", "setPlaceMode", "setOptMode",
                  # CTS commands
                  "createClockTreeSpec", "clockDesign", "createClock", "setClockTreeOptions", "setCTSMode",
                  # Routing commands
                  "routeDesign", "route_opt_design", "setNanoRouteMode", "setRouteMode"
              ] 
              for child in root_node.children)):
        DFG = []
        # Process command arguments
        for child in root_node.children:
            temp, states = DFG_tcl(child, index_to_code, states)
            DFG += temp
        
        # Add command itself as a node
        try:
            cmd_node = next(child for child in root_node.children if child.type == "word")
            idx, code = index_to_code[(cmd_node.start_point, cmd_node.end_point)]
            DFG.append((code, idx, "comesFrom", [], []))
            states[code] = [idx]
        except (StopIteration, KeyError):
            pass
        
        return sorted(DFG, key=lambda x: x[1]), states
    
    # Default case: process all children
    else:
        DFG = []
        for child in root_node.children:
            temp, states = DFG_tcl(child, index_to_code, states)
            DFG += temp
        
        return sorted(DFG, key=lambda x: x[1]), states
