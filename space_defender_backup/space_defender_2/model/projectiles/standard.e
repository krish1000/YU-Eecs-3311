note
	description: "Summary description for {STANDARD}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	STANDARD

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
			name := "standard projectile"
			create status.make_empty
			create collision_msg.make_empty
			set_id -- sets id
			set_location(model.starfighter.location.row, model.starfighter.location.col + 1)

--			set_attributes -- sets attributes to the chosen wep in setup
			current_damage := attributes.projectile_dmg
			move_distance := 5


			-- put to hash
--			put_in_struct
		end

feature -- Attributes
--	1:Standard (A single projectile is fired in front)
--	Health:10, Energy:10, Regen:0/1, Armour:0, Vision:1, Move:1, Move Cost:1,
--	Projectile Damage:70, Projectile Cost:5 (energy) -- C

feature -- Commands

	-- moves 5 units to the right after spawning.
	move
		local
			s : STRING
		do
			----- Reset collision msg
			collision_msg := ""
			----

			if not outside_board then -- move
				s := location_out
				remove_from_struct -- REMOVE FROM HASHTABLE
				collision (location.row, location.col + 5)
				if alive then
					set_location(location.row, location.col + 5) -- move 5 right RMEOVED 2020-12-06
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
					set_status(move_msg(s, location_out))
--					model.grid[location.row][location.col] := "_"
				end


			else
				-- dont move, already outside of board
			end


		end

--	collision
--		do
--			
--		end

end
