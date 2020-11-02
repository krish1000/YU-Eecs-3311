note
	description: "Summary description for {DBT_SEARCH5}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_SEARCH5

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_boolean_case(agent dbt_search5)
		end

feature
	dbt_search5: BOOLEAN
	 	local
	 	do
	 		comment ("dbt_search5: str LINEAR_DB, search all")
			reset_as_linear_db
			env_str_str (db_str_str)

			Result :=
				db_str_str.search("a") ~ "a" and
				db_str_str.search("b") ~ "b" and
				db_str_str.search("c") ~ "c" and
				db_str_str.search("d") ~ "d" and
				db_str_str.search("e") ~ "e" and
				db_str_str.search("f") ~ "f" and
				db_str_str.search("g") ~ "g" and
				db_str_str.search("h") ~ "h" and
				db_str_str.search("i") ~ "i" and
				db_str_str.search("j") ~ "j"
	 	end
end
