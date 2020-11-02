note
	description: "Summary description for {DBT_MODEL6}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_MODEL6

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_boolean_case (agent dbt_model6)
		end

feature
	dbt_model6: BOOLEAN
		local
		do
			comment ("dbt_model6: str TREE_DB, check if its model maps all the keys and values")
			reset_as_tree_db

			env_str_str (db_str_str)

			if
				attached {TREE_DB[STRING, STRING]} db_str_str as a_db
			then
				Result :=
					across
						a_db.model is i_pair
					all
						attached i_pair.first as a_key and then
						attached i_pair.second as a_value
						and then
						a_db.search (a_key) ~ a_value
					end
			end
		end
end
