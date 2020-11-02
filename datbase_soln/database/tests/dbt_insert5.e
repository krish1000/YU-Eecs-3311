note
	description: "Summary description for {DBT_INSERT5}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_INSERT5

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_boolean_case (agent dbt_insert5)
		end

feature
	dbt_insert5: BOOLEAN
	 	local
	 	do
	 		comment ("dbt_insert5: insert A, K, E, S, Z, T, I, P, Q, H")
			reset_as_linear_db
			db_str_str.insert ("A", "TEST3")
			db_str_str.insert ("K", "TEST2")
			db_str_str.insert ("E", "TEST4")
			db_str_str.insert ("S", "TEST1")
			db_str_str.insert ("Z", "TEST5")
			db_str_str.insert ("T", "TEST6")
			db_str_str.insert ("I", "TEST7")
			db_str_str.insert ("P", "TEST10")
			db_str_str.insert ("Q", "TEST8")
			db_str_str.insert ("H", "TEST9")
			Result := db_str_str.count = 10
	 	end
end
