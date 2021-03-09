note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_ABORT
inherit
	ETF_ABORT_INTERFACE
create
	make
feature -- command
	abort
    	do
    		if model.in_game or model.in_setup then
    			if model.toggle_debug then
    				model.reset
					model.abort
--					model.s
					model.set_toggle_debug (True)
				else
					model.reset
					model.abort
					model.set_toggle_debug (False) -- dont really need i think
    			end

    		else
				-- print error msg
				model.errorstate_increase ("Command can only be used in setup mode or in game.")
			end

			-- perform some update on the model state
--			model.default_update
			etf_cmd_container.on_change.notify ([Current])
    	end

end
