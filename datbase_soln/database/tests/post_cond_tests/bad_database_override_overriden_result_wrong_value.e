note
	description: "DATABASE.override, overriden_result"
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	BAD_DATABASE_OVERRIDE_OVERRIDEN_RESULT_WRONG_VALUE

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
			if
				has_key(p_key)
			then
				delete(p_key)
			end
			insert(p_key, "WRONGRESULT")
		end

end

