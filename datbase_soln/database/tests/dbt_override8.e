note
	description: "Summary description for {DBT_OVERRIDE8}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_OVERRIDE8

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_violation_case_with_tag("overriden_result", agent dbt_override8)
		end

feature
	dbt_override8
		do
			comment ("dbt_override8: POSTCONDITION, overriden_result, added wrong value")
			create {BAD_DATABASE_OVERRIDE_OVERRIDEN_RESULT_WRONG_VALUE} db_str_str.make
			env_str_str (db_str_str)

			db_str_str.override("z", "zebra")
		end
end
