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
			create status.make_empty
			set_id -- sets id
			set_location(model.starfighter.location.row, model.starfighter.location.col + 1)

			current_damage := attributes.projectile_dmg
			move_distance := 5
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
			if not outside_board then -- move
				s := location_out
				set_location(location.row, location.col + 5) -- move 5 right
				if not outside_board then -- still in board
					set_status(move_msg(s, location_out))
				else -- now moved outside of board
					set_status(move_outside_msg(s))
				end
			else
				-- dont move, already outside of board
			end


		end


end
