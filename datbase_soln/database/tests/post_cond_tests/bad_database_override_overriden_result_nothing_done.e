note
	description: "DATABASE.override, overriden_result"
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	BAD_DATABASE_OVERRIDE_OVERRIDEN_RESULT_NOTHING_DONE

inherit
	LINEAR_DB[STRING, STRING]
		redefine
			override
		end

create
	make

feature

	override(p_key: STRING; p_value: STRING)
		do
			
		end

end
