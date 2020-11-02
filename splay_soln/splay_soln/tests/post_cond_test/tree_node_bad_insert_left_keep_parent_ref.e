note
	description: "A wrong implementation of {TREE_NODE}.insert_left to test `keep_left_parent_reference`."
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	TREE_NODE_BAD_INSERT_LEFT_KEEP_PARENT_REF[K -> COMPARABLE, V -> ANY]

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
		do
			left := p_node
			p_node.parent := Current

			if
				attached left as a_left
			then
				a_left.parent := create {like Current}.make_external
			end
		end

end
