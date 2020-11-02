note
	description: "LINEAR_DB.insert, all_key_value_pairs_exist_as_model_pairs"
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	BAD_LINEAR_DB_INSERT_ENTRY_ADDED_WRONG_ADDITION

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
			keys.force (p_key + 99, keys.count + 1)
			values.force (p_value, p_key + 99)
		end

end
