note
	description: "A wrong implementation of {TREE_NODE}.tree_search to test `case_of_key_not_found`."
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	TREE_NODE_BAD_TREE_SEARCH_KEY_NOT_FOUND

inherit
	TREE_NODE [INTEGER, INTEGER]
		redefine
			tree_search
		end

create
	make_internal, make_external

feature

	tree_search (p_key: INTEGER): TREE_NODE[INTEGER, INTEGER]
		do
			if
				is_external -- If leaf node,
			then
				Result := create {TREE_NODE_BAD_TREE_SEARCH_KEY_NOT_FOUND}.make_internal (-999, 999) 	-- 1. external node Current is where the node with key p_key supposed to be.
			else -- If internal node,
				if
					attached key as a_key -- internal node implies key exists, so this is always the case.
				then
					if
						p_key ~ a_key -- If the node with the key p_key is found,
					then
						Result := Current -- return the node with the key p_key. (Current)
					elseif
						p_key < a_key -- If the node with the key p_key is less than current node,
					then
						if
							attached {TREE_NODE_BAD_TREE_SEARCH_KEY_NOT_FOUND} left as a_left	-- If left exists, (Whether it is external or internal)	
						then
							Result := a_left.tree_search(p_key) -- Result is left subtree's tree search result.
						else -- If left is an external node,
							Result := Current -- This never happens, because this node is internal. This is here for syntax reason.
						end
					else -- p_key > a_key, If the node with the key p_key is bigger than current node,
						if
							attached {TREE_NODE_BAD_TREE_SEARCH_KEY_NOT_FOUND} right as a_right -- If right exists, (Whether it is external or internal)
						then
							Result := a_right.tree_search(p_key) -- Result is right subtree's tree search result.
						else -- If right is an external node,
							Result := Current -- This never happens, because this node is internal. This is here for syntax reason.
						end
					end
				else -- If key does not exist, but this route never happens, as this is internal node case.
					Result := Current
				end
			end
		end


end
