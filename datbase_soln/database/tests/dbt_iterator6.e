note
	description: "Summary description for {DBT_ITERATOR6}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_ITERATOR6

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_boolean_case(agent dbt_iterator6)
		end

feature
	dbt_iterator6: BOOLEAN
		local
			l_list: LIST[TUPLE[INTEGER, STRING]]
			l_answer_list: ARRAY[STRING]
	 	do
	 		comment ("dbt_iterator6: TREE_DB, int_str, go through 1 ~ 10, `a` ~ `j`")
			reset_as_tree_db
			env_int_str (db_int_str)

			create {ARRAYED_LIST[TUPLE[INTEGER, STRING]]} l_list.make (db_int_str.count)

			l_answer_list := <<"a", "b", "c", "d", "e", "f", "g", "h", "i", "j">>

			across
				db_int_str is i_item
			loop
				l_list.force (i_item)
			end

			Result :=
				across
					l_list.count |..| 1 is i
				all
					l_list[i][1] ~ i
					and
					l_list[i][2] ~ l_answer_list[i]
				end

	 	end
end
