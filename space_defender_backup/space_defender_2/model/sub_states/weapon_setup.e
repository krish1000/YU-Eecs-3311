note
	description: "Summary description for {WEAPON_SETUP}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	WEAPON_SETUP

inherit
	STATES

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
		do
			select_value := 1 -- default value
			state_name := "weapon setup"

			types_string_format :=
				<<"Standard", "Spread", "Snipe", "Rocket", "Splitter">>

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
			attributes.force (create {ATTRIBUTE_VALUES}.make, 5)

			-- Standard type
			l_a := attributes[1]
			l_a.set_health(10)
			l_a.set_energy(10)
			l_a.set_energy_regen(1)
			l_a.set_vision(1)
			l_a.set_move(1)
			l_a.set_move_cost(1)

			l_a.set_projectile_dmg(70)
			l_a.set_projectile_cost(5)

			-- Spread type
			l_a := attributes[2]
			l_a.set_energy(60)
			l_a.set_energy_regen(2)
			l_a.set_armour (1)
			l_a.set_move_cost(2)

			l_a.set_projectile_dmg(50)
			l_a.set_projectile_cost(10)

			-- Snipe type
			l_a := attributes[3]
			l_a.set_energy(100)
			l_a.set_energy_regen(5)
			l_a.set_vision(10)
			l_a.set_move(3)

			l_a.set_projectile_dmg(1000)
			l_a.set_projectile_cost(20) -- ENERGY

			-- Rocket type
			l_a := attributes[4]
			l_a.set_health(10)
			l_a.set_health_regen(10)
			l_a.set_armour (2)
			l_a.set_vision(2)
			l_a.set_move_cost(3)

			l_a.set_projectile_dmg(100)
			l_a.set_projectile_cost(10) -- HEALTH***** FIX THIS
			l_a.set_projectile_cost_type(TRUE)
			--**********************FIXXXXXXXXXXX*****************
			-- Splitter type
			l_a := attributes[5]
			l_a.set_energy (100)
			l_a.set_energy_regen(10)
			l_a.set_move_cost(5)

			l_a.set_projectile_dmg(150)
			l_a.set_projectile_cost(70) -- ENERGY
		end
feature -- Attributes
--	wep_types : ARRAY[STRING]
	attributes : ARRAY[ATTRIBUTE_VALUES]

feature -- Commands
	execute
		do
--			model.attributes.add_attributes (attributes[select_value])
--			model.starfighter.attributes.add_attributes (attributes[select_value])
		end

	get_attributes : ATTRIBUTE_VALUES
		do
			Result := attributes[select_value]
		end

--	setup_s(setup_select: INTEGER)
--		require else
--			setup_select > 0 and setup_select < 6
--		do
--			select_value := setup_select
--		end

feature -- Query
	output : STRING
		local
			msg : STRING
		do
			create Result.make_empty
--			Result.append ("%N  WEP")
			msg := "%N  1:Standard (A single projectile is fired in front)"
    			+ "%N    Health:10, Energy:10, Regen:0/1, Armour:0, Vision:1, Move:1, Move Cost:1,"
    			+ "%N    Projectile Damage:70, Projectile Cost:5 (energy)"
  				+ "%N  2:Spread (Three projectiles are fired in front, two going diagonal)"
    			+ "%N    Health:0, Energy:60, Regen:0/2, Armour:1, Vision:0, Move:0, Move Cost:2,"
    			+ "%N    Projectile Damage:50, Projectile Cost:10 (energy)"
  				+ "%N  3:Snipe (Fast and high damage projectile, but only travels via teleporting)"
    			+ "%N    Health:0, Energy:100, Regen:0/5, Armour:0, Vision:10, Move:3, Move Cost:0,"
    			+ "%N    Projectile Damage:1000, Projectile Cost:20 (energy)"
  				+ "%N  4:Rocket (Two projectiles appear behind to the sides of the Starfighter and accelerates)"
    			+ "%N    Health:10, Energy:0, Regen:10/0, Armour:2, Vision:2, Move:0, Move Cost:3,"
    			+ "%N    Projectile Damage:100, Projectile Cost:10 (health)"
  				+ "%N  5:Splitter (A single mine projectile is placed in front of the Starfighter)"
    			+ "%N    Health:0, Energy:100, Regen:0/10, Armour:0, Vision:0, Move:0, Move Cost:5,"
    			+ "%N    Projectile Damage:150, Projectile Cost:70 (energy)"
			Result.append (msg)

			--Wep type out
			Result.append ("%N  Weapon Selected:" + get_type)
		end

end
