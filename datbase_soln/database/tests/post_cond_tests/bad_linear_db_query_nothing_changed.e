note
	description: "LINEAR_DB.queries, nothing_changed"
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	BAD_LINEAR_DB_QUERY_NOTHING_CHANGED

inherit
	LINEAR_DB[STRING, STRING]
		redefine
			count,
			search,
			has_key,
			common_key_db,
			interval_image,
			inner_join
		end

create
	make

feature

	change_value
		do
			if
				keys.count >= 10
			then
				keys[10] := "ZZZZZZZZZZ"
				values[keys[10]] := keys[10]
			end
		end

feature

	count: INTEGER
			-- Returns the number of mapping in `Current` database.
		do
			Result := keys.count

			change_value
		end

	search(p_key: STRING): detachable STRING
			-- Searches for matching value given a key `p_key`.
		do
			Result := values[p_key]

			change_value
		end

	has_key(p_key: STRING): BOOLEAN
			-- Returns true if a mapping with `p_key` exists. False otherwise.
		do
			Result := keys.has (p_key)

			change_value
		end

	common_key_db (p_second: DATABASE[STRING, STRING]): DATABASE[STRING, STRING]
		do
			Result := (Current.deep_twin)

			across
				Current is i_item
			loop
				if
					not p_second.has_key(i_item.key)
				then
					Result.delete(i_item.key)
				end
			end

			change_value
		end

	interval_image (p_first, p_finish: STRING): LIST[STRING]
		do
			create {ARRAYED_LIST[STRING]} Result.make (count)
			Result.compare_objects

			across
				Current is i_item
			loop
				if
					p_first <= i_item.key and then
					i_item.key < p_finish
				then
					Result.force(i_item.value)
				end
			end
			change_value
		end

	inner_join (other: DATABASE[STRING, STRING]): REL[STRING, PAIR[STRING, STRING]]
		do

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
						Result.extend ([i_current_item.key, create {PAIR[STRING, STRING]}.make (i_current_item.value, i_other_item.value)])
					end
				end
			end
			change_value
		end
end
