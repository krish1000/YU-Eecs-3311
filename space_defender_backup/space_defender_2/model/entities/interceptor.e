note
	description: "Summary description for {INTERCEPTOR}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	INTERCEPTOR

inherit
	ENEMY

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
		do
			set_variables
			stopped_before_enemy := False
			alive:= True
			previously_alive := False
			name := "Interceptor"
			symbol := "I"
			id := model.enemies.count + 1
			create location
			-- Set attributes
			create attributes.make
			-- HP 50, regen 0, armour 0, vision 5
			attributes.set_health (50)
			attributes.set_health_regen (0)
			attributes.set_armour (0)
			attributes.set_vision (5)

			create current_attributes.make
			reset_current_attributes -- current_attributes := attributes.deep_twin
--			current_attributes.set_projectile_dmg (100) -- no projectiles

			dont_move := False
			-- PUTS INTO HASHTABLE IN MODEL
--			put_in_struct
		end

feature -- Attributes
	dont_move : BOOLEAN

feature -- Commands

	set_dont_move
		do
			dont_move := True
		end

	execute
		do
			if not dont_move then
				if not model.command_msg.is_equal ("fire") then -- ENDS TURN ON PASS
					regen

					if can_see_starfighter then
						seen
					else
						not_seen
					end
				end
			else
				dont_move := False
			end
		end

	preemptive_action
		do
			if model.command_msg.is_equal("fire") then
				fire
			end
		end

	not_seen

		do
			move(3) -- 3 left

		end
	seen

		do
			move(3) --left

		end

	fire -- NONE
		do
			regen -- b/c ends turn

			-- Case 1, rows not equal, try to move interceptor to same row
			if model.starfighter.location.row /= location.row then
				move_to_specific (model.starfighter.location.row, location.col) -- moves vertically to starfighter row

			-- Case 2, rows same, try to collide with starfighter, and starfighter has to be left of intercept
			elseif
				model.starfighter.location.row = location.row
				and
				model.starfighter.location.col < location.col
			then
				move_to_specific (location.row, model.starfighter.location.col) --
				-- moves horizontally to starfighter col
 			end

			-- END TURN
		end

	move_to_specific(row : INTEGER; col: INTEGER) -- NONE
		do
			if not outside_board then -- current inside board
				model.grid[location.row][location.col] := "_" -- replace previous position
				remove_from_struct -- REMOVE FROM HASHTABLE
				collision (row, col)

				if alive and not stopped_before_enemy then
					model.toggle_enemy_action_msg.append("%N    " + moves_msg(row, col))
					set_location (row, col)

					if not outside_board then
	--					toggle_proj_msg.append ("%N    " + proj.stats_out)
						model.grid[location.row][location.col] := symbol
						put_in_struct -- PUT INTO HASHTABLE
					end

					-- NEED TO DO COLLISION CHECKING HERE AS WELL***********8
				end

				if stopped_before_enemy then
					stopped_before_enemy := false
				end
				model.toggle_enemy_action_msg.append (collision_msg) -- ADDS COLLISION MSG
			end
		end


---- Queries

--	enemy_action(proj : ENEMY_PROJ)
--		local
--			msg : STRING
--		do
--			if not proj.outside_board then -- print on grid
--				model.grid[proj.location.row][proj.location.col] := "<"


--				-- THESE 2 LINES WERE UNCOMMENTED 2020-12-05
----				msg := "A enemy projectile(id:-" + proj.id.out +") spawns at location " + proj.location_out + "." -- C

--				-- ADDING THE PROJECTILE MSG AS SOON AS FIRED
----				model.toggle_proj_msg.append ("%N    " + proj.stats_out)
--			else
--				-- dont print
----				msg := "OUTSIDEEE DA THING"
--			end


--		end
end
