note
	description: "Summary description for {PROJECTILE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	PROJECTILE

inherit
	ENTITY
--	undefine
--		current_attributes
--	end

feature -- attributes

	-- OLD ATTRIBUTES FOR WHEN PROJECTILE WAS HIGHEST ANCESTOR
	status : STRING
--	id : INTEGER -- Projectile ID, initalized when created
--	attributes : ATTRIBUTE_VALUES deferred end
	current_damage : INTEGER -- dmg can change for some entity' projectiles e.g FIGHTER
	move_distance : INTEGER
--	alive : BOOLEAN
	friendly : BOOLEAN deferred end -- true for friendly, false for enemy

--	location : TUPLE[row: INTEGER; col: INTEGER] -- projectile current location
--	model : ETF_MODEL
--		local
--			mda : ETF_MODEL_ACCESS
--		do
--			Result := mda.m
--		end

feature -- deferred commands
	move deferred end

feature -- commands
--	set_location (row: INTEGER; col: INTEGER)
--		do
--			location := [row, col]
--		end

	set_move_distance (distance : INTEGER)
		do
			move_distance := distance
		end

	set_current_damage (damage : INTEGER)
		do
			current_damage := damage
		end

	set_id
		do
			id := model.projectiles.count + 1
		end

	set_status(s : STRING)
		do
			status := s
		end

--	spawn_collision(row : INTEGER; col : INTEGER) -- NONE
--		do
--			set_location (row, col)
----			model.add_projectile (Current)

--			-- COllision with projectiles n stuff
--			if model.locations.has_key ([location.row, location.col]) then -- Entity exists in the spawning location, either friendlyproj/enemyproj/starfighter
--				if attached {ENTITY} model.locations.found_item as l_item then
--					modify_collision (l_item)
--				end
--			end

--			if alive and not outside_board then
--				model.grid[location.row][location.col] := symbol -- UPDATE grid
--				put_in_struct
--			end

----			model.toggle___.append (collision_msg)

--		end

	spawn_collision-- NONE
		do
--			set_location (row, col)
			model.add_projectile (Current)

			-- COllision with projectiles n stuff
			if model.locations.has_key ([location.row, location.col]) then -- Entity exists in the spawning location, either friendlyproj/enemyproj/starfighter
				if attached {ENTITY} model.locations.found_item as l_item then
					modify_collision (l_item)
				end
			end

			if alive and not outside_board then
				model.grid[location.row][location.col] := symbol -- UPDATE grid
				put_in_struct
			end

--			model.toggle___.append (collision_msg)

		end

feature -- Query
--	outside_board : BOOLEAN
--		do
--			Result := False -- Projectile is inside board
--			if
--				location.row < 1 OR
--				location.row > model.grid.count OR
--				location.col < 1 OR
--				location.col > model.grid[1].count
--			then
--				Result := TRUE -- Projectile is outside of the board
--			end
--		end

--	location_out : STRING
--		do
--			create Result.make_empty
--			Result.append ("[" + model.letter[location.row] + "," + location.col.out + "]")
--		end

	stats_out : STRING
		deferred end
--	status : STRING
--		deferred end
end

-- make hashtable with locations of all entities
