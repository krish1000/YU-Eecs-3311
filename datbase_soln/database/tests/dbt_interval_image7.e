note
	description: "Summary description for {DBT_INTERVAL_IMAGE7}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_INTERVAL_IMAGE7

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_boolean_case(agent dbt_interval_image7)
		end

feature
	dbt_interval_image7: BOOLEAN
		local
			l_result : like db_str_str.interval_image
		do
			comment ("dbt_interval_image7: duplication value test")
			reset_as_linear_db

			db_str_str.insert ("a", "a")
			db_str_str.insert ("b", "a")
			db_str_str.insert ("c", "a")
			db_str_str.insert ("d", "a")
			db_str_str.insert ("e", "a")
			db_str_str.insert ("f", "a")
			db_str_str.insert ("g", "a")
			db_str_str.insert ("h", "a")
			db_str_str.insert ("i", "a")
			db_str_str.insert ("j", "a")

			l_result := db_str_str.interval_image ("a", "e")

			Result :=
				l_result.count = 4 and
				l_result[1] ~ "a" and
				l_result[2] ~ "a" and
				l_result[3] ~ "a" and
				l_result[4] ~ "a"
		end
end
