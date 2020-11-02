note
	description: "Summary description for {DBT_COMMON_KEY_DB9}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_COMMON_KEY_DB9

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_boolean_case (agent dbt_common_key_db_9)
		end

feature
	dbt_common_key_db_9: BOOLEAN
		local
			l_result : like db_str_str.common_key_db
			l_twin: like db_str_str
		do
			comment ("dbt_common_key_db_9: check the dynamic type of the output")
			reset_as_linear_db

			create {TREE_DB[STRING, STRING]} l_twin.make

			env_str_str (db_str_str)
			l_twin.insert("a", "a")
			l_twin.insert("b", "b")
			l_twin.insert("canada", "c")
			l_twin.insert("d", "draught")

			l_result := db_str_str.common_key_db(l_twin)

			Result :=
				l_result.count = 2 and
				l_result.has_key ("a") and attached l_result.search ("a") as a_search and then a_search ~ "a" and
				l_result.has_key ("b") and attached l_result.search ("b") as a_search and then a_search ~ "b" and
				attached {LINEAR_DB[STRING, STRING]} l_result
		end
end
