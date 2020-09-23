note
	description: "Summary description for {PLUSONE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	PLUS_ONE
create
	make
feature{NONE}
	make(an_array: like a)
		do
			a := an_array
		end
feature
	a: ARRAY[INTEGER]
		-- the array to be converted and incremented
		-- e.g. for <<8, 7, 4>> output 875

	val: INTEGER
			-- e.g. for array <<8, 7, 4>>,
			-- Result = (8*10^2 + 7*10^1 + 4*10^0) + 1
		require
			a.count >= 1
			across a as cr all
			 0 <= cr.item and cr.item <= 9
			end
		local
			n,i, factor: INTEGER
		do
			from
				i := 1
				n := a.count
			until
				i > n
			loop
				check n-i >= 0 end
				factor := (10^(n-i)).truncated_to_integer  -- power returns a real
				Result := Result + a[i]*factor
				i := i + 1
			end
			Result := Result + 1
		ensure

			-- Result = (Σi ∈ 1..n: a[i] * 10^(n-i) )+1 where n = a.count
			Result = {ITERABLE_ARITHMETIC[INTEGER]}.sum_array(a, agent term(?, ?, ?)) + 1
			-- term(?,?,?) is bound to term(n, i, a[i])
		end

	term(n: INTEGER; i:INTEGER; a_digit: INTEGER): INTEGER
			-- n: is the array count
			-- i: is the array index
			-- a_digit: is the array element
		do
			Result := a_digit*(10^(n-i)).truncated_to_integer
		end
end
