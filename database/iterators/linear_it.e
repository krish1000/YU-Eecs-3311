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
