note
	description: "Summary description for {DBT_INTERVAL_IMAGE6}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_INTERVAL_IMAGE6

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_violation_case_with_tag ("result_includes_correct_values_only", agent dbt_interval_image6)
		end

feature
	dbt_interval_image6
		local
			l_result : like db_str_str.interval_image
		do
			comment ("dbt_interval_image6: POSTCONDITION, result_includes_correct_values_only, no insert in p_first condition")
			create {BAD_DATABASE_INTERVAL_IMAGE_VALUE_EXISTS_IN_RESULT_MEAN_MODEL_SHOULD_HAVE_IT} db_str_str.make
			env_str_str (db_str_str)

			l_result := db_str_str.interval_image ("a", "d")
		end
end
