note
	description: "Summary description for {DBT_DELETE6}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_DELETE6

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_violation_case_with_tag ("entry_deleted", agent dbt_delete6)
		end

feature
	dbt_delete6
		do
			comment ("dbt_delete6: POSTCONDITION, entry_deleted, delete correct")
			create {BAD_LINEAR_DB_DELETE_ENTRY_DELETED_CORRECT_DELETE_BUT_ADD_ANOTHER} db_str_str.make
			env_str_str (db_str_str)

			db_str_str.delete ("a")
		end
end
