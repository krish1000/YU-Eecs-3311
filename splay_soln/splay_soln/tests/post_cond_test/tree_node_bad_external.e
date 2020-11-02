note
	description: "A wrong implementation of {TREE_NODE}.make_external to test `no_parent`."
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	TREE_NODE_BAD_EXTERNAL

inherit
	TREE_NODE [INTEGER, INTEGER]
		redefine
			make_external
		end

create
	make_internal, make_external, make_debug_external, make_debug_internal

feature {TREE_NODE, ES_TEST} -- Initialization

	make_external
			-- Makes an external (empty) node.
		local
			l_node: like Current
		do
			create l_node.make_debug_internal(1, 1)
			parent := l_node
		end

	make_debug_external
		do

		end

	make_debug_internal (p_key: INTEGER; p_value: INTEGER)
		do
			key := p_key
			value := p_value

			create left.make_debug_external

			if
				attached left as a_left
			then
				a_left.parent := Current
			end

			create right.make_debug_external

			if
				attached right as a_right
			then
				a_right.parent := Current
			end
		end

end
