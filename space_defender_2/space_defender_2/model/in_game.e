note
	description: "Summary description for {IN_GAME}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	IN_GAME

--inherit
--	STATES

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
		local
			mda : ETF_MODEL_ACCESS
		do
			model := mda.m
--			---- GRID ----
--			create grid.make_empty
--			create letter.make_empty
--			letter := <<"A","B","C","D","E","F","G","H","I","J">>
--			------
--			create attributes.make
--			create current_attributes.make
			grid := model.grid
			letter := model.letter
			attributes := model.attributes
			current_attributes := model.current_attributes
		end

feature -- attributes
	model : ETF_MODEL
	grid : ARRAY[ARRAY[STRING]]
	letter : ARRAY[STRING]
	current_attributes : ATTRIBUTE_VALUES
	attributes : ATTRIBUTE_VALUES

feature -- Commands

	reset_current_attributes
		do
			current_attributes := attributes.deep_twin
		end

feature -- Queries
	star_out: STRING -- output of starfighter attributes
		local
			ca : ATTRIBUTE_VALUES
			a : ATTRIBUTE_VALUES
		do
			ca := current_attributes
			a := attributes
			create Result.make_empty

			Result.append("%NStarfighter:")
			Result.append("%N  [0,S]->health:" + ca.health.out + "/" + a.health.out + ", energy:" + ca.energy.out + "/" + a.energy.out +
				", Regen:" + a.health_regen.out + "/" + a.energy_regen.out + ", Armour:" + a.armour.out + ", Vision:" + a.vision.out +
				", Move:" + a.move.out + ", Move Cost:" + a.move_cost.out + ", location:[FIXTHIS*]")
--		    Result.append("%N    Projectile Pattern:" + model.app.states[1].get_type + ", Projectile Damage:70, Projectile Cost:5 (energy)")
		    Result.append("%N    Power:Recall (50 energy): Teleport back to spawn.")
			Result.append("%N    score:0")
		end

	grid_out: STRING -- returns grid in string format
		do
			create Result.make_empty
			-- across loop grid and print
				if grid.count > 0 then
					Result.append ("    ") -- empty 4 at start

					-- Put the numbers ontop
					across
						1 |..| grid[1].count is l_i
					loop
						if l_i <= 9 then
							Result.append("  ")
							Result.append(l_i.out)
						else
							Result.append(" ")
							Result.append(l_i.out)
						end

					end
					Result.append ("%N")
				end

				across
					1 |..| grid.count is row_counter
				loop
					Result.append ("    ")
					Result.append (letter[row_counter]) -- adds A B C ...
					Result.append (" ")

					across
						1 |..| grid[row_counter].count is col_counter
					loop
						Result.append(grid[row_counter][col_counter])
						Result.append("  ")
					end
					Result.remove_tail (2) -- removes last 2 whitespaces
					Result.append ("%N")
				end
				Result.remove_tail (1) -- remove last %N
		end

feature -- Commands



	execute
		do

		end

--	setup_s(setup_select: INTEGER)
--		do
--			-- not used
--		end

end
