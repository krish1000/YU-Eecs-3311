note
	description: "Summary description for {VERTEX}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	VERTEX [G -> COMPARABLE]

inherit
	COMPARABLE
		redefine
			is_equal,
			out
		end

create
	make

convert
	make({G})

feature {NONE} -- Initialization

	make(g: G)
			-- Initialization for `Current'.
		do
			item := g
			name := "v:" + g.out
		end

feature -- Queries

	name: STRING

	item: G

	is_less alias "<" (other: like Current): BOOLEAN
		do
			Result := item < other.item
		end

	out: STRING
		do
			Result := name
		end

	is_equal(other: like Current): BOOLEAN
		do
			Result := item ~ other.item
		end



end
