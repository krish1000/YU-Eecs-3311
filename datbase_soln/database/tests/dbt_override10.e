note
	description: "Summary description for {DBT_OVERRIDE10}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_OVERRIDE10

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_violation_case_with_tag("overriden_result", agent dbt_override10)
		end

feature
	dbt_override10
		do
			comment ("dbt_override10: POSTCONDITION, overriden_result, add then change 'b'")
			create {BAD_DATABASE_OVERRIDE_OVERRIDEN_RESULT_CHANGE_OTHER_ENTRY} db_str_str.make
			env_str_str (db_str_str)

			db_str_str.override("z", "zebra")
		end
end
