note
	description: "DATABASE.inner_join, result_exists_in_other_database"
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"


class
	BAD_DATABASE_INNER_JOIN_RESULT_EXISTS_IN_OTHER_DATABASE


inherit
	LINEAR_DB[STRING, STRING]
		redefine
			inner_join
		end

create
	make

feature

	inner_join (other: DATABASE[STRING, STRING]): REL[STRING, PAIR[STRING, STRING]]
 			-- Returns a relation consisting of mappings [k, (v, s)],
 			-- where [k, v] is a valid entry in the `Current` database,
 			-- and [k, s] is a valid entry in the `other` database.
		do
			-- TODO: Complete this implementation.

			create Result.make_empty

			across
				Current is i_current_item
			loop
				across
					other is i_other_item
				loop
					if
						i_current_item.key ~ i_other_item.key
					then
						Result.extend ([i_current_item.key, create {PAIR[STRING, STRING]}.make (i_current_item.value, i_current_item.value)])
					end
				end
			end

		end



end
