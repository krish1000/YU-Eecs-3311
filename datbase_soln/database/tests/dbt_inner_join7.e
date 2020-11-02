note
	description: "Summary description for {DBT_INNER_JOIN7}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_INNER_JOIN7

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_violation_case_with_tag ("result_exists_in_current_database", agent dbt_inner_join7)
		end

feature
	dbt_inner_join7
	 	local
	 		l_result: like db_str_str.inner_join
	 		db_str_str_twin: like db_str_str
	 	do
	 		comment ("dbt_inner_join7: POSTCONDITION, result_exists_in_current_database")
			create {BAD_DATABASE_INNER_JOIN_RESULT_EXISTS_IN_CURRENT_DATABASE} db_str_str.make
			db_str_str_twin := db_str_str.deep_twin

			env_str_str (db_str_str)
			db_str_str_twin.insert ("a", "aaaaa")

			l_result := db_str_str.inner_join(db_str_str_twin)
	 	end
end
