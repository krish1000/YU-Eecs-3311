note
	description: "Summary description for {COMMANDS_MODEL}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	COMMANDS_MODEL

--create
--	make
--feature {NONE} -- Initialization
--	make
--		local
--			mda : ETF_MODEL_ACCESS
--		do
--			model := mda.m
--		end

feature -- Commands

--	history : LINKED_LIST[COMMANDS_MODEL] will keep reintailizing,
	--  better to have it in model, or something similair to model class, only 1 instance


--	model : ETF_MODEL -- declare model, so child classes can use it, (inheritance)
	-- set attribute model to the same original instance model taken from mda.m (using once, expanded)

	execute is deferred end -- don't need 'is'?
	undo is deferred end

end
