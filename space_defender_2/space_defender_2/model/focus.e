note
	description: "Summary description for {FOCUS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	FOCUS

create
	make

feature {NONE} -- Initialization

	make(s : INTEGER)
			-- Initialization for `Current'.
		do
			multiplier := 10 -- so i knonw if its an error
			size := s
			create list.make
			if s = 4 then
				-- create gold orb
				list.extend (3) -- worth 3
				multiplier := 3
			elseif s  = 3 then
				-- create bronze orb
				list.extend (1) -- worth 1
				multiplier := 2
			end
		end

feature -- Attributes
	size : INTEGER
	list : LINKED_LIST[ANY]
	multiplier : INTEGER

feature -- Commands

	set_size(x : INTEGER)
		do
			size := x
		end
feature {SCORE, FOCUS} -- hidden
	add_score(item : ANY)
		do
			list.extend (item)
		end

	get_score : INTEGER
		do
			across
				list is item
			loop
				if attached {INTEGER} item as l_i then
					Result := l_i + result
				elseif attached {FOCUS} item as l_f then
					if l_f.size = l_f.list.count then
						Result := result + (l_f.get_score)*l_f.multiplier
					else
						Result := result + l_f.get_score
					end
				end
			end
		end
end
