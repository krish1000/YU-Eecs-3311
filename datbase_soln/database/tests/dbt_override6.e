note
	description: "Summary description for {DBT_OVERRIDE6}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_OVERRIDE6

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_violation_case_with_tag("overriden_result", agent dbt_override6)
		end

feature
	dbt_override6
		do
			comment ("dbt_override6: POSTCONDITION, overriden_result, no addition")
			create {BAD_DATABASE_OVERRIDE_OVERRIDEN_RESULT_NOTHING_DONE} db_str_str.make
			env_str_str (db_str_str)

			db_str_str.override("Z", "added_value")
		end
end
