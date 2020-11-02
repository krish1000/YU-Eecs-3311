note
	description: "LINEAR_DB.model, all_key_value_pairs_exist_as_model_pairs"
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	BAD_LINEAR_DB_MODEL_ALL_KEY_VALUE_PAIRS_EXIST_AS_MODEL_PAIRS

inherit
	LINEAR_DB[INTEGER, INTEGER]
		redefine
			model
		end

create
	make

feature

	model: REL[INTEGER, INTEGER]
		do
			create Result.make_empty

		end

	insert_debug(p_key: INTEGER; p_value: INTEGER)
			-- Inserts a [`p_key`, `p_value`] mapping into the database.
		require
			no_previous_entry:
				not has_key(p_key)
		do
			keys.force (p_key, keys.count + 1)
			values.force (p_value, p_key)
		end


end
