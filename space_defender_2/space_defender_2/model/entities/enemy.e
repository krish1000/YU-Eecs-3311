note
	description: "Summary description for {ENEMY}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	ENEMY

inherit
	ENTITY
	redefine
		collision
		end
feature -- Attributes
--	name : STRING
--	symbol : STRING
--	id : INTEGER
	attributes : ATTRIBUTE_VALUES
	current_attributes : ATTRIBUTE_VALUES
	stopped_before_enemy : BOOLEAN

feature -- deferred
	execute deferred end

feature -- Commands

	regen
		do
			current_attributes.set_health (current_attributes.health + current_attributes.health_regen)
			if current_attributes.health > attributes.health then
				current_attributes.set_health (attributes.health)
			end
		end

	reset_current_attributes
		do
			current_attributes := attributes.deep_twin
		end

	move (distance: INTEGER)
		local
--			s : STRING
		do
			if not outside_board then -- current inside board
				model.grid[location.row][location.col] := "_" -- replace previous position
				remove_from_struct -- REMOVE FROM HASHTABLE
				collision (location.row, location.col - distance)
				-- for now just moving by distance
--				s := "%N    "
				if alive and not stopped_before_enemy then
					model.toggle_enemy_action_msg.append("%N    " + moves_msg(location.row, location.col - distance))
					set_location (location.row, location.col - distance)

					if not outside_board then
	--					toggle_proj_msg.append ("%N    " + proj.stats_out)
						model.grid[location.row][location.col] := symbol
						put_in_struct -- PUT INTO HASHTABLE
					end

					-- NEED TO DO COLLISION CHECKING HERE AS WELL***********8
				end

				if stopped_before_enemy then
					stopped_before_enemy := false
				end
				model.toggle_enemy_action_msg.append (collision_msg) -- ADDS COLLISION MSG *********** IMPORTANT
			end

		end

	preemptive_action deferred end

	collision(row : INTEGER; col : INTEGER)
		local
			lower : INTEGER
		do
			----- Reset collision msg
			collision_msg := ""
			----

			from
				lower := location.row
			until
				lower = row
				-- OR IF CURRENT ENTITY GETS DESTROYED!!!!******
				or
				alive = False
				or
				stopped_before_enemy = True
			loop

				if lower < row then -- moved above b/c collides with itself
					lower := lower + 1
				else
					lower := lower - 1
				end
				------------------
				model.collision_test_msg.append ("%N CurrentLocation: " + lower.out + "," + location.col.out) -- PRINT TESTING
				------------------
				if model.locations.has_key ([lower, location.col]) then -- goes up or down at current location col

					-- TESTING if it found collision
					model.collision_test_msg.append ("  FOUND: ") -- PRINT TESTING
					if attached model.locations.found_item as l_item then
						model.collision_test_msg.append (l_item.location_out)

						------------------------
						modify_collision (l_item) -- changes values , sets alive n stuff
						------------------------

						-- STOPP BEFORE ENEMY THIS IS CHANGED AND THE VARIABLE THING IN THE UNTIL
						if stopped_before_enemy then
							model.toggle_enemy_action_msg.append("%N    " + moves_msg(lower + 1, location.col)) -- stops before it
							set_location (lower + 1, location.col)

							if not outside_board then
			--					toggle_proj_msg.append ("%N    " + proj.stats_out)
								model.grid[location.row][location.col] := symbol
								put_in_struct -- PUT INTO HASHTABLE
							end
						end
					end
					---------------------------------------------------
				else
					model.collision_test_msg.append ("  not found ") -- PRINT TESTING
				end
			end

			--------- FOR COLUMNS ----------
			from
				lower := location.col
			until
				lower = col
				-- OR IF CURRENT ENTITY GETS DESTROYED!!!!******
				or
				alive = False
				or
				stopped_before_enemy = True
			loop
				if lower < col then -- moving first b/c if u do it after, it will collide with itself
					lower := lower + 1
				else
					lower := lower - 1
				end

				model.collision_test_msg.append ("%N CurrentLocation: " + row.out + "," + lower.out) -- PRINT TESTING
				if model.locations.has_key ([row, lower]) then -- goes up or down at current location col

					-- TESTING if it found collisions

					model.collision_test_msg.append ("  FOUND: ") -- PRINT TESTING
					if attached model.locations.found_item as l_item then
						model.collision_test_msg.append (l_item.location_out + " id:" + l_item.id.out + " symb:" + l_item.symbol )

						------------------------
						modify_collision (l_item) -- changes values , sets alive n stuff
						------------------------

						-- STOPP BEFORE ENEMY THIS IS CHANGED AND THE VARIABLE THING IN THE UNTIL
						if stopped_before_enemy then
							model.toggle_enemy_action_msg.append("%N    " + moves_msg(row, lower + 1)) -- stops before that
							set_location (row, lower + 1)

							if not outside_board then
			--					toggle_proj_msg.append ("%N    " + proj.stats_out)
								model.grid[location.row][location.col] := symbol
								put_in_struct -- PUT INTO HASHTABLE
							end
						end
					end
					---------------------------------------------------
				else
					model.collision_test_msg.append ("  not found ") -- PRINT TESTING
				end
			end

		end

	modify_collision(l_item : ENTITY)
		do
			-- colliding with enemy proj ---------------
			if attached {ENEMY_PROJ} l_item as l_e then
				-- "The <enemy name> collides with enemy projectile(id:<id>) at location [X,Y], healing <projectile damage> damage." -- C
				collision_msg.append ("%N      The " + name + " collides with enemy projectile(id:-" + l_e.id.out + ") at location " + l_e.location_out + ", healing " + l_e.current_damage.out + " damage.")
				l_e.set_alive (false) -- remove
				current_attributes.set_health (current_attributes.health + l_e.current_damage)
				if current_attributes.health > attributes.health then
					current_attributes.set_health (attributes.health) -- put to max health
				end
			end
			-- colliding with friendly proj ----------------
			if attached {FRIENDLY_PROJ} l_item as l_f then
				--The <enemy name> collides with friendly projectile(id:<id>) at location [X,Y], taking <projectile damage - enemy armour> damage. -- C
				collision_msg.append ("%N      The " + name + " collides with friendly projectile(id:-" + l_f.id.out + ") at location " + l_f.location_out + ", taking " + ((l_f.current_damage - current_attributes.armour).max(0)).out + " damage.")
				l_f.set_alive (false) -- removed
				current_attributes.set_health (current_attributes.health - (l_f.current_damage - current_attributes.armour).max(0))
			end
			-- colliding with an enemy ---------------------
			if attached {ENEMY} l_item as l_e then
				stopped_before_enemy := True

				-- NEED TO STOP BEFORE THE ENEMY COLLISION
			end
			-- colliding with starfighter ------------------
			if attached {STARFIGHTER} l_item as l_s then
				-- The <enemy name> collides with Starfighter(id:0) at location [X,Y], trading <enemy current health> damage.
				collision_msg.append ("%N      The " + name + " collides with Starfighter(id:0) at location " + l_s.location_out + ", trading " + current_attributes.health.out + " damage.")
				set_alive (false)
				l_s.current_attributes.set_health (l_s.current_attributes.health - current_attributes.health)
				-- NEED TO APPEND DEATH MESSAGE IF ENTITY HAS BEEN DESTROYED!!!!!!!!!!!!!************************** CHECK IF STARFIGHTER DIES
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

	can_see_starfighter : BOOLEAN
		local
			starrow : INTEGER
			starcol : INTEGER
		do
			starrow := model.starfighter.location.row
			starcol := model.starfighter.location.col
			Result := False
			if
				(starrow - location.row).abs + (starcol - location.col).abs
				<= attributes.vision
			then
				Result := True -- True if enemy can see starfighter
			end
		end

	seen_by_starfighter : BOOLEAN
		local
			starrow : INTEGER
			starcol : INTEGER
		do
			starrow := model.starfighter.location.row
			starcol := model.starfighter.location.col
			Result := False
			if
				(starrow - location.row).abs + (starcol - location.col).abs
				<= model.starfighter.current_attributes.vision
			then
				Result := True -- True if enemy can see starfighter
			end
		end

feature -- Query

	stats_out : STRING
		local
			place_holder : STRING
		do
			--[1,G]->health:120/120, Regen:1, Armour:1, Vision:5, seen_by_Starfighter:F, can_see_Starfighter:F, location:[A,28]
			create Result.make_empty

			if seen_by_starfighter then
				place_holder := "T"
			else
				place_holder := "F"
			end

			Result.append ("%N    [" + id.out + "," + symbol + "]->")
			Result.append ("health:" + current_attributes.health.out + "/" + attributes.health.out + ", Regen:" + current_attributes.health_regen.out)
			Result.append (", Armour:" + current_attributes.armour.out + ", Vision:" + current_attributes.vision.out)
			Result.append (", seen_by_Starfighter:" + place_holder + ", can_see_Starfighter:")

			if can_see_starfighter then
				place_holder := "T"
			else
				place_holder := "F"
			end

			Result.append (place_holder + ", location:" + location_out)

		end

end
