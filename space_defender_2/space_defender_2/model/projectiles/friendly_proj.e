note
	description: "Summary description for {FRIENDLY_PROJ}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	FRIENDLY_PROJ

inherit
	PROJECTILE
--	redefine
--		attributes -- REDEFINED
--		end

feature -- attributes
	move_direction : BOOLEAN -- moves right
		do
			Result := True
		end


-- ORIGINAL
	attributes : ATTRIBUTE_VALUES
		do
			Result := model.app.states[1].get_attributes -- sets the chosen wep attributes
		end
--	set_attributes
--		do
--			attributes := model.app.states[1].get_attributes -- sets the chosen wep attributes
--		end

	friendly : BOOLEAN
		do
			Result := TRUE
		end

--	collision_msg : STRING

feature -- Queries

	move_msg(previous_location : STRING; current_location : STRING) : STRING
		do
			if previous_location.is_equal (current_location) then
				Result := "A friendly projectile(id:-" + id.out + ") stays at: " + previous_location
			else
				Result := "A friendly projectile(id:-" + id.out + ") moves: " + previous_location + " -> " + current_location
			end

		end

	move_outside_msg(previous_location : STRING) : STRING
		do
			Result := "A friendly projectile(id:-" + id.out + ") moves: " + previous_location + " -> out of board"
		end

	stats_out : STRING
		do
			create Result.make_empty
			Result.append("[-" + id.out + ",*]->damage:"+ current_damage.out + ", move:"+ move_distance.out +", location:" + location_out) -- C
		end

--	status : STRING
--		do
--			create Result.make_empty
--			
--		end

--	collision(row : INTEGER; col : INTEGER)
--		local
--			lower : INTEGER
--		do
--			----- Reset collision msg
--			collision_msg := ""
--			----

--			from
--				lower := location.row
--			until
--				lower = row
--			loop

--				if lower < row then -- moved above b/c collides with itself
--					lower := lower + 1
--				else
--					lower := lower - 1
--				end
--				------------------
--				model.collision_test_msg.append ("%N CurrentLocation: " + lower.out + "," + location.col.out) -- PRINT TESTING
--				------------------
--				if model.locations.has_key ([lower, location.col]) then -- goes up or down at current location col

--					-- TESTING if it found collision
--					model.collision_test_msg.append ("  FOUND: ") -- PRINT TESTING
--					if attached model.locations.found_item as l_item then
--						model.collision_test_msg.append (l_item.location_out)

--						------------------------
--						modify_collision (l_item) -- changes values , sets alive n stuff
--						------------------------
--					end
--					---------------------------------------------------
--				else
--					model.collision_test_msg.append ("  not found ") -- PRINT TESTING
--				end
--			end

--			--------- FOR COLUMNS ----------
--			from
--				lower := location.col
--			until
--				lower = col
--			loop
--				if lower < col then -- moving first b/c if u do it after, it will collide with itself
--					lower := lower + 1
--				else
--					lower := lower - 1
--				end

--				model.collision_test_msg.append ("%N CurrentLocation: " + row.out + "," + lower.out) -- PRINT TESTING
--				if model.locations.has_key ([row, lower]) then -- goes up or down at current location col

--					-- TESTING if it found collisions

--					model.collision_test_msg.append ("  FOUND: ") -- PRINT TESTING
--					if attached model.locations.found_item as l_item then
--						model.collision_test_msg.append (l_item.location_out + " id:" + l_item.id.out + " symb:" + l_item.symbol )

--						------------------------
--						modify_collision (l_item) -- changes values , sets alive n stuff
--						------------------------
--					end
--					---------------------------------------------------
--				else
--					model.collision_test_msg.append ("  not found ") -- PRINT TESTING
--				end
--			end
--		end


		modify_collision(l_item : ENTITY)
			do
				-- colliding with enemy proj ---------------
				if attached {ENEMY_PROJ} l_item as l_e then
					-- 3 cases:
					collision_msg.append ("%N      The projectile collides with enemy projectile(id:-" + l_e.id.out + ") at location " + l_e.location_out + ", negating damage.")
					if l_e.current_damage > current_damage then
						-- friendly projectile is destroyed

						set_alive (false) -- dead, automatically removes from hash
						set_location (l_e.location.row, l_e.location.col)
						l_e.set_current_damage (l_e.current_damage - current_damage) --enemydmg := enemydmg - friendlydmg

					elseif l_e.current_damage < current_damage then
						-- enemy projectile is destroyed
						l_e.set_alive (false) -- enemy status dead
						set_current_damage (current_damage - l_e.current_damage) -- friendlydmg :=  friendly - enemy

					else -- both equal dmg
						-- BOTH projectiles destroyed

						l_e.set_alive (false) -- dead
						set_alive(false) -- dead
						set_location (l_e.location.row, l_e.location.col)

					end
				end
				-- colliding with friendly proj ----------------
				if attached {FRIENDLY_PROJ} l_item as l_f then
					-- stationary projectile is removed, moving projectile gets added dmg from stationary
					collision_msg.append ("%N      The projectile collides with friendly projectile(id:-" + l_f.id.out + ") at location " + l_f.location_out + ", combining damage.")
					l_f.set_alive (false) -- removed/dead stationary proj
					set_current_damage (current_damage + l_f.current_damage) -- combine both dmg to moving proj (i.e Current)
				end
				-- colliding with an enemy ---------------------
				if attached {ENEMY} l_item as l_e then
					--"The projectile collides with <entity name>(id:<id>) at location [X,Y], dealing <projectile damage - entity armour> damage."

					set_alive(false) -- removed projectile
					set_location (l_e.location.row, l_e.location.col)

					collision_msg.append ("%N      The projectile collides with " + l_e.name + "(id:" + l_e.id.out + ") at location " + l_e.location_out + ", dealing " + ((current_damage - l_e.current_attributes.armour).max(0)).out + " damage.")
					l_e.current_attributes.set_health (l_e.current_attributes.health - (current_damage - l_e.current_attributes.armour).max(0))
					-- NEED TO APPEND DEATH MESSAGE IF ENTITY HAS BEEN DESTROYED!!!!!!!!!!!!!**************************
--					collision_msg.append ("%N      The " + l_e.name + " at location " + l_e.location_out + " has been destroyed.")
					if l_e.current_attributes.health <= 0 then
						l_e.set_alive (false) -- Enemy got destroyed wrekt 360 no scope
						l_e.current_attributes.set_health (0)
						collision_msg.append ("%N      The " + l_e.name + " at location " + l_e.location_out + " has been destroyed.")
					else
						---------------
						model.grid[l_e.location.row][l_e.location.col] := l_e.symbol
						---------------

					end

				end
				-- colliding with starfighter ------------------
				if attached {STARFIGHTER} l_item as l_s then
					--"The projectile collides with <entity name>(id:<id>) at location [X,Y], dealing <projectile damage - entity armour> damage."

					set_alive(false) -- removed projectile
					set_location (l_s.location.row, l_s.location.col)

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
					else

						---------------
						model.grid[l_s.location.row][l_s.location.col] := l_s.symbol
						---------------


					end

				end

			end

feature -- deferred commands
	move deferred end

end
