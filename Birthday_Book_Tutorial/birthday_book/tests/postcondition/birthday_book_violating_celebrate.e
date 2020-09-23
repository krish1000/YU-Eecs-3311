note
	description: "Summary description for {BIRTHDAY_BOOK_VIOLATING_CELEBRATE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BIRTHDAY_BOOK_VIOLATING_CELEBRATE

inherit
	BIRTHDAY_BOOK
		redefine
			celebrate
		end

create
	make_empty

feature -- command
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
					Result.force (names[i] + "poopy", Result.count + 1) -- wrong implementation
				end
				i := i + 1
			end
		end

end
