note
	description: "Summary description for {DBT_ITERATOR7}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_ITERATOR7

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_boolean_case(agent dbt_iterator7)
		end

feature
	dbt_iterator7: BOOLEAN
		local
			l_list: LIST[TUPLE[STRING, STRING]]
			l_answer_list: ARRAY[STRING]
	 	do
	 		comment ("dbt_iterator7: TREE_DB, str_str, go through `a` ~ `j`")
			reset_as_tree_db
			env_str_str (db_str_str)

			create {ARRAYED_LIST[TUPLE[STRING, STRING]]} l_list.make (db_str_str.count)

			l_answer_list := <<"a", "b", "c", "d", "e", "f", "g", "h", "i", "j">>

			across
				db_str_str is i_item
			loop
				l_list.force (i_item)
			end

			Result :=
				across
					l_list.count |..| 1 is i
				all
					l_list[i][1] ~ l_answer_list[i]
					and
					l_list[i][2] ~ l_answer_list[i]
				end

	 	end
end
