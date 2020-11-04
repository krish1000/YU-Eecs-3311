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
		local
			projectile1 : PROJECTILE -- local var to hold each proj, for ease of use
			l_index : INTEGER -- declaring local var for loop
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
--					 THIS WONT WORK... NEED A SEPERATE UNDO FOR PROJECTILES **** DO THIS
--					 DOOOOOOO THISSSSSSSSSSSS


						from
							l_index := model.projectiles.upper
						until
							l_index < model.projectiles.lower
						loop
							projectile1 := model.projectiles[l_index] -- setting temp var

							-- decrease states alive counter for all projectiles
							projectile1.states_alive_add(-1)


--							FIGURE OUT HOW TO PRINT ERROR SHIEZ FOR AT010.txt
--							if -- projectile was previously outside grid, but now moved back into grid
----								projectile1.states_alive_counter + 1 < projectile1.max_state
----								AND
--								(projectile1.location.cy + (projectile1.states_alive_counter + 1)*model.project_m) > model.grid[1].upper-- was outside of grid now
--								AND
--								(projectile1.location.cy + (projectile1.states_alive_counter)*model.project_m) <= model.grid[1].upper
--							then
--								model.projectile_msg_append("%NA projectile moves: " + model.coordinate_out(projectile1.location.cx, projectile1.location.cy + (projectile1.states_alive_counter)*model.project_m)
--									+ " -> out of board")
--									model.grid[projectile1.location.cx][projectile1.location.cy + projectile1.states_alive_counter*model.project_m] := "*"
							if
	--							(projectile1.location.cy*projectile1.states_alive_counter*model.project_m > 0 AND projectile1.location.cy*projectile1.states_alive_counter*model.project_m <= model.grid[1].count)
								(projectile1.location.cy + projectile1.states_alive_counter*model.project_m) <= model.grid[1].count
								-- grid[1] will always work due to error check done before in ETF_FIRE and precond in ETF_PLAY
							then
								-- remove previous location
								if (projectile1.location.cy + (projectile1.states_alive_counter + 1)*model.project_m) <= model.grid[1].count then -- check if previous location was in grid
									model.grid[projectile1.location.cx][projectile1.location.cy + (projectile1.states_alive_counter + 1)*model.project_m] := "_"
--									model.projectile_msg_append("%NA projectile moves: " + model.coordinate_out(projectile1.location.cx, projectile1.location.cy + (projectile1.states_alive_counter)*model.project_m)
--										+ " -> " + model.coordinate_out(projectile1.location.cx, projectile1.location.cy + (projectile1.states_alive_counter + 1)*model.project_m))


								end
								-- print the projectile in previous location
									model.grid[projectile1.location.cx][projectile1.location.cy + projectile1.states_alive_counter*model.project_m] := "*"

							end
--							model.cmd_msg_update (model.cmd_msg + "%Nl_index " + l_index.out)
							-- decrease l_index counter
							l_index := l_index - 1
						end

						if model.projcursor > 1 then
							model.projcursor_add (-1) -- moveback 1 in history
							model.projectile_msg_append (model.projectile_history_msg[model.projcursor])
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
