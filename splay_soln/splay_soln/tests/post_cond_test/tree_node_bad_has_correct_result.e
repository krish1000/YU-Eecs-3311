note
	description: "A wrong implementation of {TREE_NODE}.has and has_node to test `correct_search_result`."
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	TREE_NODE_BAD_HAS_CORRECT_RESULT

inherit
	TREE_NODE [INTEGER, INTEGER]
		redefine
			has,
			has_node
		end
create
	make_internal, make_external

feature

	has (p_key: INTEGER): BOOLEAN
			-- Does this subtree rooted at Current have a node with the key p_key?
		local
			l_node: TREE_NODE[INTEGER, INTEGER]
		do
			l_node := tree_search(p_key)
			if
				attached l_node.key as a_key
			then
				if
					a_key ~ p_key
				then
					Result := False
				else
					Result := True
				end
			end
		end

	has_node (p_node: TREE_NODE[INTEGER,INTEGER]): BOOLEAN
			-- Does this subtree rooted at Current have a node with the key p_node.key?
		do
			-- This implementation is correct and is given to you.
			if
				is_external -- If the Current node is external,
			then
				Result := false
			else -- If the Current node is internal,
				if
					attached p_node.key as p_key -- we know that key exists,
				then
					Result := not has(p_key) -- check if there is a node with p_key.
				end
			end
		end


end
