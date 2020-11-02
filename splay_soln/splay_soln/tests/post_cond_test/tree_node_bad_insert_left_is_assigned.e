note
	description: "A wrong implementation of {TREE_NODE}.insert_left to test `left_is_assigned`."
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	TREE_NODE_BAD_INSERT_LEFT_IS_ASSIGNED[K -> COMPARABLE, V -> ANY]

inherit
	TREE_NODE [K, V]
		redefine
			insert_left
		end

create
	make_internal, make_external

feature

	insert_left (p_node: like Current)
			-- Inserts into left external node.
		local
			l_node: like Current
		do
			left := p_node
			p_node.parent := Current

			create l_node.make_external
			left := l_node
		end

end
