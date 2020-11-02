note
	description: "Summary description for {DBT_COUNT2}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_COUNT2

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_violation_case_with_tag ("nothing_changed", agent dbt_count2)
		end

feature
	dbt_count2
	 	local
	 		l_bool: BOOLEAN
	 	do
	 		comment ("dbt_count2: POSTCONDITION, nothing_changed")
			create {BAD_LINEAR_DB_QUERY_NOTHING_CHANGED} db_str_str.make
			env_str_str (db_str_str)

			l_bool := db_str_str.count = 10
	 	end
end
