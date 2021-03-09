note
	description: "Summary description for {SPREAD}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	SPREAD

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
			name := "spread projectile"
			create status.make_empty
			create collision_msg.make_empty
			create location
			set_id -- sets id
--			set_location(model.starfighter.location.row, model.starfighter.location.col + 1)

--			set_attributes -- sets attributes to the chosen wep in setup
			current_damage := attributes.projectile_dmg
			move_distance := 1
			move_diagonal := 1
		end

feature -- Attributes

	move_diagonal : INTEGER

feature -- Commands

	move
		do
			if move_diagonal = 1 then

			elseif move_diagonal = 2 then
				-- depression
			elseif move_diagonal = 3 then

			end
		end

	move_helper(row : INTEGER; col : INTEGER) -- none
		do

		end
end
