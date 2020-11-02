note
	description: "LINEAR_DB.count, consistent_counts"
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	BAD_LINEAR_DB_DELETE_ENTRY_DELETED_DELETE_OTHER

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
		local
			l_keys: like keys
		do
			-- TODO: Implement this feature so that `{DATABASE}.delete` specifications are satisfied.
			create l_keys.make_empty
			across
				keys is i_key
			loop
				if
					i_key /~ "d"
				then
					l_keys.force (i_key, l_keys.count + 1)
				end
			end

			keys := l_keys
			values.remove (p_key)
		end

end
