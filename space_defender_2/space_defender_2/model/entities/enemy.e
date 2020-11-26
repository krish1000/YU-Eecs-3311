note
	description: "Summary description for {ENEMY}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	ENEMY

inherit
	ENTITY

feature -- Attributes
--	name : STRING
--	symbol : STRING
--	id : INTEGER

feature -- deferred
	execute deferred end

feature -- Commands

	move (distance: INTEGER)
		local
--			s : STRING
		do
			if not outside_board then -- current inside board
				model.grid[location.row][location.col] := "_" -- replace previous position

				-- for now just moving by distance
--				s := "%N    "
				model.toggle_enemy_action_msg.append("%N    " + moves_msg(location.row, location.col - distance))
				set_location (location.row, location.col - distance)

				if not outside_board then
--					toggle_proj_msg.append ("%N    " + proj.stats_out)
					model.grid[location.row][location.col] := symbol
				end

				-- NEED TO DO COLLISION CHECKING HERE AS WELL***********8
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
