note
	description: "A wrong implementation of {SPLAY_TREE}.search to test `case_of_key_not_found`."
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	SPLAY_BAD_SEARCH_CASE_OF_KEY_NOT_FOUND

inherit
	SPLAY_TREE [INTEGER, STRING]
		redefine
			search
		end

create
	make

feature

	search (p_key: INTEGER): detachable STRING
			-- Returns the value mapped from the key `p_key`.
		local
			l_node, l_splay_node: TREE_NODE[INTEGER, STRING]
		do
			l_node := root.tree_search(p_key) -- Do an attempt to search the node with key p_key.
			l_splay_node := l_node
			if
				l_splay_node.is_external
			then
				l_splay_node := l_splay_node.parent
			end

			if
				attached l_splay_node as a_l_splay_node
			then
				splay(a_l_splay_node)
			end

			if
				l_node.is_external
			then
				Result := "INVALID_VALUE"
			else -- l_node.is_internal
				Result := l_node.value 	-- result must be the search result from root.
			end
		end

end
