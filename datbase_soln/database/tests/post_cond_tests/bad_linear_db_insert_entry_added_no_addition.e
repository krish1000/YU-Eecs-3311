note
	description: "LINEAR_DB.insert , all_key_value_pairs_exist_as_model_pairs"
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	BAD_LINEAR_DB_INSERT_ENTRY_ADDED_NO_ADDITION

inherit
	LINEAR_DB[INTEGER, INTEGER]
		redefine
			insert
		end

create
	make

feature

	insert(p_key: INTEGER; p_value: INTEGER)
			-- Inserts a [`p_key`, `p_value`] mapping into the database.
		do

		end

end
