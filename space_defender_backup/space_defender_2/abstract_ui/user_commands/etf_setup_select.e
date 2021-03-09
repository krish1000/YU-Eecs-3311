note
	description: ""
	author: "ya boi krish"
	date: "2020-11-15"
	revision: "$Revision$"

class
	ETF_SETUP_SELECT
inherit
	ETF_SETUP_SELECT_INTERFACE
create
	make
feature -- command
	setup_select(value: INTEGER_32)
		require else
			setup_select_precond(value)
    	do
			if  model.in_setup and then
				model.states_index /= 5 -- 5 is summary
			then
				if
					(attached {ENGINE_SETUP} model.app.states[model.states_index] and then value > 3)
					OR
					(attached {ARMOUR_SETUP} model.app.states[model.states_index] and then value > 4)
				then
					model.errorstate_increase ("Menu option selected out of range.") -- C
				else
					model.setup_select(value)
				end
			else
				-- print error msg
				model.errorstate_increase ("Command can only be used in setup mode. (excluding summary in setup)") -- C
			end
			-- perform some update on the model state
--			model.default_update
			etf_cmd_container.on_change.notify ([Current])
    	end

end
