note
	description: "Summary description for {ARMOUR_SETUP}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ARMOUR_SETUP

inherit
	STATES

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
--		local
--			mda : ETF_MODEL_ACCESS
		do
--			model := mda.m
			select_value := 1 -- default value
			state_name := "armour setup"

			types_string_format :=
				<<"None", "Light", "Medium", "Heavy">>

			create attributes.make_empty
			-- set attribute values for each type
			set_attributes
		end

		set_attributes
			local
				l_a : ATTRIBUTE_VALUES
			do
				attributes.force (create {ATTRIBUTE_VALUES}.make, 1)
				attributes.force (create {ATTRIBUTE_VALUES}.make, 2)
				attributes.force (create {ATTRIBUTE_VALUES}.make, 3)
				attributes.force (create {ATTRIBUTE_VALUES}.make, 4)
				-- None type
				l_a := attributes[1]
				l_a.set_health(50)
				l_a.set_health_regen(1)
				l_a.set_move(1)

				-- Light type
				l_a := attributes[2]
				l_a.set_health(75)
				l_a.set_health_regen(2)
				l_a.set_armour(3)
				l_a.set_move_cost(1)

				-- Medium type
				l_a := attributes[3]
				l_a.set_health(100)
				l_a.set_health_regen(3)
				l_a.set_armour(5)
				l_a.set_move_cost(3)

				-- Heavy type
				l_a := attributes[4]
				l_a.set_health(200)
				l_a.set_health_regen(4)
				l_a.set_armour(10)
				l_a.set_move (-1)
				l_a.set_move_cost(5)

			end

feature -- Attributes
	attributes : ARRAY[ATTRIBUTE_VALUES]

feature -- Commands
	execute
		do
--			model.attributes.add_attributes (attributes[select_value])

--			model.in_game_state.attributes.add_attributes(attributes[select_value])
		end

	get_attributes : ATTRIBUTE_VALUES
		do
			Result := attributes[select_value]
		end


--	setup_s(setup_select: INTEGER)
--		do
--			-- better to have all error msgs related to setup_select in ETF_SELECT
----			if setup_select > 4 then -- error, only 4 options available
----				model.errorstate_increase ("Menu option selected out of range.")
----			else
----				select_value := setup_select
----			end
--			select_value := setup_select
--		end

feature -- Query

--	get_type : STRING
--		do
--			Result.make_empty
--			Result.append(armour_types[select_value])
--		end

	output : STRING
		local
			msg : STRING
		do
			create Result.make_empty
--			Result.append ("%N  ARMOUR")

			msg := "%N  1:None"
			    + "%N    Health:50, Energy:0, Regen:1/0, Armour:0, Vision:0, Move:1, Move Cost:0"
			  + "%N  2:Light"
			    + "%N    Health:75, Energy:0, Regen:2/0, Armour:3, Vision:0, Move:0, Move Cost:1"
			  + "%N  3:Medium"
			    + "%N    Health:100, Energy:0, Regen:3/0, Armour:5, Vision:0, Move:0, Move Cost:3"
			  + "%N  4:Heavy"
			    + "%N    Health:200, Energy:0, Regen:4/0, Armour:10, Vision:0, Move:-1, Move Cost:5"
			Result.append (msg)

--			Result.append ("%N  Armour Selected:" + armour_types[select_value])
			Result.append ("%N  Armour Selected:" + get_type)
		end

end
