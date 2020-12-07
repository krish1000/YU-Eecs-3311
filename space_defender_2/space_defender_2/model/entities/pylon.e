note
	description: "Summary description for {PYLON}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	PYLON

inherit
	ENEMY

create
	make

feature {NONE} -- Initialization

make
			-- Initialization for `Current'.
		do
			set_variables
			stopped_before_enemy := False
			alive:= True
			previously_alive := False
			name := "Pylon"
			symbol := "P"
			id := model.enemies.count + 1
			create location
			-- Set attributes
			create attributes.make
			-- HP 300, regen 0, armour 0, vision 5
			attributes.set_health (300)
			attributes.set_health_regen (0)
			attributes.set_armour (0)
			attributes.set_vision (5)

			create current_attributes.make
			reset_current_attributes -- current_attributes := attributes.deep_twin
			current_attributes.set_projectile_dmg (70)


			-- PUTS INTO HASHTABLE IN MODEL
			put_in_struct
		end

	execute
		do
			regen

			if can_see_starfighter then
				seen
			else
				not_seen
			end
		end

	preemptive_action
		do
			-- None
		end

	not_seen

		do
			move(2) -- 2 left
			if not outside_board and alive then
				current_attributes.set_health (current_attributes.health + 10)
				if current_attributes.health > attributes.health then
					current_attributes.set_health (attributes.health) -- cap health of pylon
				end
				find_nearby_enemies_heal


			end
		end

	seen
		local
			proj : ENEMY_PROJ
		do
			move(1) -- 1 left
			-- fires projectile dmg 70, moves 2 left per turn
			if not outside_board and alive then
				current_attributes.set_projectile_dmg (70)
				proj := create {ENEMY_PROJ}.make(location.row, location.col - 1)
				proj.set_current_damage (current_attributes.projectile_dmg)
				proj.set_move_distance (2) -- 2 left per turn
				model.add_projectile (proj)

				enemy_action(proj)
			end

		end

	-- heal enemies within vision by 10+
	find_nearby_enemies_heal -- none
		local
			i : INTEGER
			k : INTEGER

		do
			from i := 1 until i > model.grid.count loop
				from k := 1 until k > model.grid[i].count loop
					if (location.row - i).abs + (location.col -k).abs <= attributes.vision  then
						-- inside vision
						if model.locations.has_key ([location.row, location.col - 1]) then
							if
								attached {ENEMY} model.locations.found_item as l_e
								and then l_e.alive
							then
								-- Heal enemy
								l_e.current_attributes.set_health (l_e.current_attributes.health + 10)
								if l_e.current_attributes.health > l_e.attributes.health then
									l_e.current_attributes.set_health (l_e.attributes.health) -- cap health
								end
							end
						end
					else
						-- outside vision
					end
					k := k + 1
				end
				i := i + 1
			end

		end

	enemy_action(proj : ENEMY_PROJ)
		local
			msg : STRING
		do
			if not proj.outside_board then -- print on grid
				model.grid[proj.location.row][proj.location.col] := "<"


				-- THESE 2 LINES WERE UNCOMMENTED 2020-12-05
--				msg := "A enemy projectile(id:-" + proj.id.out +") spawns at location " + proj.location_out + "." -- C

				-- ADDING THE PROJECTILE MSG AS SOON AS FIRED
--				model.toggle_proj_msg.append ("%N    " + proj.stats_out)
			else
				-- dont print
--				msg := "OUTSIDEEE DA THING"
			end
	end
end
