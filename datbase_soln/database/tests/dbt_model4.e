note
	description: "Summary description for {DBT_MODEL4}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_MODEL4

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_boolean_case (agent dbt_model4)
		end

feature
	dbt_model4: BOOLEAN
		local
		do
			comment ("dbt_model4: str LINEAR_DB, check if its keys and its values map to a model")
			reset_as_linear_db

			env_str_str (db_str_str)

			if
				attached {LINEAR_DB[STRING, STRING]} db_str_str as a_db
			then

				Result :=
					across
						a_db.keys is i_key
					all
						attached a_db.model.domain_restricted_by (i_key).range as a_range
						and then
						a_range.count = 1
						and then
						attached a_db.values[i_key] as a_value and then
						a_range.has (a_value)
					end
			end

		end
end
