note
	description: "Summary description for {DBT_INNER_JOIN5}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_INNER_JOIN5

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_violation_case_with_tag ("nothing_changed", agent dbt_inner_join5)
		end

feature
	dbt_inner_join5
	 	local
	 		l_result: like db_str_str.inner_join
	 		db_str_str_twin: like db_str_str
	 	do
	 		comment ("dbt_inner_join5: POSTCONDITION, nothing_changed")
			create {BAD_LINEAR_DB_QUERY_NOTHING_CHANGED} db_str_str.make
			create {BAD_LINEAR_DB_QUERY_NOTHING_CHANGED} db_str_str_twin.make

			env_str_str (db_str_str)
			env_str_str (db_str_str_twin)

			l_result := db_str_str.inner_join(db_str_str)
	 	end
end
