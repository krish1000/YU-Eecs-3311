note
	description: "Summary description for {DBT_COUNT3}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_COUNT3

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_violation_case_with_tag ("consistent_counts", agent dbt_count3)
		end

feature
	dbt_count3
		local
			l_result : like db_str_str.count
		do
			comment ("dbt_count3: POSTCONDITION, consistent_counts")
			create {BAD_LINEAR_DB_COUNT_CONSISTENT_COUNTS} db_str_str.make
			env_str_str (db_str_str)

			l_result := db_str_str.count
		end
end
