note
	description: "Summary description for {DBT_INSERT9}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_INSERT9

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_violation_case_with_tag ("entry_added", agent dbt_insert9)
		end

feature
	dbt_insert9
	 	local
	 	do
	 		comment ("dbt_insert9: POSTCONDITION, entry_added, insert and change others")
			create {BAD_LINEAR_DB_INSERT_ENTRY_ADDED_CHANGE_OTHERS} db_int_int.make
			db_int_int.insert (1, 1)
	 	end
end
