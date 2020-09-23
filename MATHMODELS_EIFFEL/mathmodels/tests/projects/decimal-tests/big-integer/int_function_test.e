note
	description: "[
					A series of test cases for the functions included in the BIG_INTEGER class.
					This includes make_from_integer64, make_from_string, zero, one, negate,
					absolute, as_integer64, and out. 
					as_real64, and round_to."
				  ]"
	author: "JSO & CD"
	date: "June 10 2019"
	revision: "1.00"
	author: "JSO, CD"
	date: "June 6, 2019"
	revision: "1.00"


class
	INT_FUNCTION_TEST
inherit
	ES_TEST

create
	make

feature {NONE} -- Initialization

	make
		do
			add_boolean_case (agent t1)
			add_boolean_case (agent t2)
			add_boolean_case (agent t3)
			add_boolean_case (agent t4)
			add_boolean_case (agent t5)
			add_boolean_case (agent t6)
			add_boolean_case (agent t7)
			add_boolean_case (agent t8)
		end

feature -- Tests

	t1: BOOLEAN -- make_from_string test
		local
			i: BIG_INTEGER
		do
			comment ("t1: make_from_string - Positive, Padded, Zero, Negative Cases")
			create i.make_from_string ("12")
			check i.out ~ "12" and i ~ "12" end

			create i.make_from_string ("13")
			check i.out ~ "13" and i ~ "13" end

			create i.make_from_string ("003")
			check i.out ~ "3" and i ~ "3" end

			create i.make_from_string ("-003")
			check i.out ~ "-3" and i ~ "-3" end
			check i ~ "-000000000003" end

			create i.make_from_string ("-311")
			check i.out ~ "-311" and i ~ "-311" end

			create i.make_from_string ("-0")
			check i.out ~ "0" and i ~ "0"  end

			create i.make_from_string ("0")
			check i.out ~ "0" and i ~ "0"  end

			create i.make_from_string ("0")
			check i.out ~ "0" and i ~ "0"  end

			create i.make_from_string ("23")
			Result := i.out ~ "23" and i ~ "23"
		end

	t2: BOOLEAN -- make_from_integer64 test
		local
			i1: BIG_INTEGER
		do
			comment ("t2: make_from_integer64 - Padded, Negative, Zero Cases")
			create i1.make_from_integer64 (003)
			check i1.out ~ "3" and i1 ~ "3" end

			create i1.make_from_integer64 (-003)
			check i1.out ~ "-3" and i1 ~ "-3" end
			check i1 ~ "-000000000003" end

			create i1.make_from_integer64 (-311)
			check i1.out ~ "-311" and i1 ~ "-311" end

			create i1.make_from_integer64 (-50219327415)
			check i1.out ~ "-50219327415" and i1 ~ "-50219327415" end

			create i1.make_from_integer64 (-9223372036854775808)
			check i1.out ~ "-9223372036854775808" and i1 ~ "-9223372036854775808" end

			create i1.make_from_integer64 (0)
			check i1.out ~ "0" and i1 ~ "0"  end

			create i1.make_from_integer64 (23)
			Result := i1.out ~ "23" and i1 ~ "23"
		end

	t3: BOOLEAN -- zero test
		local
			i1: BIG_INTEGER
		do
			comment ("t3: zero - Used in operation")

			i1 := "4"
			Result := i1 + i1.zero ~ "4"
			check Result end
		end

	t4: BOOLEAN -- one test
		local
			i1: BIG_INTEGER
		do
			comment ("t4: one - Used in operation")
			i1 := "4"
			Result := i1 + i1.one ~ "5"
			check Result end
		end

	t5: BOOLEAN -- negate test
		local
			i1: BIG_INTEGER
		do
			comment ("t5: negate - Zero, Positive, Negative Cases")

			i1 := "0"
			i1.negate
			Result := i1 ~ "0" -- negation of zero
			check Result end

			i1 := "4"
			i1.negate
			Result := i1 ~ "-4" -- negation of positive
			check Result end

			i1 := "-5"
			i1.negate
			Result := i1 ~ "5" -- negation of negative
			check Result end
		end

	t6: BOOLEAN -- absolute test
		local
			i1: BIG_INTEGER
		do
			comment("t6: absolute - Zero, Positive, and Negative Cases")

			i1 := "0"
			Result := i1.absolute ~ "0" -- Zero Case
			check Result end

			i1 := "4"
			Result := i1.absolute ~ "4" -- Positive Case
			check Result end

			i1 := "-4"
			Result := i1.absolute ~ "4" -- Negative Case
			check Result end
		end

	t7: BOOLEAN -- as_integer64 test
		local
			i1: BIG_INTEGER
			i2: INTEGER_64
		do
			comment ("t7: as_integer64 - Zero, Positive, Negative, Max, and Min Cases")

			i1 := "0"
			i2 := 0
			Result := i1.as_integer64 = i2 -- Zero Case
			check Result end

			i1 := "5"
			i2 := 5
			Result := i1.as_integer64 = i2 -- Positive Case
			check Result end

			i1 := "-5"
			i2 := -5
			Result := i1.as_integer64 = i2 -- Negative Case
			check Result end

			i1 := "922372036854775807"
			i2 := 922372036854775807
			Result := i1.as_integer64 = i2 -- Max int64 case
			check Result end

			i1 := "-9223372036854775808"
			i2 := -9223372036854775808
			Result := i1.as_integer64 = i2 -- Min int64 case
			check Result end
		end

	t8: BOOLEAN -- out test
		local
			i1: BIG_INTEGER
		do
			comment ("t8: out - Zero, Positive, Negative")

			i1 := "0"
			Result := i1.out ~ "0" -- Zero
			check Result end

			i1 := "5"
			Result := i1.out ~ "5" -- Positive
			check Result end

			i1 := "-5"
			Result := i1.out ~ "-5" -- Negative
			check Result end
		end


end
