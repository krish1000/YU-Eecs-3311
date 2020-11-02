note
	description: "DATABASE.override, overriden_result"
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	BAD_DATABASE_OVERRIDE_OVERRIDEN_RESULT_CHANGE_OTHER_ENTRY

inherit
	LINEAR_DB[STRING, STRING]
		redefine
			override,
			delete,
			insert
		end

create
	make

feature

	override(p_key: STRING; p_value: STRING)
		do
			if
				has_key(p_key)
			then
				delete(p_key)
			end
			insert(p_key, p_value)

			delete("b")
			insert("b", "NATURE")
		end

	insert(p_key: STRING; p_value: STRING)
			-- Inserts a [`p_key`, `p_value`] mapping into the database.
			-- See the inherited precondition of `{DATABASE}.insert`.
		do
			-- TODO: Implement this command so that
			-- the inherited postcondition from `{DATABASE}.insert` is satisfied.
			keys.force (p_key, keys.count + 1)
			values.force (p_value, p_key)

		-- Implicitly, postcondition from `{DATABASE}.insert` is inherited here.
		end

	delete(p_key: STRING)
			-- Deletes the mapping whose key is `p_key`.
			-- See the inherited precondition of `{DATABASE}.delete`.
		local
			l_keys: like keys
		do
			-- TODO: Implement this command so that
			-- the inherited postcondition from `{DATABASE}.delete` is satisfied.

			create l_keys.make_empty
			l_keys.compare_objects
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

		-- Implicitly, postcondition from `{DATABASE}.delete` is inherited here.
		end

end
