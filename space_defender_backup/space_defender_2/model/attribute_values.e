note
	description: "Summary description for {ATTRIBUTE_VALUES}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ATTRIBUTE_VALUES

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
		do
			-- do nothing for now
			projectile_cost_type := False -- initalized as energy cost
		end

feature -- Starfighter Attributes
	health : INTEGER
	energy : INTEGER
	health_regen : INTEGER
	energy_regen : INTEGER
	armour : INTEGER
	vision : INTEGER
	move : INTEGER
	move_cost : INTEGER

	projectile_dmg : INTEGER
	projectile_cost : INTEGER
	projectile_cost_type : BOOLEAN -- True is health, False is energy

feature -- Queries
	get_projectile_cost_type : STRING
		do
			Result := "energy"
			if projectile_cost_type then
				Result := "health"
			end
		end

feature -- Commands
	set_projectile_dmg(x : INTEGER)
		do
			projectile_dmg := x
		end

	set_projectile_cost(x : INTEGER)
		do
			projectile_cost := x
		end

	set_projectile_cost_type(x : BOOLEAN)
		do
			projectile_cost_type := x
		end

	set_health(x : INTEGER)
		do
			health := x
		end

	set_energy(x : INTEGER)
		do
			energy := x
		end

	set_health_regen(x : INTEGER)
		do
			health_regen := x
		end

	set_energy_regen(x : INTEGER)
		do
			energy_regen := x
		end

	set_armour(x : INTEGER)
		do
			armour := x
		end

	set_vision(x : INTEGER)
		do
			vision := x
		end

	set_move(x : INTEGER)
		do
			move := x
		end

	set_move_cost(x : INTEGER)
		do
			move_cost := x
		end

feature -- updates
	-- mainly used for starfighter
	add_attributes(l_a : ATTRIBUTE_VALUES)
		do
			health := health + l_a.health
			energy := energy + l_a.energy
			health_regen := health_regen + l_a.health_regen
			energy_regen := energy_regen + l_a.energy_regen
			armour := armour + l_a.armour
			vision := vision + l_a.vision
			move := move + l_a.move
			move_cost := move_cost + l_a.move_cost

			projectile_dmg := projectile_dmg + l_a.projectile_dmg
			projectile_cost := projectile_cost + l_a.projectile_cost
			if not projectile_cost_type then
				projectile_cost_type := l_a.projectile_cost_type -- so if one of them is true, it remains true - for starfighter
			end

		end

feature -- Queries
--	projectile_enough_resources : BOOLEAN
--		do
--			
--		end

	output : STRING
		do
			--
			create Result.make_empty -- nothing yet
		end
end
