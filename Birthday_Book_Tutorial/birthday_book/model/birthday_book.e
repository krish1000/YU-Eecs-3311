note
	description: "Summary description for {BIRTHDAY_BOOK}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BIRTHDAY_BOOK

create
	make_empty

feature -- Attributes

	names: ARRAY[STRING]
	birthdays: LIST[BIRTHDAY] -- program from the interaface, not from the implementation Tutorial 17

	count: INTEGER
		-- Number of stored name-birthday records

feature -- Queries

	get_birthday(name: STRING): BIRTHDAY
		-- Given an existing `name` returns corresponding bithday
		require
			existing_name:
				names.has (name)
		local
			i: INTEGER
		do
			-- because the return type BIRTHDAY is attached, we must explicitly initialize Result
			create Result.make (10, 15) --*** just to initalize the Result
			-- You need to initalize result as BIRTHDAY is not detachable
			-- or else you will get compilation error

			from
				i := 1
			until
				i > names.count
			loop
				if names[i] ~ name then
					Result := birthdays[i]
				end
				i := i + 1
			end

		ensure
			correct_result:
				Result ~ birthdays[index_of_name(name)]
		end

	get_detachable_birthday(name: STRING): detachable BIRTHDAY -- return value can be void
		-- Returns the corresponding birthday, if the `name` exists
		-- Otherwise, returns void.
		local
			i: INTEGER
		do
--			from
--				i := 1
--			until
--				i > names.count
--			loop
--				if names[i] ~ name then
--					-- if this conditional re-assignment never occurs,
--					-- Result will remain to store the default value void.
--					-- This is acceptable because the return type is `detachable Birthday`
--					Result := birthdays[i]
--				end
--				i := i + 1
--			end

			-- faster way below; since we already implemented indexOf name
			i := index_of_name(name)
			if i > 0 then
				Result := birthdays[i]
			end
		ensure
			case_of_non_void_result:
--				Result /= void implies Result ~ birthdays[index_of_name(name)]
				attached Result implies Result ~ birthdays[index_of_name(name)] -- same as above
			case_of_void_result:
--				Result = void implies not names.has (name)
				not attached Result implies not names.has (name)
		end

	celebrate (today: BIRTHDAY): like names -- anchor type: return type should be same as that of `names` so it's ARRAY[STRING]
		-- Given the date of `today`, returns a collection (anchoring type of `names`) of names.
		local
			i: INTEGER
		do
			create Result.make_empty -- empty array
			-- TODO: complete the implementation of this query.
--			Result.compare_objects -- don't really need this as we add the reference objects (strings) into the Result array
			from
				i := 1
			until
				i > birthdays.count
			loop
				if birthdays[i] ~ today then
					Result.force (names[i], Result.count + 1)
				end
				i := i + 1
			end
		ensure
			-- need 2 post conditions:
			lower_of_result: -- DO NOT MODIFY
				Result.lower = 1
			every_name_in_result_is_an_existing_name:
--				True -- TODO
				-- basically check if the resulting array of names actually exists in name array
				across
					Result is l_n
				all
					names.has (l_n)
				end
			every_name_in_result_has_birthday_today:
--				True -- TODO
				-- check if all the names in the result actually has their birthday `today`
				across
					Result is l_n
				all
					names.has (l_n) and birthdays[index_of_name(l_n)] ~ today
				end
		end
	-- You should also write boolean test queries to test the implementation of `celebrate`.
	-- You should also write violation test commands to test the two postconditions of `celebrate`.	

feature -- Auxiliary Queries
	index_of_name(name: STRING): INTEGER
		-- Returns the index of `name` in the `names` array, if it exists.
		-- Otherwise, returns 0 (invalid).
		local
			i: INTEGER
		do
			i := 1 -- assuming that names.lower = 1
			Result := 0
			across
				names is l_n
			loop
				if l_n ~ name then
					Result := i
				end
				i := i + 1
			end
		end

feature -- Command

	make_empty
		-- Creates an empty birthday book.
		do
			create names.make_empty -- equivalent to: create {ARRAY[STRING} names.make_empty
			names.compare_objects -- so you can compare the literal strings instead of the actual object (via address)
			create {LINKED_LIST[BIRTHDAY]} birthdays.make
			birthdays.compare_objects
		end

	add (name: STRING; birthday: BIRTHDAY)
		-- Adds a new record with `name` and `birthday`
		require
			non_existing_name:
--				not names.has (name)
--				not (across names is l_n some l_n ~ name end) -- same thing as above
				across names is l_n all l_n /~ name end -- same hting as above
		do
			names.force (name, names.count + 1)
--			count := count + 1 -- jackie didn't add this for some reason
			count := count + 1 -- he left it out, on purpose to get a invariant violation
			birthdays.extend (birthday)
		ensure
			count_incremented:
				count = old count + 1
			name_added_to_end:
				names[count] ~ name
			birthday_added_to_end:
				birthdays[count] ~ birthday --is_equal overwritten in `BIRTHDAY`
		end


invariant
	consistent_counts:
		Current.count = names.count and count = birthdays.count
	no_duplicate_names:
		across 1 |..| names.count is l_i all 	-- nested accross, kinda like nested forloops
			across 1 |..| names.count is l_j all
				l_i /= l_j implies names[l_i] /~ names[l_j] -- if (i != j) then(implies) !names[i].equals(names[j]) else false
			end
		end
end
