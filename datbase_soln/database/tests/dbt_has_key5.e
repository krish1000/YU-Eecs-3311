note
	description: "Summary description for {DBT_HAS_KEY5}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_HAS_KEY5

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_violation_case_with_tag ("key_exists", agent dbt_has_key5)
		end

feature
	dbt_has_key5
		local
			l_result : like db_str_str.has_key
		do
			comment ("dbt_has_key5: POSTCONDITION, key_exists, false positive: no key report true")
			create {BAD_LINEAR_DB_HAS_KEY_KEY_EXISTS} db_str_str.make

			l_result := db_str_str.has_key ("Z")
		end
end
