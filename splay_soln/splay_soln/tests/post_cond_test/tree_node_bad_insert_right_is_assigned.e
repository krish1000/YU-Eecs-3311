note
	description: "A wrong implementation of {TREE_NODE}.insert_left to test `right_is_assigned`."
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	TREE_NODE_BAD_INSERT_RIGHT_IS_ASSIGNED[K -> COMPARABLE, V -> ANY]

inherit
	TREE_NODE [K, V]
		redefine
			insert_right
		end

create
	make_internal, make_external

feature

	insert_right (p_node: like Current)
			-- Inserts into right external node.
		local
			l_node: like Current
		do
			right := p_node
			p_node.parent := Current

			create l_node.make_external
			right := l_node
		end

end
