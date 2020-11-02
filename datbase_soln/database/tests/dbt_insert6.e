note
	description: "Summary description for {DBT_INSERT6}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_INSERT6

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_violation_case_with_tag ("no_previous_entry", agent dbt_insert6)
		end

feature
	dbt_insert6
	 	local
	 	do
	 		comment ("dbt_insert6: PRECONDITION, no_previous_entry")
			reset_as_linear_db
			db_str_str.insert ("A", "TEST3")
			db_str_str.insert ("A", "TEST2")
	 	end
end
