	note
	description: "Summary description for {PASS_COMMAND}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	PASS_COMMAND

inherit
	COMMANDS_MODEL

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
		local
			mda : ETF_MODEL_ACCESS
		do
			model := mda.m
			create previous_msg.make_empty
		end

feature -- Attributes
	previous_msg : STRING -- holds previous command msg
	model : ETF_MODEL
--	previous_location : STRING

feature -- Commands

	execute
		do
			previous_msg := model.cmd_msg
			model.cmd_msg_update("The Starfighter stays at: " + model.location_out)
		end

	undo
		do
			-- undos projectiles movements
			model.cmd_msg_update (previous_msg)
		end

end
