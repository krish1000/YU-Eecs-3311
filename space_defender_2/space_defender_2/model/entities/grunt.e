note
	description: "Summary description for {GRUNT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GRUNT

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
			name := "Grunt"
			symbol := "G"
			id := model.enemies.count + 1
			create location
			-- Set attributes
			create attributes.make
			-- HP 100, Regen 1, Armour 1, Vision 5
			attributes.set_health (100)
			attributes.set_health_regen (1)
			attributes.set_armour (1)
			attributes.set_vision (5)

			create current_attributes.make
			reset_current_attributes -- current_attributes := attributes.deep_twin
			current_attributes.set_projectile_dmg (15)


			-- PUTS INTO HASHTABLE IN MODEL
--			put_in_struct
		end

feature -- Commands

	execute
		do
			-- Regen
--			current_attributes.set_health (current_attributes.health + current_attributes.health_regen)
--			if current_attributes.health > attributes.health then
--				current_attributes.set_health (attributes.health)
--			end
			regen

			if can_see_starfighter then
				seen
			else
				not_seen
			end
		end

	preemptive_action
		do
			if alive and not outside_board then
				-- if sf passes, increase both hp and total hp by 10
				if model.command_msg.is_equal("pass") then
					pass
				-- if sf special, increase both hp and totalhp by 20
				elseif model.command_msg.is_equal("special") then
					special
				end
			end
			-- TURN DOESNT END FOR BOTH^
		end

feature {NONE} -- Hidden

	seen
		local
			proj : ENEMY_PROJ
		do
			-- move 4 spaces left
			-- fire projectile, spawns directly left of grunt
			-- spawned projectile moves 4 left per turn, base dmg 15
			move(4) -- moves 4 left
			if not outside_board and alive then
				current_attributes.set_projectile_dmg (15)
				proj := create {ENEMY_PROJ}.make(location.row, location.col - 1)
				proj.set_current_damage (current_attributes.projectile_dmg)
				proj.set_move_distance (4)
--				model.add_projectile (proj)

				proj.spawn_collision
				model.toggle_enemy_action_msg.append (proj.collision_msg)
--				enemy_action(proj)
			end

		end

	not_seen
		local
			proj : ENEMY_PROJ
		do
			-- move 2 spaces left
			-- fire projectile, spawns directly left of grunt
			-- spawned projectile moves 4 left per turn, base dmg 15
			move(2)
			if not outside_board and alive then
				current_attributes.set_projectile_dmg (15)
				proj := create {ENEMY_PROJ}.make(location.row, location.col - 1)
				proj.set_current_damage (current_attributes.projectile_dmg)
				proj.set_move_distance (4)
--				model.add_projectile (proj)

				proj.spawn_collision
				model.toggle_enemy_action_msg.append (proj.collision_msg)
--				enemy_action(proj)
			end

		end


	pass
		do
			-- if onboard and not dead:
			--Increase total hp and current hp by 10
			model.toggle_enemy_action_msg.append ("%N    A Grunt(id:" + id.out + ") gains 10 total health.") -- C
			current_attributes.set_health (current_attributes.health + 10)
			attributes.set_health (attributes.health + 10)
		end

	special
		do
			-- increase total hp n current by 20
			model.toggle_enemy_action_msg.append ("%N    A Grunt(id:" + id.out + ") gains 20 total health.") -- C
			current_attributes.set_health (current_attributes.health + 20)
			attributes.set_health (attributes.health + 20)
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
