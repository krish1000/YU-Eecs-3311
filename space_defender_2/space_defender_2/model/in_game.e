note
	description: "Summary description for {IN_GAME}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	IN_GAME

--inherit
--	STATES

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
		local
--			mda : ETF_MODEL_ACCESS
		do
--			model := mda.m -- putting model makes model void for some reason, need to look into this further *********

		end

feature -- attributes
--	model : ETF_MODEL
	mda : ETF_MODEL_ACCESS
	row : INTEGER -- used for move
	column : INTEGER -- used for move
feature -- Commands
	set_row (x : INTEGER)
		do
			row := x
		end

	set_column (x : INTEGER)
		do
			column := x
		end
--	game_update
--		local
--			model : ETF_MODEL
--		do
--			model := mda.m
--			model.state_increase
----			model.test_msg.append ("%N PROJECTILE COUNT " + model.projectiles.count.out)
--			-- Move projectiles
--			across
--				model.projectiles is proj
--			loop
----				model.test_msg.append ("%N PROJECTILE COUNT " + proj.outside_board.out)
--				if not proj.outside_board then -- put projectiles on grid -- NEED TO ALSO REMOVE PRJOECTILES IF IT LEFT THE BOARD IN PREVIOUS STATE
--					-------------------- PROJECTILE

--					model.grid[proj.location.row][proj.location.col] := "_" -- replace previous position
--					proj.move -- move projectile
--					if not proj.outside_board then
--						model.toggle_proj_msg.append ("%N    " + proj.stats_out)
--					end

--					-------------------- FRIENDLY PROJ
--					if proj.friendly then
----						grid[proj.location.row][proj.location.col] := "_"
----						proj.move
--						model.toggle_friend_proj_msg.append ("%N    " + proj.status)
--						if not proj.outside_board then
--							model.grid[proj.location.row][proj.location.col] := "*"
--							-- NEED TO DO COLLISON CHECKING
--						else -- just went outside of board

--						end
--					-------------------- ENEMY PROJ
--					else
----						grid[proj.location.row][proj.location.col] := "_"
----						proj.move
----						model.test_msg.append ("%N NOT FRIENDLY REEE") -----------------------------
----						if not proj.outside_board then
--							model.toggle_enemy_proj_msg.append ("%N    " + proj.status)
----						end

--						if not proj.outside_board then
--							model.grid[proj.location.row][proj.location.col] := "<"
--							-- NEED TO DO COLLISON CHECKING
--						else --- just went outside of board

--						end
--						-- NEED TO DO COLLISION CHECKING
--						-- with enemy, can enemy projs collide with one antoher?
--						-- also check wit hspawn
--						-- with fridnly projectile
--						-- with starfighter
--					end
--				end
--			end
--			execute_enemies
--			enemy_spawn
--		end

	game_update
		local
			model : ETF_MODEL
		do
			model := mda.m
			model.state_increase

			execute_friendlies -- move friendly projectiles first
			execute_enemy_projs -- phase 2 enemy projs
			-- insert star fighter act phase 3 *********
			execute_preemptive_enemy_actions -- HAS TO BE BEFORE STARFIGHTER ACTION
			execute_starfighter

			-- insert enemy vision update phase 4 *******
--			execute_preemptive_enemy_actions -- moved 2020-12-07
			execute_enemies -- phase 5 enemy act
			-- insert enemy vision update phase 6 *******
			enemy_spawn -- phase 6 enemy spawn

			-- NEED TO PUT OUT STATUS MSGS, BUT FIRST GOING TO DO COLLISION SHIEZ
			across
				model.projectiles is proj
			loop
				if not proj.outside_board and proj.alive then
					model.toggle_proj_msg.append ("%N    " + proj.stats_out)
				end

			end
		end

	execute_friendlies
		local
			model : ETF_MODEL
		do
			model := mda.m
			-- MAKE THESE MOVE FIRST
			across
				model.projectiles is proj
			loop
				if proj.friendly and not proj.outside_board and proj.alive then
					model.grid[proj.location.row][proj.location.col] := "_" -- remove previous location
					proj.move
					model.toggle_friend_proj_msg.append ("%N    " + proj.status) -- projectile friendly status msg
--					if attached {FRIENDLY_PROJ} proj as l_p then -- temp
					model.toggle_friend_proj_msg.append (proj.collision_msg)
--					end

					if not proj.outside_board and  proj.alive then -- and check if its still alive*******
						model.grid[proj.location.row][proj.location.col] := "*"
						-- doing collision inside friendly for now
					else -- just went outside of board

					end
				end
			end
		end

	execute_enemy_projs
		local
			model : ETF_MODEL
		do
			model := mda.m
			-- MOVE AFTER FRIENDLIES
			across
				model.projectiles is proj
			loop
				if NOT proj.friendly and not proj.outside_board and proj.alive then -- enemy projs
					model.grid[proj.location.row][proj.location.col] := "_" -- remove previous location
					proj.move
					model.toggle_enemy_proj_msg.append ("%N    " + proj.status)
					model.toggle_enemy_proj_msg.append (proj.collision_msg)
					if not proj.outside_board and proj.alive then -- and check if its still alive*******
						model.grid[proj.location.row][proj.location.col] := "<"

--						model.toggle_enemy_proj_msg.append ("%N    " + proj.status)
--						model.toggle_enemy_proj_msg.append (proj.collision_msg)
					else -- just went outside of board

					end
				end
			end
		end

	execute_starfighter
		local
			model : ETF_MODEL
		do
			model := mda.m
			if model.command_msg.is_equal ("move") then
				model.starfighter.move (row, column)
				-- case where starfighter moves n collides
				model.toggle_star_action_msg.append (model.starfighter.collision_msg)
			elseif model.command_msg.is_equal ("pass") then
				model.starfighter.pass
			elseif model.command_msg.is_equal ("fire") then
				model.starfighter.fire
			elseif model.command_msg.is_equal ("special") then
				model.starfighter.special
			end
		end

	execute_preemptive_enemy_actions
		local
			model : ETF_MODEL
		do
			model := mda.m
			across
				model.enemies is enemy
			loop
				if enemy.alive and not enemy.outside_board then
					enemy.preemptive_action
				end
			end
		end

	execute_enemies
		local
			model : ETF_MODEL
		do
			model := mda.m
			across
				model.enemies is enemy
			loop
--				grid[proj.location.row][proj.location.col] := "_"
				if enemy.alive then
					enemy.execute
					if not enemy.outside_board then

						model.toggle_enemy_msg.append (enemy.stats_out)
						model.toggle_enemy_action_msg.append (enemy.collision_msg) -- order is not proper for when it fires
					end
				end
			end
		end

	enemy_spawn
		local
--			rng : RANDOM_GENERATOR
			random : RANDOM_GENERATOR_ACCESS
			l_i : INTEGER
			l_j : INTEGER
			enemy : ENEMY
			l_col : INTEGER
			l_row : INTEGER
			model : ETF_MODEL
		do
			model := mda.m
			l_col := model.l_col
			l_row := model.l_row

			if model.state > 0 then
				l_i := random.rchoose (1, l_row) -- determines which row enemy spawns in
				l_j := random.rchoose (1, 100) -- determines which enemy type spawns
				model.test_msg.append ("%N RANDOM TYPE: " + l_j.out + " " + l_col.out) ------------------------------
	--			play(row, column, g_threshold, f_threshold, c_threshold, i_threshold, p_threshold)
				if l_j < model.lg_threshold then -- spawn grunt
					enemy := create {GRUNT}.make
					model.add_enemy (enemy)
				elseif  l_j < model.lf_threshold then -- spawn fighter
					enemy := create {FIGHTER}.make
					model.add_enemy(enemy)
				elseif  l_j < model.lc_threshold then -- spawn carrier
					enemy := create {CARRIER}.make
					model.add_enemy(enemy)
				elseif  l_j < model.li_threshold then -- spawn interceptor
					enemy := create {INTERCEPTOR}.make
					model.add_enemy(enemy)
				elseif  l_j < model.lp_threshold then -- spawn pylon
					enemy := create {PYLON}.make
					model.add_enemy (enemy)
				-- what about < 101 i think im missing something********nvm it just doesnt spawn anything
				end

				if attached enemy as e then
					e.set_location (l_i, l_col)

					-- ADD TO HASHTABLE TO SAVE LOCATIONS for COLLISION
--					model.locations.put (e, e.location)
--					e.put_in_struct -- adds to hash


					-- MSG --
					model.toggle_natural_enemy_action_msg.append ("%N    A " + e.name + "(id:" + e.id.out + ") spawns at location " + e.location_out + ".")
--					model.toggle_enemy_msg.append(e.stats_out)

					if model.locations.has_key ([e.location.row, e.location.col]) then -- Entity exists in the spawning location, either friendlyproj/enemyproj/starfighter
						if attached {ENTITY} model.locations.found_item as l_item then
							e.modify_collision (l_item)
						end
					else
--						e.put_in_struct
					end

					if e.alive and not e.outside_board then
						model.grid[l_i][l_col] := e.symbol
						e.put_in_struct
						model.toggle_enemy_msg.append(e.stats_out)
					end



					-- Collision MSG --
					model.toggle_enemy_action_msg.append (e.collision_msg)
				end
			end
		end

end
