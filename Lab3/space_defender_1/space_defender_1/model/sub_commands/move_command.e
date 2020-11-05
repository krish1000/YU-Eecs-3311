note
	description: "Summary description for {MOVE_COMMAND}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	MOVE_COMMAND

inherit
	COMMANDS_MODEL

create
	make

feature {NONE} -- Initialization

	make(row: INTEGER; column: INTEGER)
			-- Initialization for `Current'.
		local
			mda : ETF_MODEL_ACCESS -- get access to model
		do
			model := mda.m -- set attribute model to the same original instance model taken from mda.m (using once, expanded)
			l_row := row
			l_col := column
			create original_starfighter_location
			create previous_msg.make_empty
		end

feature -- attributes
	model: ETF_MODEL
	l_row: INTEGER
	l_col: INTEGER
	original_starfighter_location: TUPLE[cx: INTEGER; cy: INTEGER]
	previous_msg : STRING
feature -- commands

	execute
		require else
			new_location_within_grid:
				l_row <= model.grid.upper AND l_col <= model.grid[1].upper

		local
			l_index1 : INTEGER -- cursor
			collided : BOOLEAN
		do
			original_starfighter_location := model.starfighter_location -- sets original so we can use for undo later
			previous_msg := model.cmd_msg -- stores previous command msg
			-----------------------
			-- assuming no projectiles****:

			collided := False -- didnt collide
			model.grid[model.starfighter_location.cx][model.starfighter_location.cy] := "_" -- replace S with "_", no longer there

			-- Check for collision
			if model.starfighter_location.cx > l_row then -- Starfighter goes downwards

--				across
--					l_row |..| model.starfighter_location.cx is l_index
				from
					l_index1 := model.starfighter_location.cx
				until
					l_index1 < l_row or collided
				loop
					if
						model.grid[l_index1][model.starfighter_location.cy].is_equal("*")
					then
						-- COLLISION occured, not ingame anymore
						model.ingame_update(False)
						collided := TRUE
						model.grid[l_index1][model.starfighter_location.cy] := "X"
						model.cmd_msg_update ("The Starfighter moves and collides with a projectile: " +
										model.location_out + " -> " + model.coordinate_out (l_index1, model.starfighter_location.cy))
					end
					l_index1 := l_index1 - 1 -- goes down
				end
			elseif model.starfighter_location.cx < l_row then -- starfighter goes upwards

				from
					l_index1 := model.starfighter_location.cx
				until
					l_index1 > l_row or collided
				loop
					if
						model.grid[l_index1][model.starfighter_location.cy].is_equal("*")
					then
						-- COLLISION occured, not ingame anymore
						model.ingame_update(False)
						collided := TRUE
						model.grid[l_index1][model.starfighter_location.cy] := "X"
						model.cmd_msg_update ("The Starfighter moves and collides with a projectile: " +
										model.location_out + " -> " + model.coordinate_out (l_index1, model.starfighter_location.cy))
					end
					l_index1 := l_index1 + 1 -- goes up
				end
			else -- same row, no need to move up or down
			end

			-- Check if starfighter moves forward or backward
			if model.starfighter_location.cy > l_col and not collided then -- moves backward (left)

				from
					l_index1 := model.starfighter_location.cy
				until
					l_index1 < l_col or collided
				loop
					if
						model.grid[l_row][l_index1].is_equal("*")
					then
						-- COLLISION occured, not ingame anymore
						model.ingame_update(False)
						collided := TRUE
						model.grid[l_row][l_index1] := "X"
						model.cmd_msg_update ("The Starfighter moves and collides with a projectile: " +
										model.location_out + " -> " + model.coordinate_out (l_row, l_index1))
					end
					l_index1 := l_index1 - 1 -- moves left
				end
			elseif model.starfighter_location.cy < l_col and not collided then -- moves forward (right)
				from
					l_index1 := model.starfighter_location.cy
				until
					l_index1 > l_col or collided
				loop
					if
						model.grid[l_row][l_index1].is_equal("*")
					then
						-- COLLISION occured, not ingame anymore
--						model.ingame.set_item (False) -- doesnt work
						model.ingame_update(False)
						collided := TRUE
						model.grid[l_row][l_index1] := "X"
						model.cmd_msg_update ("The Starfighter moves and collides with a projectile: " +
										model.location_out + " -> " + model.coordinate_out (l_row, l_index1))
					end
					l_index1 := l_index1 + 1 -- moves right
				end
			else -- starship already moved vertically to location, no other changes needed		
			end

			if not collided then
				model.grid[l_row][l_col] := "S" -- place S anchor
				model.cmd_msg_update("The Starfighter moves: "
						+ model.location_out + " -> [" + model.letter[l_row] + "," + l_col.out + "]")
				model.starfighter_location_update (l_row, l_col)
			else
				model.gameover_update(True)
			end

		end

	undo
		do
			model.grid[l_row][l_col] := "_" -- replace S with "_", no longer there
			model.starfighter_location_update (original_starfighter_location.cx, original_starfighter_location.cy) -- move back to original location
			model.grid[original_starfighter_location.cx][original_starfighter_location.cy] := "S" -- place S anchor
			model.cmd_msg_update(previous_msg)
		end


end
