note
	description: "Summary description for {DBT_MODEL2}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_MODEL2

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_boolean_case (agent dbt_model2)
		end

feature
	dbt_model2: BOOLEAN
		local
			l_bst: BALANCED_BST[STRING, STRING]
			l_list: LIST[TREE_NODE[STRING, STRING]]
		do
			comment ("dbt_model2: str TREE_DB, check if its keys and its values map to a model")
			reset_as_tree_db

			env_str_str (db_str_str)

			if
				attached {TREE_DB[STRING, STRING]} db_str_str as a_db
			then
				l_bst := a_db.bst
				l_list := l_bst.nodes

				Result :=
					across
						l_list is l_node
					all
						(
							attached l_node.key as a_key and then
							attached l_node.value as a_value
						)
						implies
						(
							attached a_db.model.domain_restricted_by(a_key).range as a_range
							and then
							a_range.count = 1
							and then
							a_range.has(a_value)
						)
					end
			end

		end
end
