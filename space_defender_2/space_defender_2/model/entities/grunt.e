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
		end

feature -- Commands

	execute
		do
			-- if alive check that

			-- regen

			if model.command_msg.is_equal("pass") then
				pass
				model.test_msg.append("PASS IN GRUNTTT") --------------------------
			elseif model.command_msg.is_equal("special") then
				special
			end

			if can_see_starfighter then
				seen
			else
				not_seen
			end

			-- end ting
		end

	seen
		local
			proj : ENEMY_PROJ
		do
			-- move 4 spaces left
			-- fire projectile, spawns directly left of grunt
			-- spawned projectile moves 4 left per turn, base dmg 15
			move(4) -- moves 4 left
			if not outside_board then
				current_attributes.set_projectile_dmg (15)
				proj := create {ENEMY_PROJ}.make(location.row, location.col - 1)
				proj.set_current_damage (current_attributes.projectile_dmg)
				proj.set_move_distance (4)
				model.add_projectile (proj)

				enemy_action(proj)
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
			if not outside_board then
				current_attributes.set_projectile_dmg (15)
				proj := create {ENEMY_PROJ}.make(location.row, location.col - 1)
				proj.set_current_damage (current_attributes.projectile_dmg)
				proj.set_move_distance (4)
				model.add_projectile (proj)

				enemy_action(proj)
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

	enemy_action(proj : ENEMY_PROJ)
		local
			msg : STRING
		do
			if not proj.outside_board then -- print on grid
				model.grid[proj.location.row][proj.location.col] := "<"
				msg := "A enemy projectile(id:-" + proj.id.out +") spawns at location " + proj.location_out + "." -- C

				-- ADDING THE PROJECTILE MSG AS SOON AS FIRED
				model.toggle_proj_msg.append ("%N    " + proj.stats_out)
			else
				-- dont print
--				msg := "OUTSIDEEE DA THING"
			end


		end
end
