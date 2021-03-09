note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_SETUP_NEXT
inherit
	ETF_SETUP_NEXT_INTERFACE
create
	make
feature -- command
	setup_next(state: INTEGER_32)
		require else
			setup_next_precond(state)
    	do

    		if  model.in_setup then
--				model.update_states_index(model.app.transition.item (model.states_index, state))
				-- change state index to the new stateindex, dependent on input state param
				model.setup_next(state)
			else
				-- print error msg
				model.errorstate_increase ("Command can only be used in setup mode.") -- C
			end

			-- perform some update on the model state
--			model.default_update
			etf_cmd_container.on_change.notify ([Current])
    	end

end
