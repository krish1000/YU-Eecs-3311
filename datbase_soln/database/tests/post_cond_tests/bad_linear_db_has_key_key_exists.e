note
	description: "LINEAR_DB.has_key, key_exists"
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	BAD_LINEAR_DB_HAS_KEY_KEY_EXISTS

inherit
	LINEAR_DB[STRING, STRING]
		redefine
			has_key
		end

create
	make

feature

	has_key(p_key: STRING): BOOLEAN
			-- Returns true if a mapping with `p_key` exists. False otherwise.
		do
			-- TODO: Implement this query so that
			-- the inherited postcondition from `{DATABASE}.has_key` is satisfied.
			Result := not keys.has (p_key)

		-- Implicitly, postcondition from `{DATABASE}.has_key` is inherited here.
		end

	debug_insert(p_key: STRING; p_value: STRING)
			-- Inserts a [`p_key`, `p_value`] mapping into the database.
			-- See the inherited precondition of `{DATABASE}.insert`.
		do
			-- TODO: Implement this command so that
			-- the inherited postcondition from `{DATABASE}.insert` is satisfied.
			keys.force (p_key, keys.count + 1)
			values.force (p_value, p_key)

		-- Implicitly, postcondition from `{DATABASE}.insert` is inherited here.
		end


end
