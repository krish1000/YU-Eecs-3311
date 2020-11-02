note
	description: "A wrong implementation of {SPLAY_TREE}.insert to test `size_incremented`."
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	SPLAY_BAD_INSERT_SIZE_INCREMENTED[K -> COMPARABLE, V -> ANY]

inherit
	SPLAY_TREE [K, V]
		redefine
			insert
		end

create
	make

feature

	insert (p_key: K; p_value: V)
		local
			l_from_node: TREE_NODE[K, V]
		do
			l_from_node := root.tree_search (p_key)
		end

end
