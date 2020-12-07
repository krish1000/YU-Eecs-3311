note
	description: "Summary description for {ENEMY_PROJ}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

--deferred class
class
	ENEMY_PROJ

inherit
	PROJECTILE

create
	make

feature {NONE} -- Initialization

	make(row : INTEGER; col : INTEGER)
			-- Initialization for `Current'.
		do
			set_variables
			alive := true
			previously_alive := False
			symbol := "<"
			name := "enemy projectile"
			create status.make_empty
--			create current_attributes.make -- dont think this is needed, but compile errors
--			create attributes.make -- not needed
			set_id -- sets id
--			set_location(x,y)
--			location := [model.enemies[model.enemies.count].location.row,model.enemies[model.enemies.count].location.col - 1]
			location := [row,col]
			--A enemy projectile(id:-1) spawns at location [A,27].
			model.toggle_enemy_action_msg.append ("%N      A enemy projectile(id:-" +id.out + ") spawns at location " + location_out + "." )

			put_in_struct -- PUTS INTO HASHTABLE!!!!!!!!!
		end

feature -- Attributes
	friendly : BOOLEAN
		do
			Result := False
		end
	move_direction : BOOLEAN
		do
			Result := False -- goes left
		end
	-- not really needed tbh
--	attributes : ATTRIBUTE_VALUES
--		do
--			create Result.make
--		end

feature -- Commands
	move
		local
			previous_location : STRING
		do
			if not outside_board then -- move
				previous_location := location_out
				remove_from_struct -- REMOVES FROM HASHTABLE
				collision(location.row, location.col - move_distance)

				if alive then
					set_location(location.row, location.col - move_distance) -- move X left
					-- A enemy projectile(id:-1) moves: [A,27] -> [A,23]
	--				model.toggle_enemy_proj_msg.append ("%N    A enemy projectile(id:-" + id.out + ") moves: " + previous_location + " -> " + location_out )
					if not outside_board then -- still in board
						set_status(move_msg(previous_location, location_out))
						put_in_struct -- put in new location into hashtable
					else -- now moved outside of board
						set_status(move_outside_msg(previous_location))
					end
				end
			else
				-- dont move, already outside of board
			end
		end

	modify_collision(l_item : ENTITY)
		do
			-- colliding with friendly proj ---------------
			if attached {FRIENDLY_PROJ} l_item as l_e then
				-- 3 cases:
				collision_msg.append ("%N      The projectile collides with friendly projectile(id:-" + l_e.id.out + ") at location " + l_e.location_out + ", negating damge.")
				if l_e.current_damage > current_damage then
					-- current enemy projectile is destroyed
					set_alive (false) -- dead, automatically removes from hash
					l_e.set_current_damage (l_e.current_damage - current_damage)

				elseif l_e.current_damage < current_damage then
					-- friendly projectile is destroyed
					l_e.set_alive (false) -- friendly status dead
					set_current_damage (current_damage - l_e.current_damage)

				else -- both equal dmg
					-- BOTH projectiles destroyed
					l_e.set_alive (false) -- dead
					set_alive(false) -- dead
				end
			end
			-- colliding with enemy proj ----------------
			if attached {ENEMY_PROJ} l_item as l_f then
				-- stationary projectile is removed, moving projectile gets added dmg from stationary
				collision_msg.append ("%N      The projectile collides with enemy projectile(id:-" + l_f.id.out + ") at location " + l_f.location_out + ", combining damage.")
				l_f.set_alive (false) -- removed/dead stationary proj
				set_current_damage (current_damage + l_f.current_damage) -- combine both dmg to moving proj (i.e Current)
			end
			-- colliding with an enemy ---------------------
			if attached {ENEMY} l_item as l_e then
				--"The projectile collides with <entity name>(id:<id>) at location [X,Y], dealing <projectile damage - entity armour> damage."
				set_alive(false) -- removed projectile
				collision_msg.append ("%N      The projectile collides with " + l_e.name + "(id:" + l_e.id.out + ") at location " + l_e.location_out + ", healing " + current_damage.out + " damage.")
				l_e.current_attributes.set_health (l_e.current_attributes.health + current_damage)
				if l_e.current_attributes.health > l_e.attributes.health then
					l_e.current_attributes.set_health (l_e.attributes.health) -- put to max health
				end
				-- NEED TO APPEND DEATH MESSAGE IF ENTITY HAS BEEN DESTROYED!!!!!!!!!!!!!**************************
			end
			-- colliding with starfighter ------------------
			if attached {STARFIGHTER} l_item as l_s then
				--"The projectile collides with <entity name>(id:<id>) at location [X,Y], dealing <projectile damage - entity armour> damage."
				set_alive(false) -- removed projectile
				collision_msg.append ("%N      The projectile collides with " + l_s.name + "(id:" + l_s.id.out + ") at location " + l_s.location_out + ", dealing " + ((current_damage - l_s.current_attributes.armour).max(0)).out + " damage.")
				l_s.current_attributes.set_health (l_s.current_attributes.health - (current_damage - l_s.current_attributes.armour).max(0))
				-- NEED TO APPEND DEATH MESSAGE IF ENTITY HAS BEEN DESTROYED!!!!!!!!!!!!!**************************
				if l_s.current_attributes.health <= 0 then -- starfighter destoryed
					l_s.set_alive (false)
					l_s.current_attributes.set_health (0)
					collision_msg.append ("%N      The " + l_s.name + " at location " + l_s.location_out + " has been destroyed.")
					model.grid[l_s.location.row][l_s.location.col] := "X"
					-- Need to make game end for next state
					model.set_game_over(True)
				end
			end

		end


feature -- Queries
	stats_out : STRING
		do
			create Result.make_empty
			Result.append("[-" + id.out + ",<]->damage:"+ current_damage.out + ", move:"+ move_distance.out +", location:" + location_out) -- C
		end

	move_msg(previous_location : STRING; current_location : STRING) : STRING
		do
			Result := "A enemy projectile(id:-" + id.out + ") moves: " + previous_location + " -> " + current_location
		end

	move_outside_msg(previous_location : STRING) : STRING
		do
			Result := "A enemy projectile(id:-" + id.out + ") moves: " + previous_location + " -> out of board"
		end



end
