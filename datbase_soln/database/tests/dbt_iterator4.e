note
	description: "Summary description for {DBT_ITERATOR4}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_ITERATOR4

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_boolean_case(agent dbt_iterator4)
		end

feature
	dbt_iterator4: BOOLEAN
		local
			l_list: LIST[TUPLE[STRING, STRING]]
	 	do
	 		comment ("dbt_iterator4: LINEAR_DB, str_str, go through nothing")
			reset_as_linear_db

			create {ARRAYED_LIST[TUPLE[STRING, STRING]]} l_list.make (db_str_str.count)

			across
				db_str_str is i_item
			loop
				l_list.force (i_item)
			end

			Result := l_list.count = 0

	 	end
end
