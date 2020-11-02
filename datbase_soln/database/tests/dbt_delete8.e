note
	description: "Summary description for {DBT_DELETE8}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_DELETE8

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_boolean_case (agent dbt_delete8)
		end

feature
	dbt_delete8: BOOLEAN
	 	local
	 	do
	 		comment ("dbt_delete8: insert 'a' ~ 'j', delete all")
			reset_as_linear_db
			env_str_str (db_str_str)
			db_str_str.delete ("a")
			db_str_str.delete ("j")
			db_str_str.delete ("b")
			db_str_str.delete ("i")
			db_str_str.delete ("c")
			db_str_str.delete ("h")
			db_str_str.delete ("g")
			db_str_str.delete ("d")
			db_str_str.delete ("f")
			db_str_str.delete ("e")

			Result :=
				not db_str_str.has_key ("a") and
				not db_str_str.has_key ("j") and
				not db_str_str.has_key ("b") and
				not db_str_str.has_key ("i") and
				not db_str_str.has_key ("c") and
				not db_str_str.has_key ("h") and
				not db_str_str.has_key ("g") and
				not db_str_str.has_key ("d") and
				not db_str_str.has_key ("f") and
				not db_str_str.has_key ("e") and
				db_str_str.count = 0
	 	end
end
