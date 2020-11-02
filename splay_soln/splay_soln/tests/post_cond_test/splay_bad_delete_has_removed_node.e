note
	description: "A wrong implementation of {SPLAY_TREE}.delete to test `has_removed_node`."
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	SPLAY_BAD_DELETE_HAS_REMOVED_NODE[K -> COMPARABLE, V -> ANY]

inherit
	SPLAY_TREE [K, V]
		redefine
			delete
		end

create
	make

feature

	delete (p_key: K)
		local
			l_node, l_replacement: TREE_NODE[K, V]
			l_parent: detachable TREE_NODE[K, V]
		do

			l_node := root -- guranteed to find it

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
		end
end
