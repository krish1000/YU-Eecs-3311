class
 	 ETF_TYPE_CONSTRAINTS

feature -- type queries

	is_max_row(etf_v: INTEGER_32): BOOLEAN
		require
			comment("etf_v: MAX_ROW = 3 .. 10")
		do
			 Result :=
				(3 <= etf_v) and then (etf_v <= 10)
		ensure
			 Result =
				(3 <= etf_v) and then (etf_v <= 10)
		end

	is_max_column(etf_v: INTEGER_32): BOOLEAN
		require
			comment("etf_v: MAX_COLUMN = 5 .. 30")
		do
			 Result :=
				(5 <= etf_v) and then (etf_v <= 30)
		ensure
			 Result =
				(5 <= etf_v) and then (etf_v <= 30)
		end

	is_row(etf_v: INTEGER_32): BOOLEAN
		require
			comment("etf_v: ROW = {A, D, C, J, F, E, B, G, I, H}")
		do
			 Result :=
				(( etf_v ~ A ) or else ( etf_v ~ D ) or else ( etf_v ~ C ) or else ( etf_v ~ J ) or else ( etf_v ~ F ) or else ( etf_v ~ E ) or else ( etf_v ~ B ) or else ( etf_v ~ G ) or else ( etf_v ~ I ) or else ( etf_v ~ H ))
		ensure
			 Result =
				(( etf_v ~ A ) or else ( etf_v ~ D ) or else ( etf_v ~ C ) or else ( etf_v ~ J ) or else ( etf_v ~ F ) or else ( etf_v ~ E ) or else ( etf_v ~ B ) or else ( etf_v ~ G ) or else ( etf_v ~ I ) or else ( etf_v ~ H ))
		end

	is_column(etf_v: INTEGER_32): BOOLEAN
		require
			comment("etf_v: COLUMN = 1 .. 30")
		do
			 Result :=
				(1 <= etf_v) and then (etf_v <= 30)
		ensure
			 Result =
				(1 <= etf_v) and then (etf_v <= 30)
		end

		is_player_mov(etf_v: INTEGER_32): BOOLEAN
		require
			comment("etf_v: PLAYER_MOV = 1 .. 40")
		do
			 Result :=
				(1 <= etf_v) and then (etf_v <= 40)
		ensure
			 Result =
				(1 <= etf_v) and then (etf_v <= 40)
		end

	is_project_mov(etf_v: INTEGER_32): BOOLEAN
		require
			comment("etf_v: PROJECT_MOV = 1 .. 5")
		do
			 Result :=
				(1 <= etf_v) and then (etf_v <= 5)
		ensure
			 Result =
				(1 <= etf_v) and then (etf_v <= 5)
		end

feature -- constants for enumerated items
	A: INTEGER =1
	D: INTEGER =2
	C: INTEGER =3
	J: INTEGER =4
	F: INTEGER =5
	E: INTEGER =6
	B: INTEGER =7
	G: INTEGER =8
	I: INTEGER =9
	H: INTEGER =10

feature -- list of enumeratd constants
	enum_items : HASH_TABLE[INTEGER, STRING]
		do
			create Result.make (10)
			Result.extend(1, "A")
			Result.extend(2, "D")
			Result.extend(3, "C")
			Result.extend(4, "J")
			Result.extend(5, "F")
			Result.extend(6, "E")
			Result.extend(7, "B")
			Result.extend(8, "G")
			Result.extend(9, "I")
			Result.extend(10, "H")
		end

	enum_items_inverse : HASH_TABLE[STRING, INTEGER_32]
		do
			create Result.make (10)
			Result.extend("A", 1)
			Result.extend("D", 2)
			Result.extend("C", 3)
			Result.extend("J", 4)
			Result.extend("F", 5)
			Result.extend("E", 6)
			Result.extend("B", 7)
			Result.extend("G", 8)
			Result.extend("I", 9)
			Result.extend("H", 10)
		end
feature -- query on declarations of event parameters
	evt_param_types_table : HASH_TABLE[HASH_TABLE[ETF_PARAM_TYPE, STRING], STRING]
		local
			play_param_types: HASH_TABLE[ETF_PARAM_TYPE, STRING]
			abort_param_types: HASH_TABLE[ETF_PARAM_TYPE, STRING]
			move_param_types: HASH_TABLE[ETF_PARAM_TYPE, STRING]
			pass_param_types: HASH_TABLE[ETF_PARAM_TYPE, STRING]
			fire_param_types: HASH_TABLE[ETF_PARAM_TYPE, STRING]
			undo_param_types: HASH_TABLE[ETF_PARAM_TYPE, STRING]
			redo_param_types: HASH_TABLE[ETF_PARAM_TYPE, STRING]
		do
			create Result.make (10)
			Result.compare_objects
			create play_param_types.make (10)
			play_param_types.compare_objects
			play_param_types.extend (create {ETF_NAMED_PARAM_TYPE}.make("MAX_ROW", create {ETF_INTERVAL_PARAM}.make(3, 10)), "row")
			play_param_types.extend (create {ETF_NAMED_PARAM_TYPE}.make("MAX_COLUMN", create {ETF_INTERVAL_PARAM}.make(5, 30)), "column")
			play_param_types.extend (create {ETF_NAMED_PARAM_TYPE}.make("PLAYER_MOV", create {ETF_INTERVAL_PARAM}.make(1, 40)), "player_mov")
			play_param_types.extend (create {ETF_NAMED_PARAM_TYPE}.make("PROJECT_MOV", create {ETF_INTERVAL_PARAM}.make(1, 5)), "project_mov")
			Result.extend (play_param_types, "play")
			create abort_param_types.make (10)
			abort_param_types.compare_objects
			Result.extend (abort_param_types, "abort")
			create move_param_types.make (10)
			move_param_types.compare_objects
			move_param_types.extend (create {ETF_NAMED_PARAM_TYPE}.make("ROW", create {ETF_ENUM_PARAM}.make(<<"A", "D", "C", "J", "F", "E", "B", "G", "I", "H">>)), "row")
			move_param_types.extend (create {ETF_NAMED_PARAM_TYPE}.make("COLUMN", create {ETF_INTERVAL_PARAM}.make(1, 30)), "column")
			Result.extend (move_param_types, "move")
			create pass_param_types.make (10)
			pass_param_types.compare_objects
			Result.extend (pass_param_types, "pass")
			create fire_param_types.make (10)
			fire_param_types.compare_objects
			Result.extend (fire_param_types, "fire")
			create undo_param_types.make (10)
			undo_param_types.compare_objects
			Result.extend (undo_param_types, "undo")
			create redo_param_types.make (10)
			redo_param_types.compare_objects
			Result.extend (redo_param_types, "redo")
		end
feature -- query on declarations of event parameters
	evt_param_types_list : HASH_TABLE[LINKED_LIST[ETF_PARAM_TYPE], STRING]
		local
			play_param_types: LINKED_LIST[ETF_PARAM_TYPE]
			abort_param_types: LINKED_LIST[ETF_PARAM_TYPE]
			move_param_types: LINKED_LIST[ETF_PARAM_TYPE]
			pass_param_types: LINKED_LIST[ETF_PARAM_TYPE]
			fire_param_types: LINKED_LIST[ETF_PARAM_TYPE]
			undo_param_types: LINKED_LIST[ETF_PARAM_TYPE]
			redo_param_types: LINKED_LIST[ETF_PARAM_TYPE]
		do
			create Result.make (10)
			Result.compare_objects
			create play_param_types.make
			play_param_types.compare_objects
			play_param_types.extend (create {ETF_NAMED_PARAM_TYPE}.make("MAX_ROW", create {ETF_INTERVAL_PARAM}.make(3, 10)))
			play_param_types.extend (create {ETF_NAMED_PARAM_TYPE}.make("MAX_COLUMN", create {ETF_INTERVAL_PARAM}.make(5, 30)))
			play_param_types.extend (create {ETF_NAMED_PARAM_TYPE}.make("PLAYER_MOV", create {ETF_INTERVAL_PARAM}.make(1, 40)))
			play_param_types.extend (create {ETF_NAMED_PARAM_TYPE}.make("PROJECT_MOV", create {ETF_INTERVAL_PARAM}.make(1, 5)))
			Result.extend (play_param_types, "play")
			create abort_param_types.make
			abort_param_types.compare_objects
			Result.extend (abort_param_types, "abort")
			create move_param_types.make
			move_param_types.compare_objects
			move_param_types.extend (create {ETF_NAMED_PARAM_TYPE}.make("ROW", create {ETF_ENUM_PARAM}.make(<<"A", "D", "C", "J", "F", "E", "B", "G", "I", "H">>)))
			move_param_types.extend (create {ETF_NAMED_PARAM_TYPE}.make("COLUMN", create {ETF_INTERVAL_PARAM}.make(1, 30)))
			Result.extend (move_param_types, "move")
			create pass_param_types.make
			pass_param_types.compare_objects
			Result.extend (pass_param_types, "pass")
			create fire_param_types.make
			fire_param_types.compare_objects
			Result.extend (fire_param_types, "fire")
			create undo_param_types.make
			undo_param_types.compare_objects
			Result.extend (undo_param_types, "undo")
			create redo_param_types.make
			redo_param_types.compare_objects
			Result.extend (redo_param_types, "redo")
		end
feature -- comments for contracts
	comment(etf_s: STRING): BOOLEAN
		do
			Result := TRUE
		end
end
