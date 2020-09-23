note
	description: "[
		Summation over a collection according to an integer expression
	]"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

expanded class
	NUMERIC_ITERABLE[G -> attached ANY]
feature
	sumf(a_collection: ITERABLE[G]; f: FUNCTION[G, INTEGER]): INTEGER
			-- sum `a_collection` according to function f[g] ∈ INT
		do
			across a_collection as l_item loop
				Result := Result + f(l_item.item)
			end
		ensure
			class
		end

note
	usage: "[
		fcount(s: STRING): INTEGER
			do
				Result := s.count
			end

		t1: BOOLEAN
				-- (Σs ∈ <<"abb", "bnmm">>: s.count) = 7
			local
				sigma: NUMERIC_ITERABLE[STRING]
			do
				comment("t1: test sumf")
				Result :=
					sigma.sumf (<<"abb", "bnmm">>, agent fcount)
					= 7
			end
		]"
end
