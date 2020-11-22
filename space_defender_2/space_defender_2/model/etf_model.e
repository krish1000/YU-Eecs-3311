note
	description: "A default business model."
	author: "Jackie Wang"
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_MODEL

inherit
	ANY
		redefine
			out
		end

create {ETF_MODEL_ACCESS}
	make

feature {NONE} -- Initialization
	make
			-- Initialization for `Current'.
		do
			create starfighter.make

			toggle_debug := False
			create toggle_msg.make_empty
			create toggle_star_action_msg.make_empty
		-- Application transition table:
			create app.make(5,5)
			create app_back.make(5,5)
			states_index := 0
--			1 not-started-initial

--			2 wep-setup
--			3 armour-setup
--			4 engine-setup
--			5 power-setup
--			6 summary-setup

--			7 ingame-setup
			transition_next_table
			transition_back_table

			create s.make_empty
			state := 0
			errorState := 0
			welcome := True
			create error_msg.make_empty
			create test_msg.make_empty




			---- GRID ----
			create grid.make_empty
			create letter.make_empty
			letter := <<"A","B","C","D","E","F","G","H","I","J">>
			------
--			create attributes.make
--			create current_attributes.make

--			create in_game_state.make
--			grid := in_game_state.grid
--			letter := in_game_state.letter
--			attributes := in_game_state.attributes

			-----
			in_setup := FALSE
			in_game := FALSE

			-- starfighter
--			create starfighter_location -- empty tuple
--			create starfighter.make
--			starfighter_location := starfighter.starfighter_location
		end

	transition_next_table
		do
			app.put_state (create {WEAPON_SETUP}.make, 1)
			app.choose_initial (1)
			app.put_state (create {ARMOUR_SETUP}.make, 2)
			app.put_state (create {ENGINE_SETUP}.make, 3)
			app.put_state (create {POWER_SETUP}.make, 4)
			app.put_state (create {SUMMARY_SETUP}.make, 5)

			app.put_transition (2, 1, 1)
			app.put_transition (3, 1, 2)
			app.put_transition (4, 1, 3)
			app.put_transition (5, 1, 4)

			app.put_transition (3, 2, 1)
			app.put_transition (4, 2, 2)
			app.put_transition (5, 2, 3)

			app.put_transition (4, 3, 1)
			app.put_transition (5, 3, 2)

			app.put_transition (5, 4, 1)
------------------------------------------------------
--				Transition table out:
--				X___1_2_3_4_5
--				1 | 2 3 4 5 0
--				2 | 3 4 5 0 0
--				3 | 4 5 0 0 0
--				4 | 5 0 0 0 0
--				5 | 0 0 0 0 0
--				0 represents ingame state

			-- with 7 states, might be a bad idea, better to do notstarted - > setupprocess -> ingame
			-- setupprocess seperates into the 5 setup substates.
		end

		transition_back_table
			do
				app_back.set_state_array(app.states) -- Aliasing array, to keep same states
				app_back.choose_initial (1)

				app_back.put_transition (1, 2, 1)

				app_back.put_transition (2, 3, 1)
				app_back.put_transition (1, 3, 2)

				app_back.put_transition (3, 4, 1)
				app_back.put_transition (2, 4, 2)
				app_back.put_transition (1, 4, 3)

				app_back.put_transition (4, 5, 1)
				app_back.put_transition (3, 5, 2)
				app_back.put_transition (2, 5, 3)
				app_back.put_transition (1, 5, 4)
			end

feature -- model attributes
	---- TOGGLE ----
	toggle_debug : BOOLEAN
	toggle_msg : STRING

--	toggle_enemy_msg : STRING
--	toggle_proj_msg : STRING
--	toggle_friend_proj_msg : STRING
--	toggle_enemy_proj_msg : STRING
	toggle_star_action_msg : STRING
--	toggle_enemy_action_msg : STRING
--	toggle_natural_enemy_action_msg : STRING
	-------- STRINGS -----------
	s : STRING
	state : INTEGER
	welcome : BOOLEAN
	error_msg : STRING
	test_msg : STRING
	------------ GRID -------------
	grid : ARRAY[ARRAY [STRING]]
	letter : ARRAY[STRING]
--	in_game_state : IN_GAME
	--------- GAME PARAMS ---------
	l_row : INTEGER
	l_col : INTEGER
	lg_threshold : INTEGER
	lf_threshold : INTEGER
	lc_threshold : INTEGER
	li_threshold : INTEGER
	lp_threshold : INTEGER
	------ GAME STATES ---------
	in_setup : BOOLEAN
	in_game : BOOLEAN
	errorState : INTEGER

--	states_arr : ARRAY[STATES]
--	states_arr_cursor : INTEGER
	states_index : INTEGER
	app : APPLICATION
	app_back : APPLICATION

feature -- Starfighter Attributes
--	attributes : ATTRIBUTE_VALUES
--	current_attributes : ATTRIBUTE_VALUES
--	starfighter_location : TUPLE[row: INTEGER;col: INTEGER] -- X Y location ADDED
	starfighter : STARFIGHTER

feature -- model msg updates
	star_action_msg_update(msg : STRING)
		do
			toggle_star_action_msg := msg
		end

feature -- model state changes
	errorState_increase(msg: STRING) -- increases error state by 1
		do
			error_msg := msg -- sets errormsg
			errorState := errorState + 1
		end

	test_msg_update(msg : STRING)
		do
			test_msg := msg
		end
feature -- model setter commands
	update_states_index(l_index : INTEGER)
		do
			states_index := l_index
		end

--	reset_current_attributes
--		do
--			current_attributes := attributes.deep_twin
--		end

feature -- model queries

	star_out: STRING -- output of starfighter attributes
		local
			ca : ATTRIBUTE_VALUES
			a : ATTRIBUTE_VALUES
			starfighter_location : TUPLE[row: INTEGER;col: INTEGER]
		do
			starfighter_location := starfighter.location

			ca := starfighter.current_attributes
			a := starfighter.attributes
			create Result.make_empty

			Result.append("%N  Starfighter:")
			Result.append("%N    [0,S]->health:" + ca.health.out + "/" + a.health.out + ", energy:" + ca.energy.out + "/" + a.energy.out +
				", Regen:" + a.health_regen.out + "/" + a.energy_regen.out + ", Armour:" + a.armour.out + ", Vision:" + a.vision.out +
				", Move:" + a.move.out + ", Move Cost:" + a.move_cost.out + ", location:[" + letter[starfighter_location.row] + ","+ starfighter_location.col.out  + "]")
		    Result.append("%N      Projectile Pattern:" + app.states[1].get_type + ", Projectile Damage:" + a.projectile_dmg.out +", Projectile Cost:" + a.projectile_cost.out + " (" + a.get_projectile_cost_type + ")")
		    Result.append("%N      Power:" + app.states[4].get_type)
			Result.append("%N      score:0") -- NEED TO IMPLMEMENT SCORE!!!
		end

	toggle_out: STRING
		do
			create Result.make_empty
			Result.append("%N  Enemy:")
			Result.append("%N  Projectile:")
			Result.append("%N  Friendly Projectile Action:")
			Result.append("%N  Enemy Projectile Action:")
			Result.append("%N  Starfighter Action:")
			if toggle_star_action_msg.count > 0 then
				Result.append("%N    " + toggle_star_action_msg)
			end
			Result.append("%N  Enemy Action:")
			Result.append("%N  Natural Enemy Spawn:")
		end

	grid_out(l_grid : ARRAY[ARRAY[STRING]]): STRING -- returns grid in string format
		do
			create Result.make_empty
			-- across loop grid and print
				if l_grid.count > 0 then
					Result.append ("   ") -- empty 4 at start

					-- Put the numbers ontop
					across
						1 |..| l_grid[1].count is l_i
					loop
						if l_i <= 9 then
							Result.append("  ")
							Result.append(l_i.out)
						else
							Result.append(" ")
							Result.append(l_i.out)
						end

					end
					Result.append ("%N")
				end

				across
					1 |..| l_grid.count is row_counter
				loop
					Result.append ("    ")
					Result.append (letter[row_counter]) -- adds A B C ...
					Result.append (" ")

					across
						1 |..| l_grid[row_counter].count is col_counter
					loop
						Result.append(l_grid[row_counter][col_counter])
						Result.append("  ")
					end
					Result.remove_tail (2) -- removes last 2 whitespaces
					Result.append ("%N")
				end
				Result.remove_tail (1) -- remove last %N
		end

feature -- game commands
	fog_of_war : ARRAY[ARRAY[STRING]] -- bad time complexity, but ease for now
		local
			i : INTEGER
			k : INTEGER
			starfighter_location : TUPLE[row: INTEGER;col: INTEGER]
			attributes : ATTRIBUTE_VALUES
		do
			starfighter_location := starfighter.location
			attributes := starfighter.attributes
			Result := grid.deep_twin

			from i := 1 until i > Result.count loop
				from k := 1 until k > Result[i].count loop
					if (starfighter_location.row - i).abs + (starfighter_location.col -k).abs <= attributes.vision  then
						-- do nothing
					else
						Result[i][k] := "?"
					end
					k := k + 1
				end
				i := i + 1
			end

		end

feature -- model operations
	default_update
			-- Perform update to the model state.
		do
			state := state + 1
			errorstate := 0
		end

	play(row: INTEGER_32 ; column: INTEGER_32 ; g_threshold: INTEGER_32 ; f_threshold: INTEGER_32 ; c_threshold: INTEGER_32 ; i_threshold: INTEGER_32 ; p_threshold: INTEGER_32)
		local
--			grid : ARRAY[STRING]
--			starfighter_location : TUPLE[row: INTEGER;col: INTEGER]
		do
--			starfighter_location := starfighter.starfighter_location
			--- Local Variable Pointer ---
--			grid := in_game_state.grid
			--- STATE CHANGES ---
			state := state + 1
			in_setup := TRUE -- in set up mode now; when finished setup, set to false & set in_game to TRUE
			states_index := 1 -- into wep setup
			------- RESET -------
			 grid.make_empty -- DONT USE CREATE, it will make a new object and screw up everything
			-----------------
			across
					1 |..| row is l_r
				loop
					grid.force (create {ARRAY[STRING]}.make_empty, l_r)
					across
						1 |..| column is l_c
					loop
						grid[l_r].force ("_", l_c)
					end
				end
			------------------

			-- // is division, \\ is modulo
				grid[row//2 + row \\ 2][1] := "S"
				starfighter.set_location(row//2 + row \\ 2, 1) -- setting  starfighter location
				--Testing:
--				grid[2][2] := starfighter.starfighter_location.row.out + " " + starfighter.starfighter_location.col.out
		end

	setup_next(setup_state : INTEGER)
		do
--			state := state + 1
			update_states_index(app.transition.item (states_index, setup_state))

			if states_index = 0 then
				in_setup := FALSE -- ingame now
				in_game := TRUE

				-- Reset state val and error state val
				state := 0
				errorstate := 0

				-- get attribute values from setup
--				app.states[1].execute -- wep
--				app.states[2].execute -- engine
--				app.states[3].execute -- armour
				starfighter.attributes.add_attributes (app.states[1].get_attributes)
				starfighter.attributes.add_attributes (app.states[2].get_attributes)
				starfighter.attributes.add_attributes (app.states[3].get_attributes)

				-- set modifiable current starfighter attributes
--				in_game_state.reset_current_attributes
				starfighter.reset_current_attributes
			end
		end

	setup_back(setup_state : INTEGER)
		do
--			state := state + 1
			update_states_index(app_back.transition.item (states_index, setup_state))

			if states_index = 0 then
				in_setup := FALSE -- not started state now
				in_game := FALSE

				-- print notstarteDDD shiez
			end
		end

	setup_select(value : INTEGER)
		do
			app.states[states_index].setup_s (value)
		end

--	call_ingame_command(c : INTEGER) -- put common stuff, i.e regen
--		do
--			-- 1 FIRE
--			-- 2 MOVE
--			-- 3 Pass
--			-- 4 Special
--		end

	toggle_debug_mode
		do
			errorstate := errorstate + 1 -- increase secondary state by 1
			if toggle_debug then
				toggle_debug := False
				toggle_msg := "Not in debug mode."
			else
				toggle_debug := True
				toggle_msg := "In debug mode."
			end
		end

	reset
			-- Reset model state.
		do
			make
		end

feature -- queries
	out : STRING
		local
			status : STRING
			normal_or_debug : STRING
		do
			create Result.make_from_string ("")

			if error_msg.count > 0 then
				status := "error"
			else
				status := "ok"
			end

			if toggle_debug then
				normal_or_debug := "debug"
			else
				normal_or_debug := "normal"
			end

			if not in_game and not in_setup then
				Result.append ("  state:not started, " + normal_or_debug + ", " + status) -- temporary
			elseif in_setup and not in_game then
				Result.append ("  state:" + app.states[states_index].state_name + ", " + normal_or_debug + ", " + status)
			elseif in_game and not in_setup then
				Result.append ("  state:in game(" + state.out + "." + errorstate.out + "), " + normal_or_debug + ", " + status)
				-- Testing stuff:
--				Result.append ("%N  visionval: " + attributes.vision.out)
			end

			if error_msg.count > 0 then
--					Result.append ("  state:")
				Result.append ("%N  " + error_msg)
			else

				if toggle_msg.count > 0 then -- just got toggled.
					Result.append("%N  " + toggle_msg)
				else -- did not get toggled at this current state

					if states_index > 0 then
						Result.append (app.states[states_index].output)
					end

					if in_game then
						Result.append (star_out)

						if toggle_debug then -- if debug mode, print grid without fog of war
							Result.append (toggle_out)
							Result.append ("%N " + grid_out(grid))
						else
							Result.append ("%N " + grid_out(fog_of_war))
						end

					end
				end

			end

			------ TESTING PURPOSES: ----------
			Result.append ("%N  TESTMSG: " + test_msg)
			-----------------------------------

			if welcome then -- welcome msg
--				Result.append ("  state:not started, normal, ok") -- temporary
				Result.append ("%N  Welcome to Space Defender Version 2.")
				welcome := False
			end

			--- RESET ---
			error_msg := ""
			test_msg := ""
			toggle_msg := ""
		end

end


-------- NOTES --------
-- 7 states:
--				app.put_state (create {NOT_STARTED}.make, 1)
--				app.choose_initial (1)
--				app.put_state (create {WEAPON_SETUP}.make, 2)
--				app.put_state (create {ARMOUR_SETUP}.make, 3)
--				app.put_state (create {ENGINE_SETUP}.make, 4)
--				app.put_state (create {POWER_SETUP}.make, 5)
--				app.put_state (create {SUMMARY_SETUP}.make, 6)
--				app.put_state (create {IN_GAME}.make, 7)

--				app.put_transition (2, 1, 1)
--				
--				app.put_transition (3, 2, 1)
--				app.put_transition (4, 2, 2)
--				app.put_transition (5, 2, 3)
--				app.put_transition (5, 2, 4)
--				app.put_transition (5, 2, 5)
--				app.put_transition (5, 2, 6)
--				app.put_transition (5, 2, 7)

