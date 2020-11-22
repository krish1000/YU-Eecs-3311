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
				model.starfighter.pass
			else
				model.errorstate_increase ("Command can only be used in game.") -- C
			end

			-- perform some update on the model state
			model.default_update
			etf_cmd_container.on_change.notify ([Current])
    	end

end
