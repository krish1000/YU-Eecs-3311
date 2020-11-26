note
	description: "Summary description for {SUMMARY_SETUP}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	SUMMARY_SETUP

inherit
	STATES

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
		do
--			select_value := 1 -- default value
			state_name := "setup summary"
			create types_string_format.make_empty -- not used, need to declare b/c inherited
		end

feature -- Commands
	execute
		do

		end

	get_attributes : ATTRIBUTE_VALUES
		do
			create Result.make -- no attributes for this class
		end

--	setup_s(setup_select: INTEGER)
--		do
--			-- not used
--		end

feature -- Query
	output : STRING
		local
			msg : STRING
		do
			create Result.make_empty
--			Result.append("%N  SUMMARY")

			-- Summary msg
			msg := "%N  Weapon Selected:" + model.app.states[1].get_type
  					+"%N  Armour Selected:" + model.app.states[2].get_type
  					+"%N  Engine Selected:" + model.app.states[3].get_type
  					+"%N  Power Selected:" + model.app.states[4].get_type

  			Result.append (msg)

		end


end
