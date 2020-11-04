note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_MOVE
inherit
	ETF_MOVE_INTERFACE
create
	make
feature -- command
	move(row: INTEGER_32 ; column: INTEGER_32)
		require else
			move_precond(row, column)
		local
			l_row: INTEGER
			move_counter: INTEGER
    	do
    		l_row := 0 -- just to initalize; precond will take care if letters are between A to J
    		-- mapping letters to actual coordinates:
    		-- on pdf:
    		if row = A then
    			l_row := 1
    		elseif row = B then
    			l_row := 2
    		elseif row = C then
    			l_row := 3
    		elseif row = D then
    			l_row := 4
    		elseif row = E then
    			l_row := 5
    		elseif row = F then
    			l_row := 6
    		elseif row = G then
    			l_row := 7
    		elseif row = H then
    			l_row := 8
    		elseif row = I then
    			l_row := 9
    		elseif row = J then
    			l_row := 10
    		end
------------------------------------------------------------------------------------------

			if model.ingame then
				if -- checks if row and column are within grid boundaries
					l_row <= model.row_c and column <= model.col_c -- grid[1] garuntee if ingame row_c = row_capacity
					-- dont need to check for less  than 1, precond takes care of it
				then
					move_counter := (model.starfighter_location.cx - l_row).abs + (model.starfighter_location.cy - column).abs
					-- absolute value of tile movement
					if -- checks if tile movement is less than the specificed player max movement
						move_counter <= model.player_m
					then
						if -- checks if starfighter location isnt the same coords as row,column
							not (model.starfighter_location.cx = l_row and model.starfighter_location.cy = column)
						then
							-- ORIGINAL
--							(model.history).extend (create {MOVE_COMMAND}.make(l_row, column))
--							model.cursor_update(1)
--							((model.history)[model.gcursor]).execute -- executes command
							model.call_command(create {MOVE_COMMAND}.make(l_row, column))
						else
							model.errorstate_increase("The Starfighter is already at that location.")
						end
					else
						model.errorstate_increase("The location to move to is out of the Starfighter's movement range.")
					end
				else
					model.errorstate_increase("The location to move to is outside of the board.")
				end
			else
				model.errorstate_increase("Not in game.")
			end
    		-------------------------------------------
			-- perform some update on the model state
--			model.default_update
			etf_cmd_container.on_change.notify ([Current])
    	end

end

-- Starter code for command:
--feature -- command
--	move(row: INTEGER_32 ; column: INTEGER_32)
--		require else
--			move_precond(row, column)
--    	do
--			-- perform some update on the model state
--			model.default_update
--			etf_cmd_container.on_change.notify ([Current])
--    	end

--end
