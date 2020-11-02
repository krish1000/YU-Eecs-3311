note
	description: "[
	A wrong implementation of {TREE_NODE}.min_node and max_node to test 
	`left_external_means_current_is_minimum` and `right_external_means_current_is_maximum.
	]"
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	TREE_NODE_BAD_MIN_MAX_NODE

inherit
	TREE_NODE [INTEGER, INTEGER]
		redefine
			min_node,
			max_node
		end

create
	make_internal, make_external

feature

	min_node: TREE_NODE[INTEGER, INTEGER]
			-- Returns the node with minimum key from the subtree rooted at Current.
		do
			if
				attached left as a_left and then 	-- If left child exists,
				a_left.is_internal					-- and if the left node is internal node,
			then
				Result := a_left.min_node -- min node from left subtree is the minimum node.
			else -- If left is external,
				Result := create {TREE_NODE[INTEGER, INTEGER]}.make_internal (999, 999)
			end
		end

	max_node: TREE_NODE[INTEGER, INTEGER]
			-- Returns the node with maximum key from the subtree rooted at Current.
		do
			if
				attached right as a_right and then 	-- If right child exists,
				a_right.is_internal					-- and if the left node is internal node,
			then
				Result := a_right.max_node -- max node from right subtree is the maximum node.
			else -- If right is external,
				Result := create {TREE_NODE[INTEGER, INTEGER]}.make_internal (-999, -999)
			end
		end


end
