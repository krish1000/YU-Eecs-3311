note
	description: "Summary description for {ENEMY_PROJ}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

--deferred class
	class
	ENEMY_PROJ

inherit
	PROJECTILE

create
	make

feature {NONE} -- Initialization

	make(row : INTEGER; col : INTEGER)
			-- Initialization for `Current'.
		do
			create status.make_empty
			set_id -- sets id
--			set_location(x,y)
--			location := [model.enemies[model.enemies.count].location.row,model.enemies[model.enemies.count].location.col - 1]
			location := [row,col]
			--A enemy projectile(id:-1) spawns at location [A,27].
			model.toggle_enemy_action_msg.append ("%N      A enemy projectile(id:-" +id.out + ") spawns at location " + location_out + "." )

		end

feature -- Attributes
	friendly : BOOLEAN
		do
			Result := False
		end
	move_direction : BOOLEAN
		do
			Result := False -- goes left
		end
	-- not really needed tbh
	attributes : ATTRIBUTE_VALUES
		do
			create Result.make
		end

feature -- Commands
	move
		local
			previous_location : STRING
		do
			if not outside_board then -- move
				previous_location := location_out
				set_location(location.row, location.col - move_distance) -- move X left
				-- A enemy projectile(id:-1) moves: [A,27] -> [A,23]
--				model.toggle_enemy_proj_msg.append ("%N    A enemy projectile(id:-" + id.out + ") moves: " + previous_location + " -> " + location_out )
				if not outside_board then -- still in board
					set_status(move_msg(previous_location, location_out))
				else -- now moved outside of board
					set_status(move_outside_msg(previous_location))
				end
			else
				-- dont move, already outside of board
			end


		end


feature -- Queries
	stats_out : STRING
		do
			create Result.make_empty
			Result.append("[-" + id.out + ",<]->damage:"+ current_damage.out + ", move:"+ move_distance.out +", location:" + location_out) -- C
		end

	move_msg(previous_location : STRING; current_location : STRING) : STRING
		do
			Result := "A enemy projectile(id:-" + id.out + ") moves: " + previous_location + " -> " + current_location
		end

	move_outside_msg(previous_location : STRING) : STRING
		do
			Result := "A enemy projectile(id:-" + id.out + ") moves: " + previous_location + " -> out of board"
		end



end
