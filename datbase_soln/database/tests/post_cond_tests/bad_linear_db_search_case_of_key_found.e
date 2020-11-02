note
	description: "LINEAR_DB.search, case_of_key_found"
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	BAD_LINEAR_DB_SEARCH_CASE_OF_KEY_FOUND

inherit
	LINEAR_DB[STRING, STRING]
		redefine
			search
		end

create
	make

feature

	search(p_key: STRING): detachable STRING
			-- Searches for matching value given a key `p_key`.
		do
			-- TODO: Implement this feature so that `{DATABASE}.search` specifications are satisfied.
			Result := "ZZZZZZ"
		end
end
