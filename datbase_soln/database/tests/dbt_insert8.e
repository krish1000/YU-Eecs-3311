note
	description: "Summary description for {DBT_INSERT8}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_INSERT8

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_violation_case_with_tag ("entry_added", agent dbt_insert8)
		end

feature
	dbt_insert8
	 	local
	 	do
	 		comment ("dbt_insert8: POSTCONDITION, entry_added, insert nothing")
			create {BAD_LINEAR_DB_INSERT_ENTRY_ADDED_WRONG_ADDITION} db_int_int.make
			db_int_int.insert (1, 1)
	 	end
end
