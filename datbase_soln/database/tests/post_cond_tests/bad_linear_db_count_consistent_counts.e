note
	description: "LINEAR_DB.delete, entry_deleted"
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	BAD_LINEAR_DB_COUNT_CONSISTENT_COUNTS

inherit
	LINEAR_DB[STRING, STRING]
		redefine
			count
		end

create
	make

feature

	count: INTEGER
		do
			Result := -999
		end

end

