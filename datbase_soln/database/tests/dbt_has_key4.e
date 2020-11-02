note
	description: "Summary description for {DBT_HAS_KEY4}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_HAS_KEY4

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_violation_case_with_tag ("key_exists", agent dbt_has_key4)
		end

feature
	dbt_has_key4
		local
			l_result : like db_str_str.has_key
		do
			comment ("dbt_has_key4: POSTCONDITION, key_exists, false negative: existing key report false")
			create {BAD_LINEAR_DB_HAS_KEY_KEY_EXISTS} db_str_str.make
			if
				attached {BAD_LINEAR_DB_HAS_KEY_KEY_EXISTS} db_str_str as a_db
			then
				a_db.debug_insert("a", "a")
			end

			l_result := db_str_str.has_key ("a")
		end
end
