note
	description: "Summary description for {DBT_INTERVAL_IMAGE5}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_INTERVAL_IMAGE5

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_violation_case_with_tag ("correct_values_are_included_in_result", agent dbt_interval_image5)
		end

feature
	dbt_interval_image5
		local
			l_result : like db_str_str.interval_image
		do
			comment ("dbt_interval_image5: POSTCONDITION, correct_values_are_included_in_result, no insert in p_first condition")
			create {BAD_DATABASE_INTERVAL_IMAGE_MAPPING_MATCHING_KEY_CONDITION_MEANS_RESULT_HAS_THE_KEY} db_str_str.make
			env_str_str (db_str_str)

			l_result := db_str_str.interval_image ("a", "d")
		end
end
