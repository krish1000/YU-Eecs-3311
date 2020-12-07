note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_PASS
inherit
	ETF_PASS_INTERFACE
create
	make
feature -- command
	pass
    	do

			if model.in_game then
				model.command_msg.append ("pass")
--				model.game_update
				model.in_game_state.game_update
--				model.starfighter.pass -- doing this in game b/c of order of phases

			else
				model.errorstate_increase ("Command can only be used in game.") -- C
			end

			-- perform some update on the model state

			etf_cmd_container.on_change.notify ([Current])
    	end

end
