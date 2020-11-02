note
	description: "Summary description for {DBT_COUNT4}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_COUNT4

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_boolean_case (agent dbt_count4)
		end

feature
	dbt_count4: BOOLEAN
	 	local
	 	do
	 		comment ("dbt_count4: LINEAR_DB, count empty db")
			reset_as_linear_db

			Result := db_int_int.count = 0
	 	end
end
