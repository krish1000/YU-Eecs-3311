note
	description: "TREE_DB.model, all_key_value_pairs_exist_as_model_pairs"
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	BAD_TREE_DB_MODEL_ALL_MODEL_PAIRS_EXIST_AS_KEY_VALUE_PAIRS

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

			across
				bst.nodes is i_node
			loop
				if
					attached i_node.key as a_key and then
					attached i_node.value as a_value
				then
					Result.extend([a_key, a_value])
					Result.extend([a_key + 99, a_value])
				end
			end

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
