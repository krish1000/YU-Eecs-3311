note
	description: "Basic test cases."
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	BASIC_TESTS

inherit
	TEST_ENVIRONMENT

create
	make

feature {NONE} -- Initialization

	make
			-- initialize tests
		do
			env_empty

			add_make_external_tests
			add_make_internal_tests
			add_set_to_internal_tests
			add_insert_left_tests
			add_insert_right_tests
			add_count_tests
			add_min_node_tests
			add_max_node_tests
			add_tree_search_tests
			add_value_search_tests
			add_has_tests
			add_has_node_tests
			add_nodes_tests
			add_is_same_tree_tests

			add_splay_has_tests
			add_splay_has_node_tests
			add_splay_count_tests
			add_splay_is_empty_tests
			add_splay_relink_tests
		end

feature -- make_external

	add_make_external_tests
		do
			add_violation_case_with_tag ("no_parent", agent tn_make_external1)
		end

	tn_make_external1
		local
			l_tree_node: TREE_NODE_BAD_EXTERNAL
		do
			comment ("tn_make_external1: POSTCONDITION, no_parent")

			create l_tree_node.make_external
		end

feature -- make_internal

	add_make_internal_tests
		do
			add_violation_case_with_tag ("left_is_external", agent tn_make_internal1)
			add_violation_case_with_tag ("right_is_external", agent tn_make_internal2)
		end

	tn_make_internal2
		local
			l_tree_node: TREE_NODE_BAD_INTERNAL_RIGHT
		do
			comment ("tn_make_internal2: POSTCONDITION, right_is_external")

			create l_tree_node.make_internal(2, 2)
		end

	tn_make_internal1
		local
			l_tree_node: TREE_NODE_BAD_INTERNAL_LEFT
		do
			comment ("tn_make_internal1: POSTCONDITION, left_is_external")

			create l_tree_node.make_internal(2, 2)
		end

feature -- set_to_internal

	add_set_to_internal_tests
		do

		end

feature -- insert_left

	add_insert_left_tests
		do
			add_violation_case_with_tag ("left_is_assigned", agent tn_insert_left2)
			add_violation_case_with_tag ("keep_left_parent_reference", agent tn_insert_left3)
		end

	tn_insert_left3
		local
			l_tree_node1, l_tree_node2: TREE_NODE_BAD_INSERT_LEFT_KEEP_PARENT_REF[INTEGER, INTEGER]
		do
			comment ("tn_insert_left3: POSTCONDITION, keep_left_parent_reference")

			create l_tree_node1.make_internal(1, 1)
			create l_tree_node2.make_internal(2, 2)

			l_tree_node2.insert_left(l_tree_node1)
		end

	tn_insert_left2
		local
			l_tree_node1, l_tree_node2: TREE_NODE_BAD_INSERT_LEFT_IS_ASSIGNED[INTEGER, INTEGER]
		do
			comment ("tn_insert_left2: POSTCONDITION, left_is_assigned")

			create l_tree_node1.make_internal(1, 1)
			create l_tree_node2.make_internal(2, 2)

			l_tree_node2.insert_left(l_tree_node1)
		end

feature -- insert_right

	add_insert_right_tests
		do
			add_violation_case_with_tag ("right_is_assigned", agent tn_insert_right2)
			add_violation_case_with_tag ("keep_right_parent_reference", agent tn_insert_right3)

		end

	tn_insert_right3
		local
			l_tree_node1, l_tree_node2: TREE_NODE_BAD_INSERT_RIGHT_KEEP_PARENT_REF[INTEGER, INTEGER]
		do
			comment ("tn_insert_right3: POSTCONDITION, keep_right_parent_reference")

			create l_tree_node1.make_internal(1, 1)
			create l_tree_node2.make_internal(2, 2)

			l_tree_node1.insert_right(l_tree_node2)
		end

	tn_insert_right2
		local
			l_tree_node1, l_tree_node2: TREE_NODE_BAD_INSERT_RIGHT_IS_ASSIGNED[INTEGER, INTEGER]
		do
			comment ("tn_insert_right2: POSTCONDITION, right_is_assigned")

			create l_tree_node1.make_internal(1, 1)
			create l_tree_node2.make_internal(2, 2)

			l_tree_node1.insert_right(l_tree_node2)
		end

feature -- count

	add_count_tests
		do
			add_violation_case_with_tag ("correct_result", agent tn_count1)
		end

	tn_count1
		local
			l_tree_node1, l_tree_node2: TREE_NODE_BAD_COUNT_CORRECT_RESULT[INTEGER, INTEGER]
			l_count: INTEGER
		do
			comment ("tn_count1: POSTCONDITION, correct_result")

			create l_tree_node1.make_internal(1, 1)
			create l_tree_node2.make_internal(2, 2)

			l_tree_node2.insert_left(l_tree_node1)

			l_count := l_tree_node2.count
		end

feature -- min_node

	add_min_node_tests
		do
			add_violation_case_with_tag ("left_external_means_current_is_minimum", agent tn_min_node1)
		end

	tn_min_node1
		local
			l_tree_node1, l_tree_node2, l_tree_node3: TREE_NODE_BAD_MIN_MAX_NODE
			l_temp_node: TREE_NODE[INTEGER, INTEGER]
		do
			comment ("tn_min_node1: POSTCONDITION, left_external_means_current_is_minimum")

			create l_tree_node1.make_internal(1, 1)
			create l_tree_node2.make_internal(2, 2)
			create l_tree_node3.make_internal(3, 3)

			l_tree_node2.insert_left(l_tree_node1)
			l_tree_node2.insert_right(l_tree_node3)

			l_temp_node := l_tree_node2.min_node
		end

feature -- max_node

	add_max_node_tests
		do
			add_violation_case_with_tag ("right_external_means_current_is_maximum", agent tn_max_node1)
		end

	tn_max_node1
		local
			l_tree_node1, l_tree_node2, l_tree_node3: TREE_NODE_BAD_MIN_MAX_NODE
			l_temp_node: TREE_NODE[INTEGER, INTEGER]
		do
			comment ("tn_max_node1: POSTCONDITION, right_external_means_current_is_maximum")

			create l_tree_node1.make_internal(1, 1)
			create l_tree_node2.make_internal(2, 2)
			create l_tree_node3.make_internal(3, 3)

			l_tree_node2.insert_left(l_tree_node1)
			l_tree_node2.insert_right(l_tree_node3)

			l_temp_node := l_tree_node2.max_node
		end

feature -- tree_search

	add_tree_search_tests
		do
			add_violation_case_with_tag ("case_of_key_found", agent tn_tree_search1)
			add_violation_case_with_tag ("case_of_key_not_found", agent tn_tree_search2)
		end

	tn_tree_search2
		local
			l_tree_node1, l_tree_node2, l_tree_node3: TREE_NODE_BAD_TREE_SEARCH_KEY_NOT_FOUND
			l_temp_node: TREE_NODE[INTEGER, INTEGER]
		do
			comment ("tn_tree_search2: POSTCONDITION, case_of_key_not_found")

			create l_tree_node1.make_internal(1, 1)
			create l_tree_node2.make_internal(2, 2)
			create l_tree_node3.make_internal(3, 3)

			l_tree_node2.insert_left(l_tree_node1)
			l_tree_node2.insert_right(l_tree_node3)

			l_temp_node := l_tree_node2.tree_search (100)
		end

	tn_tree_search1
		local
			l_tree_node1, l_tree_node2, l_tree_node3: TREE_NODE_BAD_TREE_SEARCH_KEY_FOUND[INTEGER, INTEGER]
			l_temp_node: TREE_NODE[INTEGER, INTEGER]
		do
			comment ("tn_tree_search1: POSTCONDITION, case_of_key_found")

			create l_tree_node1.make_internal(1, 1)
			create l_tree_node2.make_internal(2, 2)
			create l_tree_node3.make_internal(3, 3)

			l_tree_node2.insert_left(l_tree_node1)
			l_tree_node2.insert_right(l_tree_node3)

			l_temp_node := l_tree_node2.tree_search (1)

		end

feature -- value_search

	add_value_search_tests
		do
			add_violation_case_with_tag ("case_of_key_found", agent tn_value_search1)
		end

	tn_value_search1
		local
			l_tree_node1, l_tree_node2, l_tree_node3: TREE_NODE_BAD_VALUE_SEARCH_KEY_FOUND
			l_temp: STRING
		do
			comment ("tn_value_search1: POSTCONDITION, case_of_key_found")

			create l_tree_node1.make_internal(1, "J")
			create l_tree_node2.make_internal(2, "K")
			create l_tree_node3.make_internal(3, "P")

			l_tree_node2.insert_left(l_tree_node1)
			l_tree_node2.insert_right(l_tree_node3)

			l_temp := l_tree_node2.value_search (3)
		end

feature -- has

	add_has_tests
		do
			add_violation_case_with_tag ("correct_search_result", agent tn_has1)
		end

	tn_has1
		local
			l_tree_node1, l_tree_node2, l_tree_node3: TREE_NODE_BAD_HAS_CORRECT_RESULT
			l_temp: BOOLEAN
		do
			comment ("tn_has1: POSTCONDITION, correct_search_result")

			create l_tree_node1.make_internal(1, 1)
			create l_tree_node2.make_internal(2, 1)
			create l_tree_node3.make_internal(3, 1)

			l_tree_node2.insert_left(l_tree_node1)
			l_tree_node2.insert_right(l_tree_node3)

			l_temp := l_tree_node2.has(1)
		end

feature -- has_node

	add_has_node_tests
		do
			add_violation_case_with_tag ("correct_search_result", agent tn_has_node1)
		end

	tn_has_node1
		local
			l_tree_node1, l_tree_node2, l_tree_node3: TREE_NODE_BAD_HAS_CORRECT_RESULT
			l_temp: BOOLEAN
		do
			comment ("tn_has_node1: POSTCONDITION, correct_search_result")

			create l_tree_node1.make_internal(1, 1)
			create l_tree_node2.make_internal(2, 1)
			create l_tree_node3.make_internal(3, 1)

			l_tree_node2.insert_left(l_tree_node1)
			l_tree_node2.insert_right(l_tree_node3)

			l_temp := l_tree_node2.has_node(l_tree_node3)
		end

feature -- nodes

	add_nodes_tests
		do
			add_violation_case_with_tag ("inorder_means_result_is_sorted_incrementally", agent tn_nodes1)
			add_violation_case_with_tag ("no_tree_structure_changed", agent tn_nodes2)
		end

	tn_nodes2
		local
				l_tree_node1, l_tree_node2, l_tree_node3: TREE_NODE_BAD_NODES_NO_STRUCTURE_CHANGE
				l_temp: LIST[TREE_NODE[INTEGER, INTEGER]]
			do
				comment ("tn_nodes2: POSTCONDITION, no_tree_structure_changed")

				create l_tree_node1.make_internal(1, 1)
				create l_tree_node2.make_internal(3, 1)
				create l_tree_node3.make_internal(5, 1)

				l_tree_node2.insert_left(l_tree_node1)
				l_tree_node2.insert_right(l_tree_node3)

				l_temp := l_tree_node2.nodes
			end

	tn_nodes1
		local
			l_tree_node1, l_tree_node2, l_tree_node3: TREE_NODE_BAD_NODES_SORTED
			l_temp: LIST[TREE_NODE[INTEGER, INTEGER]]
		do
			comment ("tn_nodes1: POSTCONDITION, inorder_means_result_is_sorted_incrementally")

			create l_tree_node1.make_internal(1, 1)
			create l_tree_node2.make_internal(2, 1)
			create l_tree_node3.make_internal(3, 1)

			l_tree_node2.insert_left(l_tree_node1)
			l_tree_node2.insert_right(l_tree_node3)

			l_temp := l_tree_node2.nodes
		end


feature -- is_same_tree

	add_is_same_tree_tests
		do

		end

feature -- splay_has

	add_splay_has_tests
		do
			add_violation_case_with_tag ("root_has_the_node_with_the_p_key", agent splay_has5)
		end

	splay_has5
		local
			l_wrong_splay_tree: SPLAY_BAD_HAS_HAS_NODE_IS_EMPTY[STRING, STRING]
			l_bool: BOOLEAN
		do
			comment ("splay_has5: POSTCONDITION, root_has_the_node_with_the_p_key")

			create l_wrong_splay_tree.make
			root_insert_str_str(l_wrong_splay_tree)
			l_bool := l_wrong_splay_tree.has ("a")
		end

feature -- splay_has_node

	add_splay_has_node_tests
		do
			add_violation_case_with_tag ("root_has_the_p_node", agent splay_has_node5)
		end

	splay_has_node5
		local
			l_wrong_splay_tree: SPLAY_BAD_HAS_HAS_NODE_IS_EMPTY[STRING, STRING]
			l_bool: BOOLEAN
			l_node: TREE_NODE[STRING, STRING]
		do
			comment ("splay_has_node5: POSTCONDITION, root_has_the_p_node")

			create l_wrong_splay_tree.make
			root_insert_str_str(l_wrong_splay_tree)

			create l_node.make_internal ("a", "a")

			l_bool := l_wrong_splay_tree.has_node (l_node)
		end

feature -- splay_count

	add_splay_count_tests
		do
			add_violation_case_with_tag ("root_count", agent splay_count4)

		end

	splay_count4
		local
			l_wrong_splay_tree: SPLAY_BAD_COUNT[STRING, STRING]
			l_bool: BOOLEAN
		do
			comment ("splay_count4: POSTCONDITION, root_count")

			create l_wrong_splay_tree.make
			root_insert_str_str(l_wrong_splay_tree)

			l_bool := l_wrong_splay_tree.count = 9
		end

feature -- splay_is_empty

	add_splay_is_empty_tests
		do
			add_violation_case_with_tag ("empty_if_count_is_zero", agent splay_is_empty2)
		end

	splay_is_empty2
		local
			l_wrong_splay_tree: SPLAY_BAD_HAS_HAS_NODE_IS_EMPTY[STRING, STRING]
			l_bool: BOOLEAN
		do
			comment ("splay_is_empty2: POSTCONDITION, empty_if_count_is_zero")

			create l_wrong_splay_tree.make
			root_insert_str_str(l_wrong_splay_tree)

			l_bool := l_wrong_splay_tree.is_empty
		end

feature -- splay_relink

	add_splay_relink_tests
		do
			add_violation_case_with_tag ("childs_parent_is_linked", agent splay_relink1)
			add_violation_case_with_tag ("case_of_relinking_the_left_child", agent splay_relink2)
			add_violation_case_with_tag ("case_of_relinking_the_right_child", agent splay_relink3)
		end

	splay_relink3
		local
			l_wrong_splay_tree: SPLAY_BAD_RELINK_CASE_OF_RELINK_THE_RIGHT_CHILD[STRING, STRING]
			l_node: TREE_NODE[STRING, STRING]
		do
			comment ("splay_relink3: POSTCONDITION, case_of_relinking_the_right_child")

			create l_wrong_splay_tree.make
			l_wrong_splay_tree.root.set_to_internal ("c", "c")

			create l_node.make_internal ("d", "d")
			l_wrong_splay_tree.relink (l_wrong_splay_tree.root, l_node, False)
		end

	splay_relink2
		local
			l_wrong_splay_tree: SPLAY_BAD_RELINK_CASE_OF_RELINK_THE_LEFT_CHILD[STRING, STRING]
			l_node: TREE_NODE[STRING, STRING]
		do
			comment ("splay_relink2: POSTCONDITION, case_of_relinking_the_left_child")

			create l_wrong_splay_tree.make
			l_wrong_splay_tree.root.set_to_internal ("c", "c")

			create l_node.make_internal ("b", "b")
			l_wrong_splay_tree.relink (l_wrong_splay_tree.root, l_node, True)
		end

	splay_relink1
		local
			l_wrong_splay_tree: SPLAY_BAD_RELINK_CHILDS_PARENT_IS_LINKED[STRING, STRING]
			l_node: TREE_NODE[STRING, STRING]
		do
			comment ("splay_relink1: POSTCONDITION, childs_parent_is_linked")

			create l_wrong_splay_tree.make
			l_wrong_splay_tree.root.set_to_internal ("c", "c")

			create l_node.make_internal ("b", "b")
			l_wrong_splay_tree.relink (l_wrong_splay_tree.root, l_node, True)
		end

end
