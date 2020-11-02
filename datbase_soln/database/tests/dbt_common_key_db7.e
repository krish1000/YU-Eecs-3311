note
	description: "Summary description for {DBT_COMMON_KEY_DB7}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_COMMON_KEY_DB7

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_violation_case_with_tag ("result_has_common_key_mappings_from_current_database_and_p_second", agent dbt_common_key_db_7)
		end

feature
	dbt_common_key_db_7
		local
			l_result : like db_str_str.common_key_db
			l_twin: like db_str_str
		do
			comment ("dbt_common_key_db_7: POSTCONDITION, result_has_common_key_mappings_from_current_database_and_p_second, only values match")
			create {BAD_DATABASE_COMMON_KEY_DB_RESULT_HAS_COMMON_KEY_MAPPINGS_FROM_CURRENT_DATABASE_AND_P_SECOND_ONLY_VALUE_MATCH} db_str_str.make
			l_twin := db_str_str.deep_twin

			env_str_str (db_str_str)
			l_twin.insert("a", "a")
			l_twin.insert("canada", "c")

			l_result := db_str_str.common_key_db(l_twin)
		end
end
