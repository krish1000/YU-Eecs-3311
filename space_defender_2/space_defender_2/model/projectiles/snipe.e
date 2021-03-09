note
	description: "Summary description for {SNIPE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	SNIPE

inherit
	FRIENDLY_PROJ

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
		do
			set_variables
			alive := true
			previously_alive := False
			symbol := "*"
			name := "snipe projectile"
			create status.make_empty
			create collision_msg.make_empty
			create location
			set_id -- sets id
--			set_location(model.starfighter.location.row, model.starfighter.location.col + 1)

--			set_attributes -- sets attributes to the chosen wep in setup
			current_damage := attributes.projectile_dmg
			move_distance := 8
		end

feature -- Commands	
	move
		local
			s : STRING
		do
			----- Reset collision msg
			collision_msg := ""
			----

			if not outside_board then -- move
				s := location_out
				remove_from_struct -- REMOVE FROM HASHTABLE -- might not need 2020-12-08*******

				-- Collision
				if model.locations.has_key ([location.row, location.col + 8]) then
					if attached {ENTITY} model.locations.found_item as l_e then
						modify_collision (l_e)
						l_e.set_alive(false)
						model.grid[location.row][location.col + 8] := "_" -- hardcoded
					end
				end


				if alive then
--					remove_from_struct -- REMOVE FROM HASHTABLE -- BETTER SPOT TO PUT???*******************
					set_location(location.row, location.col + 8) -- move 5 right RMEOVED 2020-12-06
					if not outside_board then -- still in board
--						set_status(move_msg(s, location_out) + collision_msg)
						set_status(move_msg(s, location_out))
						put_in_struct -- PUT BACK INTO HASHTABLE
					else -- now moved outside of board
--						set_status(move_outside_msg(s) + collision_msg)
						set_status(move_outside_msg(s))
						-- check if its still alive/collision and then print location to board
					end
				else
					-- projectile just got destoryed
					set_status(move_msg(s, location_out)) ------ CHANGEDDDDDDDDDDDDDDDDDDDDDDDd
				end

			else
				-- dont move, already outside of board
			end


		end



end
