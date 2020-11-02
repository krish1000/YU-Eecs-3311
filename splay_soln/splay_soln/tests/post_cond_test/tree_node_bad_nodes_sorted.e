note
	description: "A wrong implementation of {TREE_NODE}.nodes to test `inorder_means_result_is_sorted_incrementally`."
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	TREE_NODE_BAD_NODES_SORTED

inherit
	TREE_NODE [INTEGER, INTEGER]
		redefine
			nodes
		end

create
	make_internal, make_external

feature {TREE_NODE, ES_TEST} -- Initialization

	nodes: LIST[TREE_NODE[INTEGER, INTEGER]]
			-- Returns a linear ordering of nodes which corresponds to
			-- an in-order traversal of the tree rooted at Current.
		local
			l_temp: TREE_NODE[INTEGER, INTEGER]
		do
			create {ARRAYED_LIST[like Current]} Result.make(count)

			Result.compare_objects

			if
				attached left as a_left and then a_left.is_internal -- If left is internal,
			then
				Result.append(a_left.nodes) -- include the roots of the left subtree.
			end

			if
				is_internal -- Include this node only if this is internal node. (This is needed for when Current is empty)
			then
				Result.force (Current) -- Include the root.
			end


			if
				attached right as a_right and then a_right.is_internal -- If right subtree exists from the root,
			then
				Result.append(a_right.nodes) -- include the roots of the right subtree.
			end

			if
				count >= 3
			then
				l_temp := Result[1]

				Result[1] := Result[Result.count - 1]
				Result[Result.count - 1] := l_temp
			end

		end
end
