note
	description: "[
		Calculate sum and product of 
		iterable collections of numbers
		]"
	author: "JSO"
	date: "$Date$"
	revision: "$Revision$"

expanded class
	ITERABLE_ARITHMETIC[G -> NUMERIC create default_create end]

feature
	zero: G
		do
			create Result
			Result := Result.zero
		ensure class
		end

	one: G
		do
			create Result
			Result := Result.one
		ensure class
		end

	sum(collection: ITERABLE[G]): G
		do
			Result := zero
			across collection as it loop
				Result := Result + it.item
			end
		ensure class
		end

	product(collection: ITERABLE[G]): G
		do
			Result := one
			across collection as it loop
				Result := Result * it.item
			end
		ensure class
		end

	sumf(collection: ITERABLE[G]; f: FUNCTION[G, G]): G
		do
			create Result.default_create
			Result := Result.zero
			across  collection as it loop
				Result := Result + f(it.item)
			end
		ensure class
		end

	productf(collection: ITERABLE[G]; f: FUNCTION[G, G]): G
		do
			create Result.default_create
			Result := Result.one
			across  collection as it loop
				Result := Result * f(it.item)
			end
		ensure class
		end

	sum_array(an_array: ARRAY[G]; f: FUNCTION [INTEGER, INTEGER, G, G] ): G
			-- INTEGER is array count
			-- INTEGER array index
			-- G element in the array at that index
			-- agent f(an_array.count, i, a[i])
		do
			create Result.default_create
			Result := Result.zero
			across  1 |..| an_array.count as it loop
				Result := Result + f(an_array.count, it.item, an_array[it.item])
			end
		ensure class
		end


	divmod(i,j: INTEGER): SEQ[INTEGER]
		require j > 0
		local
			l_quotient, l_remainder: INTEGER
		do
			create Result.make_empty
			l_quotient := i//j
			l_remainder := i \\j
			Result.append (l_quotient)
			Result.append (l_remainder)
		ensure
			class
			Result.count = 2
			i = Result[1] * j + Result[2]
			0 <= Result[2] and Result[2] < j

		end

	divmod_64(i,j: INTEGER_64): SEQ[INTEGER_64]
		require j > 0
		local
			l_quotient, l_remainder: INTEGER_64
		do
			create Result.make_empty
			l_quotient := i//j
			l_remainder := i \\j
			Result.append (l_quotient)
			Result.append (l_remainder)
		ensure
			class
			Result.count = 2
			Result[1] = i // j
			Result[2] = i \\ j
		end



note
	secret: "[
		A client of this class does not need to know what kind of
		collection to operate on arithmetically, only that 
		the collection is iterable and its elements are of 
		numeric type
		]"

end
-- agents for summation and product
-- max/min with precoditions that the collection
-- should contain at least one element
