note
	description: "Summary description for {DBT_DELETE3}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_DELETE3

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_violation_case_with_tag ("existing_entry", agent dbt_delete3)
		end

feature
	dbt_delete3
		local
		do
			comment ("dbt_delete3: PRECONDTION, existing_entry")
			reset_as_linear_db
			env_str_str (db_str_str)

			db_str_str.delete("N/A")
		end
end
