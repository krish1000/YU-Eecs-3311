note
	description: "Summary description for {CARRIER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CARRIER

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
			name := "Carrier"
			symbol := "C"
			id := model.enemies.count + 1
			create location
			-- Set attributes
			create attributes.make
			-- HP 200, regen 10, armour 15, vision 15
			attributes.set_health (200)
			attributes.set_health_regen (10)
			attributes.set_armour (15)
			attributes.set_vision (15)

			create current_attributes.make
			reset_current_attributes -- current_attributes := attributes.deep_twin
--			current_attributes.set_projectile_dmg (100) -- No projectiles for carrier


			-- PUTS INTO HASHTABLE IN MODEL
			put_in_struct
		end

feature -- Commands

	execute
		do
			-- Regen
--			current_attributes.set_health (current_attributes.health + current_attributes.health_regen)
--			if current_attributes.health > attributes.health then
--				current_attributes.set_health (attributes.health)
--			end
			if not model.command_msg.is_equal("pass")  then -- PASS ENDS TURN
				regen

				if can_see_starfighter then
					seen
				else
					not_seen
				end
			end
		end

	preemptive_action
		do

			if model.command_msg.is_equal("pass") then
				pass
			elseif model.command_msg.is_equal("special") then
				special
			end
		end


	not_seen
		do
			move(2) -- move 2 left

		end

	seen
		local
			interceptor : INTERCEPTOR
		do
			move(1) -- moves 1 left
			if not outside_board and alive then
				-- SPAWN INTERCEPTOR HERE LEFTWARDS****************
				-- NOTE IF AN ENEMY IS OCCUPYING SPAWN LOCATION THEN DONT SPAWN
				if model.locations.has_key ([location.row, location.col - 1]) then
					if not attached {ENEMY} model.locations.found_item then
						interceptor := create {INTERCEPTOR}.make
						interceptor.set_location (location.row, location.col - 1) -- spawns 1 left
						model.add_enemy (interceptor)

						model.grid[interceptor.location.row][interceptor.location.col] := interceptor.symbol -- UPDATE grid

						-- MSG --
						model.toggle_natural_enemy_action_msg.append ("%N    A " + interceptor.name + "(id:" + interceptor.id.out + ") spawns at location " + interceptor.location_out + ".")
						model.toggle_enemy_msg.append(interceptor.stats_out)
					end
				end

			end
--			if not outside_board and alive then
--				current_attributes.set_projectile_dmg (15)
--				proj := create {ENEMY_PROJ}.make(location.row, location.col - 1)
--				proj.set_current_damage (current_attributes.projectile_dmg)
--				proj.set_move_distance (4)
--				model.add_projectile (proj)

--				enemy_action(proj)
--			end
		end

	pass
		local
			interceptor : INTERCEPTOR
		do
			move(2) -- 2 left
			if not outside_board and alive then
				-- SPAWN INTERCEPTOR HERE LEFTWARDS****************
				-- NOTE IF AN ENEMY IS OCCUPYING SPAWN LOCATION THEN DONT SPAWN
				-- SPawn 2, oone above one below

				-- SPAWN ABOVE
				if
					(model.locations.has_key ([location.row + 1, location.col])
					and then not attached {ENEMY} model.locations.found_item)
					or
					not model.locations.has_key ([location.row + 1, location.col])
				then

					interceptor := create {INTERCEPTOR}.make
					interceptor.set_location (location.row + 1, location.col)
					model.add_enemy (interceptor)

					model.grid[interceptor.location.row][interceptor.location.col] := interceptor.symbol -- UPDATE grid

					-- MSG --
					model.toggle_natural_enemy_action_msg.append ("%N    A " + interceptor.name + "(id:" + interceptor.id.out + ") spawns at location " + interceptor.location_out + ".")
					model.toggle_enemy_msg.append(interceptor.stats_out)

				end

				-- SPAWN BELOW
				if
					(model.locations.has_key ([location.row + 1, location.col])
					and then not attached {ENEMY} model.locations.found_item)
					or
					not model.locations.has_key ([location.row + 1, location.col])
				then
						interceptor := create {INTERCEPTOR}.make
						interceptor.set_location (location.row - 1, location.col)
						model.add_enemy (interceptor)

						model.grid[interceptor.location.row][interceptor.location.col] := interceptor.symbol -- UPDATE grid

						-- MSG --
						model.toggle_natural_enemy_action_msg.append ("%N    A " + interceptor.name + "(id:" + interceptor.id.out + ") spawns at location " + interceptor.location_out + ".")
						model.toggle_enemy_msg.append(interceptor.stats_out)
				
				end
			end
			-- END TURN
		end

	special
		do
			-- increase total hp n current by 20
			-- Regen again? + 10 not 100% sure thoo *********
			regen -- setted as 10 in create make
			-- dont end turn
		end

-- Queries

--	enemy_action(proj : ENEMY_PROJ)
--		local
--			msg : STRING
--		do
--			if not proj.outside_board then -- print on grid
--				model.grid[proj.location.row][proj.location.col] := "<"


--				-- THESE 2 LINES WERE UNCOMMENTED 2020-12-05
----				msg := "A enemy projectile(id:-" + proj.id.out +") spawns at location " + proj.location_out + "." -- C

--				-- ADDING THE PROJECTILE MSG AS SOON AS FIRED
----				model.toggle_proj_msg.append ("%N    " + proj.stats_out)
--			else
--				-- dont print
----				msg := "OUTSIDEEE DA THING"
--			end


--		end

end
