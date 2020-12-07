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
			set_variables
--			create starfighter_location
			alive := true
			previously_alive := False
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
	attributes : ATTRIBUTE_VALUES
	current_attributes : ATTRIBUTE_VALUES
feature -- Commands

	reset_current_attributes
		do
			current_attributes := attributes.deep_twin
		end

	move(row : INTEGER; column : INTEGER)
		local
--			model : ETF_MODEL
			move_distance : INTEGER
			previous_row : INTEGER
			previous_col : INTEGER
			previous_location_out : STRING
		do
--			model := mda.m

			regen_both -- REGENS HEALTH AND ENERGY, might need to do some proper shiez inorder not to violate single choice principle
			previous_row := location.row
			previous_col := location.col
			previous_location_out := location_out
			move_distance := ((row - location.row).abs
							+ (column - location.col).abs)

			-- -- -- -- -- --
			model.test_msg_update(move_distance.out) -- TESTTTT
			------------****************** REMOVE THIS AFTER*************************

			-- do you lose energy first when u move or regen first?
			-- for now after moveing energy gets depleted, havent done regen yet
--			current_attributes.set_energy (current_attributes.energy - move_distance*current_attributes.move_cost) 2020-12-06 CHANGED

			-- Testing
--			model.grid[1][1] := starfighter_location.row.out + " " + starfighter_location.col.out

			-- set starfighter msg
--			model.star_action_msg_update("The Starfighter(id:0) moves: ["
--				+ model.letter[location.row] + "," + location.col.out + "] -> [" + model.letter[row] + ","+ column.out +"]")
				-- modular way:

--			model.star_action_msg_update (moves_msg(row,column)) -- USES "A" isntead of "THE" bruh
			-- remove previous location
			model.grid[location.row][location.col] := "_"

			-- set new location
			collision (row, column)
			if alive then
--				model.star_action_msg_update ("The Starfighter(id:0) moves: " + location_out + " -> " + location_string (row, column)) --CHANGED 2020-12-06
				set_location(row, column)
				model.grid[location.row][location.col] := "S"
				current_attributes.set_energy (current_attributes.energy - move_distance*current_attributes.move_cost)
			else -- just got destroyed
				move_distance := ((location.row - previous_row).abs + (location.col - previous_col).abs)
				current_attributes.set_energy (current_attributes.energy - move_distance*current_attributes.move_cost)
			end
			model.star_action_msg_update ("The Starfighter(id:0) moves: " + previous_location_out + " -> " + location_out) -- modified

		end

	modify_collision(l_item : ENTITY)
		do
			-- PUT STUFf hEReE
			if attached {PROJECTILE} l_item as l_p then
				--The Starfighter collides with <friendly/enemy> projectile(id:<id>) at location [X,Y], taking <projectile damage - Starfighter armour> damage. -- C
				l_p.set_alive (false) -- projectile dead/removed
				current_attributes.set_health (current_attributes.health - ((l_p.current_damage - current_attributes.armour).max(0)))

				collision_msg.append ("%N      The Starfighter collides with ")
				if attached {FRIENDLY_PROJ} l_p then
					collision_msg.append ("friendly projectile(id:-" + l_p.id.out + ") at location ")
				elseif attached {ENEMY_PROJ} l_p then
					collision_msg.append ("enemy projectile(id:-" + l_p.id.out + ") at location ")
				end
				collision_msg.append (l_p.location_out + ", taking "
					+ ((l_p.current_damage - current_attributes.armour).max(0)).out + " damage.")
				-- CHECK ALSO IF STARFIGHTER GETS DESTORYED***************
				if current_attributes.health <= 0 then -- starfighter destoryed
					set_alive (false)
					current_attributes.set_health (0)
					set_location (l_p.location.row, l_p.location.col)
					collision_msg.append ("%N      The " + name + " at location " + l_p.location_out + " has been destroyed.")
					-- need to set location or nah

					model.grid[l_p.location.row][l_p.location.col] := "X"
					-- Need to make game end for next state
					model.set_game_over(True)
				end
			elseif attached {ENEMY} l_item as l_e then
				-- "The Starfighter collides with <enemy name>(id:<id>) at location [X,Y], trading <enemy current health> damage." -- C
				l_e.set_alive (false) -- enemy destroyed
				current_attributes.set_health (current_attributes.health - l_e.current_attributes.health)
				collision_msg.append ("%N      The Starfighter collides with " + l_e.name + "(id:" + l_e.id.out + ") at location " + l_e.location_out + ", trading " + l_e.current_attributes.health.out + " damage.")

				collision_msg.append ("%N      The " + l_e.name + " at location " + l_e.location_out + " has been destroyed.")

				if current_attributes.health <= 0 then -- starfighter destoryed
					set_alive (false)
					current_attributes.set_health (0)
					set_location (l_e.location.row, l_e.location.col)
					collision_msg.append ("%N      The " + name + " at location " + l_e.location_out + " has been destroyed.")
					model.grid[l_e.location.row][l_e.location.col] := "X"
					-- Need to make game end for next state
					model.set_game_over(True)
				end
			end

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

--				-- ADDING THE PROJECTILE MSG AS SOON AS FIRED
--				model.toggle_proj_msg.append ("%N    " + proj.stats_out) -- COMMMENTED OUT 2020-12-06
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
