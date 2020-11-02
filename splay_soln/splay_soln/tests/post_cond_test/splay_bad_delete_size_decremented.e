note
	description: "A wrong implementation of {SPLAY_TREE}.delete to test `size_decremented`."
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	SPLAY_BAD_DELETE_SIZE_DECREMENTED[K -> COMPARABLE, V -> ANY]

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

		end
end
