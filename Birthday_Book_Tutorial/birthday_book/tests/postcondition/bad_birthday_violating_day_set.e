note
	description: "Summary description for {BAD_BIRTHDAY_VIOLATING_DAY_SET}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BAD_BIRTHDAY_VIOLATING_DAY_SET

inherit
	BIRTHDAY
		redefine
			make
		end

create
	make

feature -- redefined command
	make (m: INTEGER; d: INTEGER)
		do
			-- wrong implementation*
			month := m
			day := m -- This line should trigger a postcondition violation with tag `day_set`
			-- all postconditions from BIRTHDAY will be inherited***
		end

end
