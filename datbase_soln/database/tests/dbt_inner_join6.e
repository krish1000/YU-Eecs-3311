note
	description: "Summary description for {DBT_INNER_JOIN6}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_INNER_JOIN6

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_violation_case_with_tag ("common_key_mapping_exists_in_result", agent dbt_inner_join6)
		end

feature
	dbt_inner_join6
	 	local
	 		l_result: like db_str_str.inner_join
	 		db_str_str_twin: like db_str_str
	 	do
	 		comment ("dbt_inner_join6: POSTCONDITION, common_key_mapping_exists_in_result")
			create {BAD_DATABASE_INNER_JOIN_COMMON_KEY_MAPPING_EXISTS_IN_RESULT} db_str_str.make
			db_str_str_twin := db_str_str.deep_twin

			env_str_str (db_str_str)
			db_str_str_twin.insert ("a", "aaaaa")
			db_str_str_twin.insert ("c", "ccccc")
			db_str_str_twin.insert ("b", "bbbbb")
			db_str_str_twin.insert ("d", "ddddd")
			db_str_str_twin.insert ("f", "fffff")
			db_str_str_twin.insert ("e", "eeeee")


			l_result := db_str_str.inner_join(db_str_str_twin)
	 	end
end
