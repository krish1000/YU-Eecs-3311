note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_PLAY
inherit
	ETF_PLAY_INTERFACE
create
	make
feature -- command
	play(row: INTEGER_32 ; column: INTEGER_32 ; player_mov: INTEGER_32 ; project_mov: INTEGER_32)
		require else
			play_precond(row, column, player_mov, project_mov)
--		local
--			r: INTEGER
--			c: INTEGER
--			playerm: INTEGER
--			projectm: INTEGER
    	do
			-- perform some update on the model state
--			model.default_update
--			r := row.
--			c := column
			if model.ingame then
				model.errorState_increase("Please end the current game before starting a new one.") -- increase error state by 1
			else
				model.play(row, column, player_mov, project_mov)
			end
			etf_cmd_container.on_change.notify ([Current])
    	end

end
