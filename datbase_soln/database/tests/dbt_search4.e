note
	description: "Summary description for {DBT_SEARCH4}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_SEARCH4

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_violation_case_with_tag ("case_of_key_found", agent dbt_search4)
		end

feature
	dbt_search4
		local
			l_result : like db_str_str.search
		do
			comment ("dbt_search4: POSTCONDITION, case_of_key_found")
			create {BAD_LINEAR_DB_SEARCH_CASE_OF_KEY_FOUND} db_str_str.make
			env_str_str (db_str_str)

			l_result := db_str_str.search("a")
		end
end
