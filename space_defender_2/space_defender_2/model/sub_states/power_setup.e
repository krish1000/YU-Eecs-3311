note
	description: "Summary description for {POWER_SETUP}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	POWER_SETUP

inherit
	STATES

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
		do
			select_value := 1 -- default value
			state_name := "power setup"

			types_string_format :=
				<<"Recall (50 energy): Teleport back to spawn.",
				  "Repair (50 energy): Gain 50 health, can go over max health. Health regen will not be in effect if over cap.",
  				  "Overcharge (up to 50 health): Gain 2*health spent energy, can go over max energy. Energy regen will not be in effect if over cap.",
  				  "Deploy Drones (100 energy): Clear all projectiles.",
				  "Orbital Strike (100 energy): Deal 100 damage to all enemies, affected by armour.">>
		end

feature -- Attribute
--	power_types : ARRAY[STRING]

feature -- Commands
	execute
		do

		end

	get_attributes : ATTRIBUTE_VALUES
		do
			create result.make -- no attributes for this class
		end
--	setup_s(setup_select: INTEGER)
--		do

--		end

feature -- Query
	output : STRING
		local
			msg : STRING
			counter : INTEGER
		do
			create Result.make_empty
			create msg.make_empty

--			Result.append("%N  POWER")

			-- Creates output msg for power
			counter := 1
			across
				types_string_format is l_s -- was power_types before change
			loop
				msg.append ("%N  " + counter.out + ":")
				msg.append (l_s)
				counter := counter + 1
			end

			Result.append (msg)

			--Selected power type
			Result.append ("%N  Power Selected:" + get_type)

		end

end
