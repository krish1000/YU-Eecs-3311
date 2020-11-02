note
	description: "LINEAR_DB.insert, all_key_value_pairs_exist_as_model_pairs"
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	BAD_LINEAR_DB_INSERT_ENTRY_ADDED_CHANGE_OTHERS

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
		local
			l_keys: like keys
		do
			keys.force (p_key, keys.count + 1)
			values.force (p_value, p_key)

			create l_keys.make_empty
			across
				keys is i_key
			loop
				if
					i_key /~ p_key
				then
					l_keys.force (i_key, l_keys.count + 1)
				end
			end

			keys := l_keys
			values.remove (p_key)
		end

end
