note
	description: "Summary description for {ENGINE_SETUP}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ENGINE_SETUP

inherit
	STATES

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
		do
			select_value := 1 -- default value
			state_name := "engine setup"

			types_string_format :=
				<<"Standard", "Light", "Armoured">>

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

			-- Standard type
			l_a := attributes[1]
			l_a.set_health(10)
			l_a.set_energy(60)
			l_a.set_energy_regen(2)
			l_a.set_armour(1)
			l_a.set_vision(12)
			l_a.set_move(8)
			l_a.set_move_cost(2)

			-- Light type
			l_a := attributes[2]
			l_a.set_energy(30)
			l_a.set_energy_regen(1)
			l_a.set_vision(15)
			l_a.set_move(10)
			l_a.set_move_cost(1)

			-- Armoured type
			l_a := attributes[3]
			l_a.set_health(50)
			l_a.set_energy(100)
			l_a.set_energy_regen(3)
			l_a.set_armour(3)
			l_a.set_vision(6)
			l_a.set_move(4)
			l_a.set_move_cost(5)
		end

feature -- Attributes
--	engine_types : ARRAY[STRING]
	attributes : ARRAY[ATTRIBUTE_VALUES]
feature -- Commands
	execute
		local

		do
--			model.attributes.add_attributes (attributes[select_value])
--			model.starfighter.attributes.add_attributes (attributes[select_value])
--			model.in_game_state.attributes.add_attributes(attributes[select_value])
		end

	get_attributes : ATTRIBUTE_VALUES
		do
			Result := attributes[select_value]
		end

--	setup_s(setup_select: INTEGER)
--		do

--		end

feature -- Query

	output : STRING
		local
			msg : STRING
		do
			create Result.make_empty
--			Result.append("%N  ENGINE")

			msg := "%N  1:Standard"
		    +"%N    Health:10, Energy:60, Regen:0/2, Armour:1, Vision:12, Move:8, Move Cost:2"
		  +"%N  2:Light"
		    +"%N    Health:0, Energy:30, Regen:0/1, Armour:0, Vision:15, Move:10, Move Cost:1"
		  +"%N  3:Armoured"
		    +"%N    Health:50, Energy:100, Regen:0/3, Armour:3, Vision:6, Move:4, Move Cost:5"

			Result.append(msg)

			Result.append ("%N  Engine Selected:" + get_type)
		end

end
