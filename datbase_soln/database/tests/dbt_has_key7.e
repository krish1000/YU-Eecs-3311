note
	description: "Summary description for {DBT_HAS_KEY7}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DBT_HAS_KEY7

inherit
	TEST_ENVIRONMENT

create
	make

feature
	make
		do
			reset_as_linear_db
			add_boolean_case (agent dbt_has_key7)
		end

feature
	dbt_has_key7: BOOLEAN
	 	local
	 	do
	 		comment ("dbt_has_key7: insert 'a' ~ 'j' check has_key all")
			reset_as_linear_db
			env_str_str (db_str_str)
			Result :=
				db_str_str.has_key("a") and
				db_str_str.has_key("b") and
				db_str_str.has_key("c") and
				db_str_str.has_key("d") and
				db_str_str.has_key("e") and
				db_str_str.has_key("f") and
				db_str_str.has_key("g") and
				db_str_str.has_key("h") and
				db_str_str.has_key("i") and
				db_str_str.has_key("j") and
				not db_str_str.has_key("NO ENTRY") and
				not db_str_str.has_key("BATH") and
				not db_str_str.has_key("Probe")
	 	end

end
