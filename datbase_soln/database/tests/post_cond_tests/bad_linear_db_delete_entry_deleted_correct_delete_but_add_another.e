note
	description: "LINEAR_DB.delete, entry_deleted"
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	BAD_LINEAR_DB_DELETE_ENTRY_DELETED_CORRECT_DELETE_BUT_ADD_ANOTHER

inherit
	LINEAR_DB[STRING, STRING]
		redefine
			insert,
			delete
		end

create
	make

feature

	insert(p_key: STRING; p_value: STRING)
			-- Inserts a [`p_key`, `p_value`] mapping into the database.
		do
			-- TODO: Implement this feature so that `{DATABASE}.insert` specifications are satisfied.
			keys.force (p_key, keys.count + 1)
			values.force (p_value, p_key)
		end

	delete(p_key: STRING)
			-- Deletes a mapping with the key `p_key`.
			-- Must ensure that the database has a mapping with a key `p_key`.
		local
			l_keys: like keys
		do
			-- TODO: Implement this feature so that `{DATABASE}.delete` specifications are satisfied.
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

			insert("ZZZZ", "ZZZZ")
		end
end
