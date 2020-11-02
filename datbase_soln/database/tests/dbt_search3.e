note
	description: "Summary description for {DBT_SEARCH3}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_SEARCH3

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_violation_case_with_tag ("nothing_changed", agent dbt_search3)
		end

feature
	dbt_search3
		local
			l_result : like db_str_str.search
		do
			comment ("dbt_search3: POSTCONDITION, nothing_changed")
			create {BAD_LINEAR_DB_QUERY_NOTHING_CHANGED} db_str_str.make
			env_str_str (db_str_str)

			l_result := db_str_str.search("a")
		end
end
