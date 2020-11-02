note
	description: "TREE_DB.model, all_key_value_pairs_exist_as_model_pairs"
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	BAD_TREE_DB_MODEL_ALL_KEY_VALUE_PAIRS_EXIST_AS_MODEL_PAIRS

inherit
	TREE_DB[INTEGER, INTEGER]
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
			bst.insert (p_key, p_value)
		end


end
