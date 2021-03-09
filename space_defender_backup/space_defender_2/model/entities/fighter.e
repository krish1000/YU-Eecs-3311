note
	description: "Summary description for {FIGHTER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	FIGHTER

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
			name := "Fighter"
			symbol := "F"
			id := model.enemies.count + 1
			create location
			-- Set attributes
			create attributes.make
			-- HP 150, Regen 5, Armour 10, Vision 10
			attributes.set_health (150)
			attributes.set_health_regen (5)
			attributes.set_armour (10)
			attributes.set_vision (10)

			create current_attributes.make
			reset_current_attributes -- current_attributes := attributes.deep_twin
			current_attributes.set_projectile_dmg (100)


			-- PUTS INTO HASHTABLE IN MODEL
--			put_in_struct
		end

	execute
		do
			if not model.command_msg.is_equal ("pass") then -- ENDS TURN ON PASS
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
			if model.command_msg.is_equal("fire") then
				fire
			elseif model.command_msg.is_equal("pass") then
				pass
			end
		end

	not_seen
		local
			proj : ENEMY_PROJ
		do
			move(3) -- 3 left
			if not outside_board and alive then
				current_attributes.set_projectile_dmg (20) -- base 20dmg
				proj := create {ENEMY_PROJ}.make(location.row, location.col - 1)
				proj.set_current_damage (current_attributes.projectile_dmg)
				proj.set_move_distance (3) -- moves 3 spaces per turn left
--				model.add_projectile (proj)

				proj.spawn_collision
				model.toggle_enemy_action_msg.append (proj.collision_msg)
--				enemy_action(proj)
			end

		end
	seen
		local
			proj : ENEMY_PROJ
		do
			move(1) -- moves 1 left
			if not outside_board and alive then
				current_attributes.set_projectile_dmg (50) -- 50 base dmg
				proj := create {ENEMY_PROJ}.make(location.row, location.col - 1)
				proj.set_current_damage (current_attributes.projectile_dmg)
				proj.set_move_distance (6) -- moves 6 left
--				model.add_projectile (proj)

				proj.spawn_collision
				model.toggle_enemy_action_msg.append (proj.collision_msg)
--				enemy_action(proj)
			end

		end

	fire -- NONE
		do
			current_attributes.set_armour (current_attributes.armour + 1) -- increase armour by 1
			-- do not end turn

		end

	pass
		local
			proj : ENEMY_PROJ
		do
			regen -- REGEN**** BECAUSE TURN ENDS HERE
			-- if onboard and not dead:
			move(6) -- 6 left
			if not outside_board then
				current_attributes.set_projectile_dmg (100) -- 100 base dmg
				proj := create {ENEMY_PROJ}.make(location.row, location.col - 1)
				proj.set_current_damage (current_attributes.projectile_dmg)
				proj.set_move_distance (10) -- moves 10 left
--				model.add_projectile (proj)

				proj.spawn_collision
				model.toggle_enemy_action_msg.append (proj.collision_msg)
--				enemy_action(proj)

			end
			-- END TURN*******
		end

---- Queries

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
