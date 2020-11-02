note
	description: "Summary description for {DBT_DELETE4}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_DELETE4

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_violation_case_with_tag ("entry_deleted", agent dbt_delete4)
		end

feature
	dbt_delete4
		local
		do
			comment ("dbt_delete4: POSTCONDITION, entry_deleted, no deletion")
			create {BAD_LINEAR_DB_DELETE_ENTRY_DELETED_NO_DELETION} db_str_str.make
			env_str_str (db_str_str)

			db_str_str.delete ("a")
		end
end
