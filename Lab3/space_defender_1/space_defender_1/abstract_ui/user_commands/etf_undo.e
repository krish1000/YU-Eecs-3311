note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_UNDO
inherit
	ETF_UNDO_INTERFACE
create
	make
feature -- command
	undo
    	do
			if model.ingame then
				if
--					model.history.count > 0
					model.gcursor > 0 -- if its at start then nothing left
				then
					model.history[model.gcursor].undo
					model.cursor_add (-1) -- move 1 back in history
					model.state_decrease -- have to go back 1 state

					--- PROJECTILES
--					model.projectile_move(-1) -- subtract 1 state to all projectiles
					-- THIS WONT WORK... NEED A SEPERATE UNDO FOR PROJECTILES **** DO THIS
					-- DOOOOOOO THISSSSSSSSSSSS
					across
						model.projectiles is projectile1
					loop
						-- dencrease states alive counter for all projectiles
						projectile1.states_alive_add(-1)
						if
--							(projectile1.location.cy*projectile1.states_alive_counter*model.project_m > 0 AND projectile1.location.cy*projectile1.states_alive_counter*model.project_m <= model.grid[1].count)
							(projectile1.location.cy + projectile1.states_alive_counter*model.project_m) <= model.grid[1].count
							-- grid[1] will always work due to error check done before in ETF_FIRE and precond in ETF_PLAY
						then
							-- remove previous location
							if (projectile1.location.cy + (projectile1.states_alive_counter + 1)*model.project_m) <= model.grid[1].count then -- check if previous location was in grid
								model.grid[projectile1.location.cx][projectile1.location.cy + (projectile1.states_alive_counter + 1)*model.project_m] := "_"
							end
							-- print the projectile in previous location
								model.grid[projectile1.location.cx][projectile1.location.cy + projectile1.states_alive_counter*model.project_m] := "*"

						end
					end

				else
					model.errorstate_increase("Nothing left to undo.")
				end
			else
				model.errorstate_increase("Not in game.")
			end


			-- perform some update on the model state
--			model.default_update
			etf_cmd_container.on_change.notify ([Current])
    	end

end
