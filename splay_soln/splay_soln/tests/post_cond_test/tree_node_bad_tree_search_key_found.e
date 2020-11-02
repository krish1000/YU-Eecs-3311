note
	description: "A wrong implementation of {TREE_NODE}.tree_search to test `case_of_key_found`."
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	TREE_NODE_BAD_TREE_SEARCH_KEY_FOUND[K -> COMPARABLE, V -> ANY]

inherit
	TREE_NODE [K, V]
		redefine
			tree_search
		end

create
	make_internal, make_external

feature

	tree_search (p_key: K): TREE_NODE[K, V]
		do
			if
				is_external -- If leaf node,
			then
				Result := Current 	-- 1. external node Current is where the node with key p_key supposed to be.
			else -- If internal node,
				if
					attached key as a_key -- internal node implies key exists, so this is always the case.
				then
					if
						p_key ~ a_key -- If the node with the key p_key is found,
					then
						Result := create {TREE_NODE[K, V]}.make_external -- return the node with the key p_key. (Current)
					elseif
						p_key < a_key -- If the node with the key p_key is less than current node,
					then
						if
							attached left as a_left	-- If left exists, (Whether it is external or internal)	
						then
							Result := a_left.tree_search(p_key) -- Result is left subtree's tree search result.
						else -- If left is an external node,
							Result := Current -- This never happens, because this node is internal. This is here for syntax reason.
						end
					else -- p_key > a_key, If the node with the key p_key is bigger than current node,
						if
							attached right as a_right -- If right exists, (Whether it is external or internal)
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
