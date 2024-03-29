note
	description: "Summary description for {FIRE_COMMAND}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	FIRE_COMMAND

inherit
	COMMANDS_MODEL

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
		local
			mda: ETF_MODEL_ACCESS
		do
			model := mda.m
			create projectile1.make(model.starfighter_location.cx, model.starfighter_location.cy + 1)
			-- +1 column because projectile spawns infront of starfighter
			create previous_msg.make_empty -- might need to set previous msg here rather than execute?*****
		end

feature -- Attributes
	projectile1 : PROJECTILE
	model: ETF_MODEL
	previous_msg : STRING
feature -- Commands

	execute
		require else
			starfighter_location_within_grid:
				model.starfighter_location.cx <= model.grid.upper
				AND
				model.starfighter_location.cy <= model.grid[1].upper
		do
			previous_msg := model.cmd_msg -- stores previous command msg

			if
--				(projectile1.location.cx > 0 AND projectile1.location.cx <= model.grid.count)
--				OR
				(projectile1.location.cy > 0 AND projectile1.location.cy <= model.grid[1].upper)
				-- grid[1] will always work due to error check done before in ETF_FIRE and precond in ETF_PLAY
			then
				-- print the projectile
				model.grid[projectile1.location.cx][projectile1.location.cy] := "*"
				-- add to array
--				model.projectiles.force(projectile1, model.projectiles.count)
					-- call_command will take care of remove, *** MAybE NOT? undo takecares

			else
				-- dont print
				-- do nothing
			end
			-- prints msg
			model.cmd_msg_update ("The Starfighter fires a projectile at: " + model.coordinate_out (projectile1.location.cx, projectile1.location.cy - 1))

--			model.projcursor_add(1) ******* REMOVED
--			model.projectiles.force (projectile1, model.projcursor) -- adding to models array***
			model.projectiles.force (projectile1, model.projectiles.count) -- using this instead
		end

	undo
		do
			if
--				(projectile1.location.cx > 0 AND projectile1.location.cx <= model.grid.count)
--				OR
				(projectile1.location.cy > 0 AND projectile1.location.cy <= model.grid[1].upper)
				-- grid[1] will always work due to error check done before in ETF_FIRE and precond in ETF_PLAY
			then
			model.grid[projectile1.location.cx][projectile1.location.cy] := "_"
			end
--			if model.projectiles.count > 0 then
--				model.projectiles.remove_tail(1) -- removes last projectile
--			end
			model.projectiles.remove_tail (1) -- HCECK IF THIS WORKS***************88
			-- removes last added projectile, which will be this current projectil during run time
--			model.projcursor_add(-1) *********** REMOVED

			model.cmd_msg_update(previous_msg)
		end

end
