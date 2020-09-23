note
	description: "Numerical array with sum and product"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	NUM_ARRAY [G ->
	{COMPARABLE
		rename
			copy as comparable_copy,
			default_create as comparable_default_create,
			out as comparable_out,
			twin as comparable_twin
			end, NUMERIC}
	create default_create end]



inherit
	ARRAY [G]
		redefine
			is_equal
		end

create
	make_empty,
	make_filled,
	from_array,
	make_from_array

convert
	from_array ({ARRAY [G]})

feature {NONE}

	from_array (a: ARRAY [G])
		do
			make_from_array (a)
			compare_objects
		end

feature --is_equal
	is_equal (other: like Current): BOOLEAN
			-- Is array made of the same items as `other'?
		local
			i: INTEGER
		do

			from
				Result := True
				i := lower
			until
				not Result or i > upper
			loop
				Result := item (i) ~ other.item (i)
				i := i + 1
			end
		end

feature -- sum and product



	sum_all (factor: FUNCTION [G, INTEGER_32, G]): G
			-- summation quantifier that sums all factors of elements of the array
		local
			i: INTEGER_32
		do
			from
				create Result.default_create
				Result := Result.zero
				i := 1
			until
				i > count
			loop
				Result := Result + factor.item ([item (i), i])
				i := i + 1
			end
		end

	element (g: G; i: INTEGER_32): G
		do
			Result := g
		ensure
			Result = g
		end

	sum: G
		local
			zero: G
			i: INTEGER_32
		do
			from
				create zero
				Result := zero
				i := lower
			until
				i > upper
			loop
				Result := Result + item (i)
				i := i + 1
			end
		ensure
			Result = sum_all (agent element (?, ?))
		end

end -- class NUM_ARRAY

