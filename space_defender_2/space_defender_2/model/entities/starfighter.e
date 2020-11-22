note
	description: "Summary description for {STARFIGHTER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	STARFIGHTER

inherit
	ENTITY

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.

		do
--			create starfighter_location
			create location
			create attributes.make
			create current_attributes.make
		end

feature -- Attributes
--	mda : ETF_MODEL_ACCESS -- dont need this anymore, parent class declares model as global
--	starfighter_location : TUPLE[row: INTEGER;col: INTEGER] -- X Y location ADDED -- using location instead in parent class
--	starfighter_attributes : ATTRIBUTE_VALUES -- declaring attributes and currrent attributes in parent class 

feature -- Commands


	move(row : INTEGER; column : INTEGER)
		local
--			model : ETF_MODEL
			move_distance : INTEGER
		do
--			model := mda.m

			regen_both -- REGENS HEALTH AND ENERGY, might need to do some proper shiez inorder not to violate single choice principle

			move_distance := ((row - location.row).abs
							+ (column - location.col).abs)

			-- -- -- -- -- --
			model.test_msg_update(move_distance.out) -- TESTTTT
			------------****************** REMOVE THIS AFTER*************************

			-- do you lose energy first when u move or regen first?
			-- for now after moveing energy gets depleted, havent done regen yet
			current_attributes.set_energy (current_attributes.energy - move_distance*current_attributes.move_cost)

			-- Testing
--			model.grid[1][1] := starfighter_location.row.out + " " + starfighter_location.col.out

			-- set starfighter msg
--			model.star_action_msg_update("The Starfighter(id:0) moves: ["
--				+ model.letter[location.row] + "," + location.col.out + "] -> [" + model.letter[row] + ","+ column.out +"]")
				-- modular way:
			model.star_action_msg_update ("The Starfighter(id:0) moves: " + location_out + " -> " + location_string (row, column))
			-- remove previous location
			model.grid[location.row][location.col] := "_"
			-- set new location
			set_location(row, column)
			model.grid[location.row][location.col] := "S"
		end

	pass
		do
			-- do stuff
			regen_both
			regen_both
			model.star_action_msg_update ("The Starfighter(id:0) passes at location " + location_out + ", doubling regen rate.") -- C
		end

	special
		do
			-- do special stuff
		end
--	set_location(row : INTEGER; column : INTEGER)
--		do
--			starfighter_location.row := row
--			starfighter_location.col := column
--		end

	regen_both
		local
--			model : ETF_MODEL
		do
--			model := mda.m

			if current_attributes.health < attributes.health then -- could use ability for overflow, so dont lower
				-- HEALTH
				current_attributes.set_health(current_attributes.health + current_attributes.health_regen)
				if
					current_attributes.health > attributes.health
				then -- set to max hp b/c overflow
					current_attributes.set_health(attributes.health)
				end
			end

			if current_attributes.energy < attributes.energy then -- could use ability for overflow, so dont lower
				-- ENERGY
				current_attributes.set_energy(current_attributes.energy + current_attributes.energy_regen)
				if
					current_attributes.energy > attributes.energy
				then -- set to max energy b/c overflow
					current_attributes.set_energy(attributes.energy)
				end
			end
		end
end
