note
	description: "Summary description for {DBT_HAS_KEY6}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_HAS_KEY6

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_boolean_case (agent dbt_has_key6)
		end

feature
	dbt_has_key6: BOOLEAN
	 	local
	 	do
	 		comment ("dbt_has_key6: insert 1 ~ 10 check has_key all")
			reset_as_linear_db
			env_int_int (db_int_int)
			Result :=
				across
					1 |..| 10 is i
				all
					db_int_int.has_key(i)
				end
				and
				not db_int_int.has_key(-50) and
				not db_int_int.has_key(1990) and
				not db_int_int.has_key(293) and
				not db_int_int.has_key(99999)
	 	end
end
