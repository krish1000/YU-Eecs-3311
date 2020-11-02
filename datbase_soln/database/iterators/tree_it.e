--note
--	description: "Iteration cursor for TREE_DB."
--	author: "Jinho Hwang"
--	date: "$Date$"
--	revision: "$Revision$"

--class
--	TREE_IT[K -> COMPARABLE, V -> attached ANY]

--inherit
--	ITERATION_CURSOR[TUPLE[K,V]]

--create
--	make

--feature {NONE} -- Initialization

--	make (p_db: TREE_DB[K, V])
--		do
--			db := p_db

--			create {ARRAYED_LIST[attached K]} keys.make(db.count)
--			create {ARRAYED_LIST[attached V]} values.make(db.count)
--			keys.compare_objects
--			values.compare_objects

--			across
--				db.bst.nodes is i_node
--			loop
--				if
--					attached i_node.key as a_key and then
--					attached i_node.value as a_value
--				then
--					keys.force(a_key)
--					values.force(a_value)
--				end
--			end

--			cursor_at := keys.count
--		end

--feature {NONE} -- Attribute

--	db: TREE_DB[K, V]

--	keys: LIST[K]

--	values: LIST[V]

--	cursor_at: INTEGER

--feature -- Access

--	item: TUPLE[key: K; value: V]
--			-- Item at current cursor position.
--		do
--			Result := [keys[cursor_at], values[cursor_at]]
--		end

--feature -- Status report	

--	after: BOOLEAN
--			-- Are there no more items to iterate over?
--		do
--			Result := cursor_at < 1
--		end

--feature -- Cursor movement

--	forth
--			-- Move to next position.
--		do
--			cursor_at := cursor_at - 1
--		end

--end
note
	description: "Iteration cursor for TREE_DB. (Postorder iteration)"
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	TREE_IT[K -> COMPARABLE, V -> attached ANY]

inherit
	ITERATION_CURSOR[TUPLE[K,V]]

create
	make

feature {NONE} -- Attributes
	tree_bst1: BALANCED_BST[K, V]
	cursor_counter1: INTEGER
	tree_nodes_list1: LIST[TREE_NODE[K, V]]
feature {NONE} -- Initialization

	make (p_db: TREE_DB[K, V])
		do
			-- TODO: Complete this implementation. changed `2020-10-07`
			tree_bst1 := p_db.bst
			tree_nodes_list1 := tree_bst1.nodes
			cursor_counter1 := tree_nodes_list1.count
		end

feature -- Access

	item: TUPLE[key: K; value: V]
			-- Item at current cursor position.
		do
			-- TODO: Complete this implementation.
			create Result -- initalize TUPLE
			if
				attached tree_nodes_list1[cursor_counter1].key as p_key1 and then
				attached tree_nodes_list1[cursor_counter1].value as p_value1
			then
				Result := [p_key1, p_value1]
			end
		end

feature -- Status report	

	after: BOOLEAN
			-- Are there no more items to iterate over?
		do
			-- TODO: Complete this implementation.
			Result := cursor_counter1 < tree_nodes_list1.lower
		end

feature -- Cursor movement

	forth
			-- Move to next position.
		do
			-- TODO: Complete this implementation.
			cursor_counter1 := cursor_counter1 - 1
		end

end
