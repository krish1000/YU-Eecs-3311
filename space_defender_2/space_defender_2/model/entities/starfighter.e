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
			name := "Starfighter"
			id := 0
			symbol := "S"
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
--			model.star_action_msg_update (moves_msg(row,column)) -- USES "A" isntead of "THE" bruh why did you do this to use jackie
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

	fire
		local
			proj : PROJECTILE
			projectile_type : INTEGER
			msg : STRING
		do
			create msg.make_empty
			projectile_type := model.app.states[1].select_value

			-- Regen energy & health
			regen_both

			-- Lose energy
			if current_attributes.projectile_cost_type then -- health if true
				current_attributes.set_health (current_attributes.health - current_attributes.projectile_cost)
			else -- energy
				current_attributes.set_energy (current_attributes.energy - current_attributes.projectile_cost)
			end

			if projectile_type = 1 then -- STANDARD
				model.add_projectile (create {STANDARD}.make)
			elseif projectile_type = 2 then

			elseif projectile_type = 3 then

			elseif projectile_type = 4 then

			elseif projectile_type = 5 then

			end

--			model.projectiles.force (create {STANDARD}.make, 1)
			proj := model.projectiles[model.projectiles.count]



			if not proj.outside_board then -- print on grid
				model.grid[proj.location.row][proj.location.col] := "*"
--				msg := "A friendly projectile(id:-" + model.projectiles.count.out +") spawns at location " + proj.location_out + "." -- C
				msg := "A friendly projectile(id:-" + proj.id.out +") spawns at location " + proj.location_out + "." -- C

				-- ADDING THE PROJECTILE MSG AS SOON AS FIRED
				model.toggle_proj_msg.append ("%N    " + proj.stats_out)
			else
				-- dont print
				msg := "OUTSIDEEE DA THING"
			end

			model.star_action_msg_update ("The Starfighter(id:0) fires at location " + location_out + ".%N      "
				+ msg) -- C
		end

	special
		local
--			la : ATTRIBUTE_VALUES
--			ca : ATTRIBUTE_VALUES
			selected_value : INTEGER
		do
--			la := attributes
--			ca := current_attributes
			regen_both

			selected_value := model.app.states[4].select_value


			if selected_value = 1 then -- recall 50 energy
				--The Starfighter(id:0) uses special, teleporting to: [C,1]
				current_attributes.set_energy (current_attributes.energy - 50)
				model.grid[location.row][location.col] := "_" -- clear previous location
				set_location (model.grid.count //2 + model.grid.count \\ 2, 1)
				model.grid[location.row][location.col] := "S"
				model.star_action_msg_update ("The Starfighter(id:0) uses special, teleporting to: " + location_out)
			elseif selected_value = 2 then -- repair 50 energy

			elseif selected_value = 3 then -- overcharge up to 50 hp
				-- DO THIS*******************************************************
			elseif selected_value = 4 then -- deploy drones 100 energy

			elseif selected_value = 5 then -- orbital strik 100 energy

			end

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
