note
	description: "Summary description for {PROJECTILE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	PROJECTILE

feature -- attributes

	current_damage : INTEGER -- dmg can change for some entity' projectiles e.g FIGHTER
	move_direction : BOOLEAN -- False goes left (enemy), True goes right (starfighter)
	location : TUPLE[row: INTEGER; col: INTEGER] -- projectile current location
	model : ETF_MODEL
		local
			mda : ETF_MODEL_ACCESS
		do
			Result := mda.m
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

end
