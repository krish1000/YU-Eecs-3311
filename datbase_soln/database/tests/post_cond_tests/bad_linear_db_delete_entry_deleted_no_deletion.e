note
	description: "LINEAR_DB.count, consistent_counts"
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	BAD_LINEAR_DB_DELETE_ENTRY_DELETED_NO_DELETION

inherit
	LINEAR_DB[STRING, STRING]
		redefine
			delete
		end

create
	make

feature

	delete(p_key: STRING)
			-- Deletes a mapping with the key `p_key`.
			-- Must ensure that the database has a mapping with a key `p_key`.
		do

		end

end
