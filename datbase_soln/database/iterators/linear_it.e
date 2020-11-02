--note
--	description: "Itertion cursor for `LINEAR_DB`."
--	author: "Jinho Hwang"
--	date: "$Date$"
--	revision: "$Revision$"

--class
--	LINEAR_IT[K -> {COMPARABLE, HASHABLE}, V -> attached ANY]

--inherit
--	ITERATION_CURSOR[TUPLE[K,V]]

--create
--	make

--feature {NONE} -- Initialization

--	make (p_db: LINEAR_DB[K, V])
--		do
--			keys := p_db.keys
--			keys.compare_objects

--			create values.make_empty
--			values.compare_objects

--			across
--				keys is i_key
--			loop
--				if
--					attached p_db.values[i_key] as a_value
--				then
--					values.force (a_value, values.count + 1)
--				end
--			end

--			cursor_at := keys.count
--		ensure
--			keys.count = values.count
--		end

--feature {NONE} -- Attribute

--	keys: ARRAY[K]

--	values: ARRAY[V]

--	cursor_at: INTEGER

--feature -- Access

--	item: TUPLE[key: K; value: V]
--			-- Item at current cursor position.
--		do
--			Result:= [keys[cursor_at], values[cursor_at]]
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
	description: "Itertion cursor for `LINEAR_DB`. (Inverse order iteration)"
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	LINEAR_IT[K -> {COMPARABLE, HASHABLE}, V -> attached ANY]

inherit
	ITERATION_CURSOR[TUPLE[K,V]]

create
	make

feature {NONE} -- Attributes
	cursor_counter1: INTEGER
	linear_db1: LINEAR_DB[K,V]
	array1: ARRAY[K]
--	hashtable1: HASH_TABLE[K,V]


feature {NONE} -- Initialization

	make (p_db: LINEAR_DB[K, V])
		do
			-- TODO: Complete this implementation. CHanged 2020-10-07
			array1 := p_db.keys
			cursor_counter1 := array1.upper -- initalize counter
			linear_db1 := p_db -- make global var of p_db
		end

feature -- Access

	item: TUPLE[key: K; value: V]
			-- Item at current cursor position.
		do
			-- TODO: Complete this implementation.
			create Result -- initailize TUPLE

			if attached linear_db1.search(array1[cursor_counter1]) as attached_value then
				Result := [array1[cursor_counter1], attached_value]
			end

		end

feature -- Status report	

	after: BOOLEAN
			-- Are there no more items to iterate over?
		do
			-- TODO: Complete this implementation.
			Result := 	cursor_counter1 < array1.lower
		end

feature -- Cursor movement

	forth
			-- Move to next position.
		do
			-- TODO: Complete this implementation.
			cursor_counter1 := cursor_counter1 - 1
		end

end
