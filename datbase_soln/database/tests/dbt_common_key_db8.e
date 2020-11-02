note
	description: "Summary description for {DBT_COMMON_KEY_DB8}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_COMMON_KEY_DB8

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_boolean_case (agent dbt_common_key_db_8)
		end

feature
	dbt_common_key_db_8: BOOLEAN
		local
			l_result : like db_str_str.common_key_db
			l_twin: like db_str_str
		do
			comment ("dbt_common_key_db_8: compare two database with two different key-value entries")
			reset_as_linear_db
			l_twin := db_str_str.deep_twin

			env_str_str (db_str_str)
			l_twin.insert("a", "a")
			l_twin.insert("b", "b")
			l_twin.insert("canada", "c")
			l_twin.insert("d", "draught")

			l_result := db_str_str.common_key_db(l_twin)

			Result :=
				l_result.count = 2 and
				l_result.has_key ("a") and attached l_result.search ("a") as a_search and then a_search ~ "a" and
				l_result.has_key ("b") and attached l_result.search ("b") as a_search and then a_search ~ "b"
		end
end
