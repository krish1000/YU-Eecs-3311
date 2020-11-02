note
	description: "[
		A wrong implementation of 
		1. {SPLAY_TREE}.has 		to test `root_has_the_node_with_the_p_key`
		2. {SPLAY_TREE}.has_node 	to test	`root_has_the_p_node`
		3. {SPLAY_TREE}.is_empty	to test `empty_if_count_is_zero`.
	]"
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	SPLAY_BAD_HAS_HAS_NODE_IS_EMPTY[K -> COMPARABLE, V -> ANY]

inherit
	SPLAY_TREE [K, V]
		redefine
			has,
			has_node,
			is_empty
		end
create
	make

feature -- Basic

	has (p_key: K): BOOLEAN
			-- Does the current tree have a node storing key equal to `p_key`?
		do
			Result := not root.has (p_key)
		end

	has_node (p_node: TREE_NODE[K,V]): BOOLEAN
			-- Does Current tree have a node same key as p_node?
			-- Both implementation and postconditioin are completed for you. Nothing todo.
		do
			Result := not root.has_node(p_node)
		end

	is_empty: BOOLEAN
			-- Checks if the BST has no nodes.
		do
			Result := not root.is_external
		end
end
