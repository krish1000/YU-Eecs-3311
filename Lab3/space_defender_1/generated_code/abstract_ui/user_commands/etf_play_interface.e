note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	ETF_PLAY_INTERFACE
inherit
	ETF_COMMAND
		redefine 
			make 
		end

feature {NONE} -- Initialization

	make(an_etf_cmd_name: STRING; etf_cmd_args: TUPLE; an_etf_cmd_container: ETF_ABSTRACT_UI_INTERFACE)
		do
			Precursor(an_etf_cmd_name,etf_cmd_args,an_etf_cmd_container)
			etf_cmd_routine := agent play(? , ? , ? , ?)
			etf_cmd_routine.set_operands (etf_cmd_args)
			if
				attached {INTEGER_32} etf_cmd_args[1] as row and then attached {INTEGER_32} etf_cmd_args[2] as column and then attached {INTEGER_32} etf_cmd_args[3] as player_mov and then attached {INTEGER_32} etf_cmd_args[4] as project_mov
			then
				out := "play(" + etf_event_argument_out("play", "row", row) + "," + etf_event_argument_out("play", "column", column) + "," + etf_event_argument_out("play", "player_mov", player_mov) + "," + etf_event_argument_out("play", "project_mov", project_mov) + ")"
			else
				etf_cmd_error := True
			end
		end

feature -- command precondition 
	play_precond(row: INTEGER_32 ; column: INTEGER_32 ; player_mov: INTEGER_32 ; project_mov: INTEGER_32): BOOLEAN
		do  
			Result := 
				         is_max_row(row)
					-- (3 <= row) and then (row <= 10)
				and then is_max_column(column)
					-- (5 <= column) and then (column <= 30)
				and then is_player_mov(player_mov)
					-- (1 <= player_mov) and then (player_mov <= 40)
				and then is_project_mov(project_mov)
					-- (1 <= project_mov) and then (project_mov <= 5)
		ensure then  
			Result = 
				         is_max_row(row)
					-- (3 <= row) and then (row <= 10)
				and then is_max_column(column)
					-- (5 <= column) and then (column <= 30)
				and then is_player_mov(player_mov)
					-- (1 <= player_mov) and then (player_mov <= 40)
				and then is_project_mov(project_mov)
					-- (1 <= project_mov) and then (project_mov <= 5)
		end 
feature -- command 
	play(row: INTEGER_32 ; column: INTEGER_32 ; player_mov: INTEGER_32 ; project_mov: INTEGER_32)
		require 
			play_precond(row, column, player_mov, project_mov)
    	deferred
    	end
end
