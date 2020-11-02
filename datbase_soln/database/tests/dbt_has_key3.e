note
	description: "Summary description for {DBT_HAS_KEY3}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_HAS_KEY3

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_violation_case_with_tag ("nothing_changed", agent dbt_has_key3)
		end

feature
	dbt_has_key3
		local
			l_result : like db_str_str.has_key
		do
			comment ("dbt_has_key3: POSTCONDITION, nothing_changed")
			create {BAD_LINEAR_DB_QUERY_NOTHING_CHANGED} db_str_str.make
			env_str_str (db_str_str)

			l_result := db_str_str.has_key("a")
		end
end
