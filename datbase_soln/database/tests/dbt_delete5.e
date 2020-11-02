note
	description: "Summary description for {DBT_DELETE5}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_DELETE5

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_violation_case_with_tag ("entry_deleted", agent dbt_delete5)
		end

feature
	dbt_delete5
		local
		do
			comment ("dbt_delete5: POSTCONDITION, entry_deleted, delete other")
			create {BAD_LINEAR_DB_DELETE_ENTRY_DELETED_DELETE_OTHER} db_str_str.make
			env_str_str (db_str_str)

			db_str_str.delete ("a")
		end
end
