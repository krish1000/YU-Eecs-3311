note
	description: "LINEAR_DB.model, all_model_pairs_exist_as_key_value_pairs"
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	BAD_LINEAR_DB_MODEL_ALL_MODEL_PAIRS_EXIST_AS_KEY_VALUE_PAIRS

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

			across
				keys is i_key
			loop
				if
					attached values[i_key] as a_value
				then
					Result.extend ([i_key, a_value])
					Result.extend ([i_key+99, a_value])
				end
			end

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
