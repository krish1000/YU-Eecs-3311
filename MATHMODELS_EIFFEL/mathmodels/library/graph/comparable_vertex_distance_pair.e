note
	description: "Summary description for {COMPARABLE_VERTEX_DISTANCE_PAIR}."
	author: "JSO and JW"
	date: "$Date$"
	revision: "$Revision$"

class
	COMPARABLE_VERTEX_DISTANCE_PAIR[G -> COMPARABLE]

inherit
	VERTEX_DISTANCE_PAIR[G]
		redefine
			is_less
		end

create
	make

convert
	make ({TUPLE[G, INTEGER_64]})

feature -- Comparable

	is_less alias "<" (other: like Current): BOOLEAN
			-- Is current object less than `other'?
			-- Note. Library class {PRIORITY_QUEUE}.item returns the MAX element.
			-- In order to make it work as a MIN heap, reverse the `less than` relation.
		do
			if distance < other.distance then
				Result := true
			elseif distance > other.distance then
				Result := false
			else
				Result := vertex < other.vertex
			end
		end
end
