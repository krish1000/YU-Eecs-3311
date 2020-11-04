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
    		if model.ingame then
				model.call_command (create {PASS_COMMAND}.make)
			else
				model.errorstate_increase("Not in game.")
			end


			-- perform some update on the model state
--			model.default_update
--			model.pass -- i ADDED
			etf_cmd_container.on_change.notify ([Current])
    	end

end
