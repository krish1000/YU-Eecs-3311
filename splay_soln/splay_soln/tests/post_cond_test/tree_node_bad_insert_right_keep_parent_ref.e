note
	description: "A wrong implementation of {TREE_NODE}.insert_right to test `keep_right_parent_reference`."
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	TREE_NODE_BAD_INSERT_RIGHT_KEEP_PARENT_REF[K -> COMPARABLE, V -> ANY]

inherit
	TREE_NODE [K, V]
		redefine
			insert_right
		end

create
	make_internal, make_external

feature

	insert_right (p_node: like Current)
			-- Inserts into left external node.
		do
			right := p_node
			p_node.parent := Current

			if
				attached right as a_right
			then
				a_right.parent := create {like Current}.make_external
			end
		end

end
