note
	description: "Summary description for {FRIENDLY_PROJ}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	FRIENDLY_PROJ

inherit
	PROJECTILE

feature -- attributes
	move_direction : BOOLEAN -- moves right
		do
			Result := True
		end

	attributes : ATTRIBUTE_VALUES
		do
			Result := model.app.states[1].get_attributes -- sets the chosen wep attributes
		end

	friendly : BOOLEAN
		do
			Result := TRUE
		end

feature -- Queries

	move_msg(previous_location : STRING; current_location : STRING) : STRING
		do
			Result := "A friendly projectile(id:-" + id.out + ") moves: " + previous_location + " -> " + current_location
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

feature -- deferred commands
	move deferred end

end
