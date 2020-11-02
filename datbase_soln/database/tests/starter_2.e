note
	description: "Summary description for {STARTER_2}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	STARTER_2

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db

			add_iterator_tests
		end

-- TODO: Uncomment these tests once you made `DATABASE` iterable.
feature -- iterator

	add_iterator_tests
		do
			add_boolean_case(agent dbt_iterator1)
			add_boolean_case(agent dbt_iterator5)

		end

 	dbt_iterator5: BOOLEAN
		local
			l_list: LIST[TUPLE[INTEGER, INTEGER]]
	 	do
	 		comment ("dbt_iterator5: TREE_DB, int_int, go through 1 ~ 10")
			reset_as_tree_db
			env_int_int (db_int_int)

			create {ARRAYED_LIST[TUPLE[INTEGER, INTEGER]]} l_list.make (db_int_int.count)

			across
				db_int_int is i_item
			loop
				l_list.force (i_item)
			end

			Result :=
				across
					l_list.count |..| 1 is i
				all
					l_list[i][1] ~ i
					and
					l_list[i][2] ~ i
				end

	 	end

 	dbt_iterator1: BOOLEAN
		local
			l_list: LIST[TUPLE[INTEGER, INTEGER]]
	 	do
	 		comment ("dbt_iterator1: LINEAR_DB, int_int, go through 1 ~ 10")
			reset_as_linear_db
			env_int_int (db_int_int)

			create {ARRAYED_LIST[TUPLE[INTEGER, INTEGER]]} l_list.make (db_int_int.count)

			across
				db_int_int is i_item
			loop
				l_list.force (i_item)
			end

			Result :=
				across
					l_list.count |..| 1 is i
				all
					l_list[i][1] ~ i
					and
					l_list[i][2] ~ i
				end

	 	end
end
