note
	description: "A wrong implementation of {TREE_NODE}.make_internal to test `right_is_external`."
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	TREE_NODE_BAD_INTERNAL_RIGHT

inherit
	TREE_NODE [INTEGER, INTEGER]
		redefine
			make_internal
		end

create
	make_internal, make_external, make_debug_external, make_debug_internal

feature {TREE_NODE, ES_TEST} -- Initialization

	make_internal (p_key: INTEGER; p_value: INTEGER)
			-- Makes an internal node.
		do
			key := p_key
			value := p_value

			create left.make_debug_external

			if
				attached left as a_left
			then
				a_left.parent := Current
			end

			create right.make_debug_internal (3, 3)
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
