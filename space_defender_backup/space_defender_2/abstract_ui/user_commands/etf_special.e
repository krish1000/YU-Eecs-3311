note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_SPECIAL
inherit
	ETF_SPECIAL_INTERFACE
create
	make
feature -- command
	special
    	do
    		if model.in_game then
				if
					enough_resources
				then
					model.command_msg.append ("special")
--					model.game_update
					model.in_game_state.game_update
--					model.starfighter.special

				else
					model.errorstate_increase ("Not enough resource to fire.") -- C
				end
			else
				model.errorstate_increase ("Command can only be used in game.") -- C
			end
			-- perform some update on the model state
--			model.default_update
			etf_cmd_container.on_change.notify ([Current])
    	end

	enough_resources : BOOLEAN
		local
			la : ATTRIBUTE_VALUES
			ca : ATTRIBUTE_VALUES
			selected_value : INTEGER
		do
			la := model.starfighter.attributes
			ca := model.starfighter.current_attributes
			selected_value := model.app.states[4].select_value
			Result := False

			if selected_value = 1 then -- recall 50 energy
				if ca.energy >= 50 then
					Result := True
				end
			elseif selected_value = 2 then -- repair 50 energy
				if ca.energy >= 50 then
					Result := True
				end
			elseif selected_value = 3 then -- overcharge up to 50 hp
				-- DO THIS*******************************************************
			elseif selected_value = 4 then -- deploy drones 100 energy
				if ca.energy >= 100 then
					Result := True
				end
			elseif selected_value = 5 then -- orbital strik 100 energy
				if ca.energy >= 100 then
					Result := True
				end
			end

		end
end
