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
	play(row: INTEGER_32 ; column: INTEGER_32 ; g_threshold: INTEGER_32 ; f_threshold: INTEGER_32 ; c_threshold: INTEGER_32 ; i_threshold: INTEGER_32 ; p_threshold: INTEGER_32)
		require else
			play_precond(row, column, g_threshold, f_threshold, c_threshold, i_threshold, p_threshold)
    	do
    		-- ERROR MESSAGES:
			--1. "Already in setup mode."
			--(Using play command in the setup stage.)
			--2. "Already in a game. Please abort to start a new one."
			--(Using play command when in in game state.)
			--3. "Threshold values are not non-decreasing."
			--(The five threshold numbers are not non-decreasing in the sequence from the first number to the fifth number.)

			if not model.in_setup then
				if not model.in_game then
					if -- non decreasing order
						g_threshold <= 	f_threshold and
						f_threshold <= c_threshold and
						c_threshold <= i_threshold and
						i_threshold <= p_threshold
					then

						-- Call play in model class
						model.play(row, column, g_threshold, f_threshold, c_threshold, i_threshold, p_threshold)
					else
						-- print error msg
						model.errorstate_increase ("Threshold values are not non-decreasing.")
					end
				else
					-- print error msg
					model.errorstate_increase ("Already in a game. Please abort to start a new one.")
				end
			else
				-- print error msg
				model.errorstate_increase ("Already in setup mode.")
			end



			-- perform some update on the model state
--			model.play(row, column, g_threshold, f_threshold, c_threshold, i_threshold, p_threshold) -- CHANGED
			etf_cmd_container.on_change.notify ([Current])
    	end

end
