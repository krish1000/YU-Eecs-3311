note
	description: "Summary description for {DBT_MODEL9}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_MODEL9

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_violation_case_with_tag ("all_key_value_tuples_exist_as_model_pairs", agent dbt_model9)

		end

feature
	dbt_model9
		local
			l_model: like db_int_int.model
		do
			comment ("dbt_model9: POSTCONDITION, TREE_DB, all_key_value_pairs_exist_as_model_pairs")
			create {BAD_TREE_DB_MODEL_ALL_KEY_VALUE_PAIRS_EXIST_AS_MODEL_PAIRS} db_int_int.make

			if
				attached {BAD_TREE_DB_MODEL_ALL_KEY_VALUE_PAIRS_EXIST_AS_MODEL_PAIRS} db_int_int as a_db
			then
				a_db.insert_debug(1, 1)
			end

			l_model := db_int_int.model
		end
end
