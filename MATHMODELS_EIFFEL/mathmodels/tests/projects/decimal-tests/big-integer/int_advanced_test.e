note
	description: "Summary description for {INT_ADVANCED_TESTS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	INT_ADVANCED_TEST
inherit
	ES_TEST
create
	make

feature {NONE}
	make
		do
			add_boolean_case (agent t1)
			add_boolean_case (agent t2)
			add_boolean_case (agent t3)
		end

feature -- Misc. Advanced Testing

	MAX_VALUE: INTEGER_64 = 9223372036854775807
	MIN_VALUE: INTEGER_64 = -9223372036854775808
	MAX64_PLUS_ONE: BIG_INTEGER
		attribute
			Result := "9223372036854775808"
		end
	MIN64_MINUS_ONE: BIG_INTEGER
		attribute
			Result := "-9223372036854775809"
		end

	t1: BOOLEAN -- Proof of larger than int64 capabilities
		local
			imin, imax: INTEGER_64
			one, iminm, imaxp: BIG_INTEGER
			max64, min64: BIG_INTEGER
		do
			comment("t1: int64 rolls over, but not big int")
			create max64.make_from_integer64 (9223372036854775807)
			create min64.make_from_integer64 (-9223372036854775808)
			one := "1"
			imax := MAX_VALUE  + 1
			Result := imax = -9223372036854775808
			check Result end

			imin := MIN_VALUE  - 1
			Result := imin = 9223372036854775807
			check Result end
			---
			imaxp := max64 + one
			Result := imaxp ~ MAX64_PLUS_ONE
			check Result end
			iminm := min64 - one
			Result := iminm ~ MIN64_MINUS_ONE
			check Result end
		end

	t2: BOOLEAN -- Order of Operations test
		local
			i1, i2, i3, i4: BIG_INTEGER
		do
			comment("t2: Multiple Operations")
			i1 := "4"
			i2 := "6"
			i3 := "2"
			i4 := i1 * i2 // i3 ^ 3
			Result := i4 ~ "3"
		end


	t3: BOOLEAN -- Conversion Test
		local
			i1, i2: BIG_INTEGER
			s1: STRING
			i64: INTEGER_64
			i32: INTEGER_32
		do
			comment ("t3: Conversion - String, Int32, Int64")
			create i1.make_from_string ("5")
			s1 := "6"
			i64 := 2147483648
			i32 := 3

			Result := i1 + 6 ~ 11
			check Result end

			i2 := i1 + i32 + s1 + i64
			Result := i1 + s1 + i64 + i32 ~ "2147483662"
			check Result end
		end

end
