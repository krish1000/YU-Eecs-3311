note
	description: "Summary description for {PROJECTILE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	PROJECTILE

feature -- attributes
	status : STRING
	id : INTEGER -- Projectile ID, initalized when created
	current_damage : INTEGER -- dmg can change for some entity' projectiles e.g FIGHTER
	move_distance : INTEGER

	friendly : BOOLEAN deferred end -- true for friendly, false for enemy
	attributes : ATTRIBUTE_VALUES deferred end


--	move_direction : BOOLEAN -- False goes left (enemy), True goes right (starfighter)
	location : TUPLE[row: INTEGER; col: INTEGER] -- projectile current location
	model : ETF_MODEL
		local
			mda : ETF_MODEL_ACCESS
		do
			Result := mda.m
		end

feature -- deferred commands
	move deferred end

feature -- commands
	set_location (row: INTEGER; col: INTEGER)
		do
			location := [row, col]
		end

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

feature -- Query
	outside_board : BOOLEAN
		do
			Result := False -- Projectile is inside board
			if
				location.row < 1 OR
				location.row > model.grid.count OR
				location.col < 1 OR
				location.col > model.grid[1].count
			then
				Result := TRUE -- Projectile is outside of the board
			end
		end

	location_out : STRING
		do
			create Result.make_empty
			Result.append ("[" + model.letter[location.row] + "," + location.col.out + "]")
		end

	stats_out : STRING
		deferred end
--	status : STRING
--		deferred end
end
