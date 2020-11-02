note
	description: "DATABASE.common_key_db, result_has_common_key_mappings_from_current_database_and_p_second"
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	BAD_DATABASE_COMMON_KEY_DB_RESULT_HAS_COMMON_KEY_MAPPINGS_FROM_CURRENT_DATABASE_AND_P_SECOND_ONLY_KEY_MATCH

inherit
	LINEAR_DB[STRING, STRING]
		redefine
			common_key_db
		end

create
	make

feature

	common_key_db (p_second: DATABASE[STRING, STRING]): DATABASE[STRING, STRING]
		do
			Result := (Current.deep_twin)

			across
				Current is i_item
			loop
				if
					not p_second.has_key(i_item.key)
--					or else
--					attached p_second.search(i_item.key) as a_seond_value and then
--					attached search(i_item.key) as a_value and then
--					a_seond_value /~ a_value
				then
					Result.delete(i_item.key)
				end
			end
		end

end
