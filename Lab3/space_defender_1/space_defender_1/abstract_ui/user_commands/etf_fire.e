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

			if model.ingame then
				model.call_command (create {FIRE_COMMAND}.make)
			else
				model.errorstate_increase("Not in game.")
			end

			-- perform some update on the model state
--			model.default_update
--			model.fire
			etf_cmd_container.on_change.notify ([Current])
    	end

end
