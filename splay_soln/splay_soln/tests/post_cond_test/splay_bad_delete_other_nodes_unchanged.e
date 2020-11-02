note
	description: "A wrong implementation of {SPLAY_TREE}.delete to test `other_nodes_unchanged`."
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	SPLAY_BAD_DELETE_OTHER_NODES_UNCHANGED

inherit
	SPLAY_TREE [INTEGER, INTEGER]
		redefine
			delete
		end

create
	make

feature

	delete (p_key: INTEGER)
		local
			l_node, l_replacement: TREE_NODE[INTEGER, INTEGER]
			l_parent: detachable TREE_NODE[INTEGER, INTEGER]
		do

			l_node := root.tree_search (p_key) -- guranteed to find it

			splay(l_node)

			if
				attached l_node.left as a_l_node_left and then
				attached l_node.right as a_l_node_right
			then
				if
					a_l_node_left.is_internal
				then
					root := a_l_node_left
					root.parent := Void
					splay (root.max_node)

					relink (root, a_l_node_right, false)
				else
					root := a_l_node_right
					root.parent := Void
				end
			end

			root.max_node.key := root.key * 10

			root.min_node.key := root.key * -10
		end
end
