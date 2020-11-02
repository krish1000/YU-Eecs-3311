note
	description: "Summary description for {DBT_DELETE7}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_DELETE7

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_boolean_case (agent dbt_delete7)
		end

feature
	dbt_delete7: BOOLEAN
	 	local
	 	do
	 		comment ("dbt_delete7: insert 1 ~ 10, delete all")
			reset_as_linear_db
			env_int_int (db_int_int)
			db_int_int.delete (1)
			db_int_int.delete (10)
			db_int_int.delete (2)
			db_int_int.delete (9)
			db_int_int.delete (3)
			db_int_int.delete (8)
			db_int_int.delete (4)
			db_int_int.delete (7)
			db_int_int.delete (5)
			db_int_int.delete (6)

			Result :=
				across
					1 |..| 10 is i
				all
					not db_int_int.has_key (i)
				end
				and
				db_int_int.count = 0
	 	end
end
