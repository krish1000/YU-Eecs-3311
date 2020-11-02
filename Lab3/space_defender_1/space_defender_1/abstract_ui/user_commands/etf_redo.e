note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_REDO
inherit
	ETF_REDO_INTERFACE
create
	make
feature -- command
	redo
    	do
    		if model.ingame then
				if
					model.gcursor + 1 <= model.history.count
				then
					model.cursor_add (1) -- move 1 forward in history
					model.history[model.gcursor].execute -- re-execute the command

					model.state_increase -- have to go foward 1 state

					model.projectile_move (1) -- move DEM PROJECTILES FORWARD
--					across
--						model.projectiles is projectile1
--					loop
--						-- increase states alive counter for all projectiles
--						projectile1.states_alive_add(1)
--						if
--							(projectile1.location.cy*projectile1.states_alive_counter*model.project_m > 0 AND projectile1.location.cy*projectile1.states_alive_counter*model.project_m <= model.grid[1].count)
--							-- grid[1] will always work due to error check done before in ETF_FIRE and precond in ETF_PLAY
--						then
--							-- remove previous location
--							model.grid[projectile1.location.cx][projectile1.location.cy*(projectile1.states_alive_counter - 1)*model.project_m] := "_"
--							-- print the projectile
--							model.grid[projectile1.location.cx][projectile1.location.cy*projectile1.states_alive_counter*model.project_m] := "*"
--						end
--					end
				else
					model.errorstate_increase("Nothing left to redo.")
				end
			else
				model.errorstate_increase("Not in game.")
			end

			-- perform some update on the model state
--			model.default_update
			etf_cmd_container.on_change.notify ([Current])
    	end

end
