note
	description: "A wrong implementation of {SPLAY_TREE}.insert to test `has_inserted_node`."
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	SPLAY_BAD_INSERT_HAS_INSERTED_NODE

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
			l_key: INTEGER
		do
			l_key := p_key
			if
				l_key = 999
			then
				l_from_node := root.tree_search (l_key)
				l_from_node.set_to_internal (l_key, p_value)
				splay(l_from_node)
			else
				l_key := l_key - 1
				l_from_node := root.tree_search (l_key)
				l_from_node.set_to_internal (l_key, p_value)
				splay(l_from_node)
			end
		end

end
