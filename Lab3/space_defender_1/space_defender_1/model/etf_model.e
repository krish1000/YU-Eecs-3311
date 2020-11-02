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
			create error_msg.make_empty -- renamed s to error_msg
			create cmd_msg.make_empty
			create projectile_msg.make_empty

			create history.make_empty -- holds command calls by user
--			cursor := history.start
			gcursor := 0 -- points at 0 index inital
			projcursor := 0
			------- Grid related  -------
			create grid.make_empty
			create letter.make_empty
			letter := <<"A","B","C","D","E","F","G","H","I","J">>
			row_c := 0
			col_c := 0
			create projectiles.make_empty
			------------------------------
			-- Initalize states:
			state := 0
			errorState := 0
			-------- Game related --------
			ingame := false -- initally set to false (game hasn't started)
			welcome1 := true
			create starfighter_location -- empty tuple
		end

feature -- model attributes
	-- String messages
	error_msg : STRING -- String for outputting error msgs, renamed s to error_msg
	cmd_msg : STRING -- String for outputting command messages
	projectile_msg : STRING

	-- State values
	state : INTEGER -- Integer stores State
	errorState : INTEGER -- Integer stores state error counter

	-- Commands related
	history : ARRAY[COMMANDS_MODEL]
	gcursor: INTEGER
	projcursor: INTEGER
	-- Grid related
	grid : ARRAY[ARRAY[STRING]] -- Array of Array of Strings stores the game grid ADDED
	letter : ARRAY[STRING] -- Array of string stores letters A to J ADDED
	row_c : INTEGER
	col_c : INTEGER
	projectiles : ARRAY[PROJECTILE]

	-- Game mechanics' related
	welcome1 : BOOLEAN -- for the welcome message
	ingame : BOOLEAN -- boolean if player is ingame true, else false ADDED
	starfighter_location : TUPLE[cx: INTEGER;cy: INTEGER] -- X Y location ADDED
	player_m : INTEGER -- max num of tiles player can move
	project_m : INTEGER -- num of tiles projectile moves


feature -- model state operations
	state_increase
		do
			state := state + 1 -- if state increases by 1
			errorState := 0    -- then error resets to 0
		end

	state_decrease
		do
			state := state - 1
			errorState := 0
		end

	errorState_increase(msg: STRING) -- increases error state by 1
		do
			error_msg := msg -- sets errormsg
			errorState := errorState + 1
		end

feature -- I ADDED queries
	state_status: STRING -- returns "error" if error in state, else "ok"
		do
			Result := "ok"
			if errorState > 0 then
				Result := "error"
			end
		end

	grid_out: STRING -- returns grid in string format
		do
			create Result.make_empty
			-- across loop grid and print
				if grid.count > 0 then
					Result.append ("  ") -- empty 2 at start
					-- Put the numbers ontop
					across
						1 |..| grid[1].count is l_i
					loop
						Result.append("  ")
						Result.append(l_i.out)
					end
					Result.append ("%N")
				end

				across
					1 |..| grid.count is row_counter
				loop
					Result.append ("  ")
					Result.append (letter[row_counter]) -- adds A B C ...
					Result.append (" ")

					across
						1 |..| grid[row_counter].count is col_counter
					loop
						Result.append(grid[row_counter][col_counter])
						Result.append("  ")
					end
					Result.remove_tail (2) -- removes last 2 whitespaces
					Result.append ("%N")
				end
				Result.remove_tail (1) -- remove last %N
		end

	location_out: STRING
		do
			Result := "[" + letter[starfighter_location.cx] + "," + starfighter_location.cy.out + "]"
		end

	-- prints the string format for coordinates, for ease of use
	coordinate_out(row: INTEGER; col: INTEGER): STRING
		do
			Result := "[" + letter[row] + "," + col.out + "]"
		end
feature -- model operations
	default_update
			-- Perform update to the model state.
		do
--			state := state + 1
			state_increase
		end

	cmd_msg_update(msg: STRING)
		do
			cmd_msg := msg
		end

	error_msg_update(msg: STRING)
		do
			error_msg := msg
		end

	projectile_msg_append(msg: STRING)
		do
			projectile_msg := projectile_msg + msg
		end

	grid_update(row: INTEGER; column: INTEGER; new_string: STRING)
		do
			grid[row][column] := new_string
		end

	cursor_add(value: INTEGER)
		do
			gcursor := gcursor + value
		end

	projcursor_add(value: INTEGER)
		do
			projcursor := projcursor + value
		end

	starfighter_location_update(row: INTEGER; column: INTEGER)
		do
			starfighter_location := [row, column]
		end

	play(row: INTEGER_32 ; column: INTEGER_32 ; player_mov: INTEGER_32 ; project_mov: INTEGER_32)
		do
				state_increase -- increase state, reset errorState

				--- RESETS ---
				create history.make_empty -- reset history array
				gcursor := 0 -- reset cursor to 0
				cmd_msg.make_empty
				------------------------------------------------------
				-- Creates grid, stores '_' in all cells by rowxcolumn
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

				-- Location of Starfighter is in the middle of rows (ceiling)
				-- Tried using DOUBLE_MATH but not sure how syntax works
				-- doing old fashion way:
				-- // is division, \\ is modulo
				grid[row//2 + row \\ 2][1] := "S"
				starfighter_location := [row//2 + row \\ 2, 1] -- setting location

				row_c := row
				col_c := column
				player_m := player_mov
				project_m := project_mov
				-- Player is ingame
				ingame := True
		end

	abort -- stops game
		do
			if ingame then
				ingame := False -- not in game anymore
--				cmd_msg := "Game has been exited."
				error_msg := "Game has been exited."
				-- using error_msg, temp for now so grid wont appear
			else
				errorState_increase("Not in game.")
			end
		end

	projectile_move(state_add: INTEGER)
		do
			--- RESET PROJECTILE MSG****
--			projectile_msg := ""

			-- across projectiles array
			across
				projectiles is projectile1
			loop
				-- increase states alive counter for all projectiles
				projectile1.states_alive_add(state_add)
				if
--					(projectile1.location.cy*projectile1.states_alive_counter*project_m > 0 AND (projectile1.location.cy + projectile1.states_alive_counter*project_m) <= grid[1].count)
					(projectile1.location.cy + projectile1.states_alive_counter*project_m) <= grid[1].count
					-- grid[1] will always work due to error check done before in ETF_FIRE and precond in ETF_PLAY
				then
					-- remove previous location
					grid[projectile1.location.cx][projectile1.location.cy + (projectile1.states_alive_counter - 1)*project_m] := "_"

					-- print projectile msgs, append to projectile_msg
					-- "A projectile moves: from_original_location to new_location"
					projectile_msg_append("%NA projectile moves: " + coordinate_out(projectile1.location.cx, projectile1.location.cy + (projectile1.states_alive_counter - 1)*project_m)
										+ " -> " + coordinate_out(projectile1.location.cx, projectile1.location.cy + projectile1.states_alive_counter*project_m))

					-- check if Starfighter location is between old projectile location and new location
					-- if it is then it will collide, as projectiles move first
					if
						starfighter_location.cx  = projectile1.location.cx
						AND
						(starfighter_location.cy >= projectile1.location.cy + (projectile1.states_alive_counter - 1)*project_m
							AND
						starfighter_location.cy <= projectile1.location.cy + (projectile1.states_alive_counter)*project_m)
					then -- COLLISION OCCURS
						grid[starfighter_location.cx][starfighter_location.cy] := "X" --marks collision
						ingame := FALSE -- game over
						cmd_msg_update ("%NA projectile moves and collides with the Starfighter: " +
										coordinate_out(projectile1.location.cx, projectile1.location.cy + (projectile1.states_alive_counter - 1)*project_m) + " -> " + location_out)
										-- MAKE SURE TO PRINT THIS AS THE LAST THING AFTER ALL PROJECTILE MOVEMENTS*********, INCLUDING PROJECTILE MOVING
					else
						-- print the projectile
						grid[projectile1.location.cx][projectile1.location.cy + projectile1.states_alive_counter*project_m] := "*"
					end


				elseif
					(projectile1.location.cy + (projectile1.states_alive_counter-1)*project_m) <= grid[1].count -- outside of grid now
				then
					-- remove previous location
					grid[projectile1.location.cx][projectile1.location.cy + (projectile1.states_alive_counter - 1)*project_m] := "_"
					projectile_msg_append("%NA projectile moves: " + coordinate_out(projectile1.location.cx, projectile1.location.cy + (projectile1.states_alive_counter - 1)*project_m)
										+ " -> out of board")
				end
			end
		end

	call_command(command: COMMANDS_MODEL)
		do
			state_increase -- increases state b/c valid command

			-- delete all history from the tail and beyond based on where the cursor is *****************
			history.remove_tail(history.upper - gcursor)
			----------- move projectiles:
			projectile_move(1) -- add 1 state and update grid
			----
--			across
--				projectiles is projectile1
--			loop
--				-- increase states alive counter for all projectiles
--				projectile1.states_alive_add(1)
--				if
--					(projectile1.location.cy*projectile1.states_alive_counter*project_m > 0 AND projectile1.location.cy*projectile1.states_alive_counter*project_m <= grid[1].count)
--					-- grid[1] will always work due to error check done before in ETF_FIRE and precond in ETF_PLAY
--				then
--					-- remove previous location
--					grid[projectile1.location.cx][projectile1.location.cy*(projectile1.states_alive_counter - 1)*project_m] := "_"
--					-- print the projectile
--					grid[projectile1.location.cx][projectile1.location.cy*projectile1.states_alive_counter*project_m] := "*"
--				end
--			end
			-----------
			if ingame then
				cursor_add (1) -- move by +1 in history
				history.force (command, gcursor)
	--			history.force (command) -- was using linkedlist before
				command.execute -- executes the given command
			end


		end


	fire -- fire's projectile
		do
			if ingame then
				state_increase
				-- save state num, along with row
				--
			else
				errorstate_increase ("Not in game.")
			end
		end

	reset
			-- Reset model state.
		do
			make
		end

feature -- queries
	out : STRING
		do
			create Result.make_empty
			if welcome1 then -- Inital when .exe starts
				Result.append("Welcome to Space Defender Version 1.")
				welcome1 := false
			else
				Result.append ("state:")
				Result.append (state.out)
				Result.append (".") -- temporary .
				Result.append (errorState.out) -- error state counter
				Result.append (", ")
				Result.append (state_status)

				if error_msg.count > 0 then -- there's an error
					Result.append ("%N")
					Result.append(error_msg)
				else
					-- Append command message
					Result.append (projectile_msg)
					Result.append (cmd_msg)
					Result.append ("%N")
					-- Append Grid
					Result.append (grid_out)
				end
			end

			-- clear error_msg
			error_msg := ""
			-- clear projectile_msg
			projectile_msg := ""
--			cmd_msg := ""
		end
--		do
--			create Result.make_from_string ("  ")
--			Result.append ("System State: default model state ")
--			Result.append ("(")
--			Result.append (i.out)
--			Result.append (")")
--		end

--	grid_update(row: INTEGER; column: INTEGER; new_string: STRING)
--		do
--			grid[row][column] := new_string
--		end

end




