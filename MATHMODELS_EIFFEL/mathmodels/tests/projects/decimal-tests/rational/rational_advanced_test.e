note
	description: "[
					Contains test cases for advanced parts of the RATIONAL class,
					including conversion across different elements.
				  ]"
	author: "JSO, CD"
	date: "June 18, 2019"
	revision: "1.00"


class
	RATIONAL_ADVANCED_TEST
inherit
	ES_TEST

create
	make

feature{NONE} -- Add tests

	make
		do
			add_boolean_case (agent t1)
		end

feature -- Tests

	t1:BOOLEAN
		local
			rat1, rat2: RATIONAL
			r32: REAL_32
			r64: REAL_64
			s: STRING
		do
			comment ("t1: Conversion Test - String, Real32, Real64, Rational")
			create rat1.make_from_string ("5")
			r32 := 3
			r64 := 2147483648
			s := "6"

			Result := rat1 + 6.0 ~ 11.0
			check Result end

			rat2 := rat1 + r32 + s + r64
			Result := rat2 ~ "2147483662"
			check Result end
		end
end
