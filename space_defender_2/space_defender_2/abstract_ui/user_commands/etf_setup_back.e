note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_SETUP_BACK
inherit
	ETF_SETUP_BACK_INTERFACE
create
	make
feature -- command
	setup_back(state: INTEGER_32)
		require else
			setup_back_precond(state)
    	do
			if  model.in_setup then

				-- change state index to the new stateindex, dependent on input state param
				model.setup_back(state)
			else
				-- print error msg
				model.errorstate_increase ("Command can only be used in setup mode.") -- C
			end

			-- perform some update on the model state
--			model.default_update
			etf_cmd_container.on_change.notify ([Current])
    	end

end
