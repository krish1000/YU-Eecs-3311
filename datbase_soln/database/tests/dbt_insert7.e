note
	description: "Summary description for {DBT_INSERT7}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_INSERT7

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_violation_case_with_tag ("entry_added", agent dbt_insert7)
		end

feature
	dbt_insert7
	 	local
	 	do
	 		comment ("dbt_insert7: POSTCONDITION, entry_added, insert wrong")
			create {BAD_LINEAR_DB_INSERT_ENTRY_ADDED_NO_ADDITION} db_int_int.make
			db_int_int.insert (1, 1)
	 	end
end
