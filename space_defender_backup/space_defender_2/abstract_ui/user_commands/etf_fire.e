note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_FIRE
inherit
	ETF_FIRE_INTERFACE
create
	make
feature -- command
	fire
    	do

    		if model.in_game then
				if projectile_enough_resources then
					model.command_msg.append ("fire")
--					model.game_update
					model.in_game_state.game_update
--					model.starfighter.fire

				else
					model.errorstate_increase ("Not enough resources to fire.") -- C
				end
			else
				model.errorstate_increase ("Command can only be used in game.") -- C
			end


			-- perform some update on the model state

			etf_cmd_container.on_change.notify ([Current])
    	end

feature {NONE}

	projectile_enough_resources : BOOLEAN
		local
			la : ATTRIBUTE_VALUES
			ca : ATTRIBUTE_VALUES
		do
			la := model.starfighter.attributes
			ca := model.starfighter.current_attributes
			Result := False

			if la.projectile_cost_type then -- health if true
				if
					model.starfighter.attributes.projectile_cost <=
					model.starfighter.attributes.health_regen + model.starfighter.current_attributes.health
				then
					Result := True
				end
			else -- energy if false
				if
					model.starfighter.attributes.projectile_cost <=
					model.starfighter.attributes.energy_regen + model.starfighter.current_attributes.energy
				then
					Result := True
				end
			end
		end

end
