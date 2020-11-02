note
	description: "A wrong implementation of {TREE_NODE}.value_search to test `case_of_key_found`."
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	TREE_NODE_BAD_VALUE_SEARCH_KEY_FOUND

inherit
	TREE_NODE [INTEGER, STRING]
		redefine
			value_search
		end

create
	make_internal, make_external

feature {TREE_NODE, ES_TEST} -- Initialization

	value_search (p_key: INTEGER): detachable STRING
			-- Search for the value of a node with a key p_key.
		local
			l_node: TREE_NODE[INTEGER, STRING]
		do
			l_node := tree_search(p_key) -- Find a node with p_key.

			if
				l_node.key ~ p_key and
				attached l_node.value as a_l_node_value
			then
				Result := (a_l_node_value.deep_twin)
			else
				-- Otherwise, we do not return anything.
			end
		end


end
