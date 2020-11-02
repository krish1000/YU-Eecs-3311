note
	description: "Summary description for {MOVE_COMMAND}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	MOVE_COMMAND

inherit
	COMMANDS_MODEL

create
	make

feature {NONE} -- Initialization

	make(row: INTEGER; column: INTEGER)
			-- Initialization for `Current'.
		local
			mda : ETF_MODEL_ACCESS -- get access to model
		do
			model := mda.m -- set attribute model to the same original instance model taken from mda.m (using once, expanded)
			l_row := row
			l_col := column
			create original_starfighter_location
			create previous_msg.make_empty
		end

feature {NONE} -- private attributes
	model: ETF_MODEL
	l_row: INTEGER
	l_col: INTEGER
	original_starfighter_location: TUPLE[cx: INTEGER; cy: INTEGER]
	previous_msg : STRING
feature -- commands

	execute
		do
			original_starfighter_location := model.starfighter_location -- sets original so we can use for undo later
			previous_msg := model.cmd_msg -- stores previous command msg
			-----------------------
			-- assuming no projectiles****:


			model.grid[model.starfighter_location.cx][model.starfighter_location.cy] := "_" -- replace S with "_", no longer there
			model.grid[l_row][l_col] := "S" -- place S anchor
			model.cmd_msg_update("%NThe Starfighter moves: "
					+ model.location_out + " -> [" + model.letter[l_row] + "," + l_col.out + "]")
			model.starfighter_location_update (l_row, l_col)
		end

	undo
		do
			model.grid[l_row][l_col] := "_" -- replace S with "_", no longer there
			model.starfighter_location_update (original_starfighter_location.cx, original_starfighter_location.cy) -- move back to original location
			model.grid[original_starfighter_location.cx][original_starfighter_location.cy] := "S" -- place S anchor
			model.cmd_msg_update(previous_msg)
		end


end
