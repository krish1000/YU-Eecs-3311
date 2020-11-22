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
			l_row : INTEGER
			l_col : INTEGER
			move_distance : INTEGER
    		starfighter_location : TUPLE[row: INTEGER;col: INTEGER]
		do
			starfighter_location := model.starfighter.location
			l_col := column
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

--    		
--    		1. "Command can only be used in game."
--			(Command was not used in in game state.)
--			2. "Cannot move outside of board."
--			(Location specified to move the Starfighter to is outside the board.)
--			3. "Already there.
--			(The Starfighter is already at that location.)
--			4. "Out of movement range."
--			(The sum of the vertical and horizontal displacement, in the unit of spaces, from the Starfighter's initial location to the targeted location, exceeds the Starfighter's Move attribute value.)
--			5. "Not enough resources to move."
--			(Factoring in regeneration for that turn, the Starfighter did not have enough resources to move to the specified location.)

			if model.in_game then
						if
							l_row <= model.grid.count and then
							l_col <= model.grid[1].count
						then
							if
								not (l_row = starfighter_location.row and then
								l_col = starfighter_location.col)
							then
								move_distance := ((l_row - starfighter_location.row).abs
									+ (l_col - starfighter_location.col).abs)
								if
									move_distance
									<= model.starfighter.current_attributes.move
								then

									if
										-- cost is energy
										move_distance*model.starfighter.current_attributes.move_cost
										<= model.starfighter.current_attributes.energy
									then
										model.starfighter.move (l_row, l_col) -- move to new location
									else
										-- print error msg
										model.errorstate_increase ("Not enough resources to move.") -- C
									end

								else
									-- print error msg
									model.errorstate_increase ("Out of movement range.") -- C
									-- (The sum of the vertical and horizontal displacement,
									-- in the unit of spaces, from the Starfighter's initial location to the targeted location,
									-- exceeds the Starfighter's Move attribute value.)
								end
							else
								-- print error msg
								model.errorstate_increase ("Already there.") -- C
							end
						else
							-- print error msg
							model.errorstate_increase ("Cannot move outside of board.") -- C
						end
					else
						-- print error msg
						model.errorstate_increase ("Command can only be used in game.") -- C
					end

			-- perform some update on the model state
			model.default_update
			etf_cmd_container.on_change.notify ([Current])
    	end

end
