note
	description: "A wrong implementation of {SPLAY_TREE}.insert to test `other_nodes_unchanged`."
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	SPLAY_BAD_INSERT_OTHER_NODES_UNCHANGED

inherit
	SPLAY_TREE [INTEGER, INTEGER]
		redefine
			insert
		end

create
	make

feature

	insert (p_key: INTEGER; p_value: INTEGER)
		local
			l_from_node: TREE_NODE[INTEGER, INTEGER]
		do
			l_from_node := root.tree_search (p_key)
			l_from_node.set_to_internal (p_key, p_value)
			splay(l_from_node)

			if
				count >= 5
			then
				if
					attached {INTEGER} root.min_node.key as a_key
				then
					root.min_node.key := -1
				end

			end
		end

end
