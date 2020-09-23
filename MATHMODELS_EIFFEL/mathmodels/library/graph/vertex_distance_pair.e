note
	description: "Summary description for {VERTEX_DISTANCE_PAIR}."
	author: "JSO and JW"
	date: "$Date$"
	revision: "$Revision$"

class
	VERTEX_DISTANCE_PAIR[G -> attached ANY]

inherit
	COMPARABLE

create
	make

convert
	make ({TUPLE[G, INTEGER_64]})

feature -- Attributes

	vertex: G
	distance: INTEGER_64 assign set_distance

feature -- Constructor

	make (t: TUPLE[v: G; d: INTEGER_64])
		do
			vertex := t.v
			distance := t.d
		end

feature -- Commands

	set_distance (d: INTEGER_64)
		do
			distance := d
		end

feature -- Comparable

	is_less alias "<" (other: like Current): BOOLEAN
			-- Is current object less than `other'?
			-- Note. Library class {PRIORITY_QUEUE}.item returns the MAX element.
			-- In order to make it work as a MIN heap, reverse the `less than` relation.
		do
			Result := distance < other.distance
		end
end
