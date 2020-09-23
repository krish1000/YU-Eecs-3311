note
	description: "[
					A series of test cases for the functions included in the BIG_INTEGER class.
					This includes is_less, is_greater, is_equal, is_string_int, divisible,
					exponentiable, is_natural, is_natural1, and is_integer."
				  ]"
	author: "JSO & CD"
	date: "June 6 2019"
	revision: "1.00"

class
	INT_PREDICATE_TEST
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

	t1: BOOLEAN -- is_less test
		local
			zero, i1, i2: BIG_INTEGER
		do
			comment ("t1: is_less - Positive, Negative, Zero Cases")
			create zero
			create i1.make_from_integer64 (0)
			create i2.make_from_integer64 (13)

			Result := zero < i1 -- Compare zero against zero
			check not Result end

			Result := zero < i2 -- Compare zero against Positive
			check Result end

			i1 := "-1"
			Result := i1 < zero -- Compare zero against Negative
			check Result end

			Result := i1 < i2 -- Positive against negative
			check Result end

			i1 := "11"
			Result := i1 < i2 -- Positive against positive
			check Result end

			i1 := "-11"
			i2:= "-42"
			Result := i2 < i1 -- Negative against negative
			check Result end

			i1 := "123456789123456789123456789"
			i2 := "123456789123456789123456788"
			Result := i2 < i1 -- Two very large numbers
			check Result end
		end

	t2: BOOLEAN -- is_greater test
		local
			zero, i1, i2: BIG_INTEGER
		do
			comment ("t1: is_greater - Positive, Negative, Zero Cases")
			create zero
			create i1.make_from_integer64 (0)
			create i2.make_from_integer64 (13)

			Result := zero > i1 -- Compare zero against zero
			check not Result end

			Result := zero > i2 -- Compare zero against Positive
			check not Result end

			i1 := "-1"
			Result := i1 > zero -- Compare zero against Negative
			check not Result end

			Result := i1 > i2 -- Positive against negative
			check not Result end

			i1 := "11"
			Result := i1 > i2 -- Positive against positive
			check not Result end

			i1 := "-11"
			i2:= "-42"
			Result := i2 > i1 -- Negative against negative
			check not Result end

			i1 := "123456789123456789123456789"
			i2 := "123456789123456789123456788"
			Result := i1 > i2 -- Two very large numbers
			check Result end
		end

	t3: BOOLEAN -- is_equal test
		local
			zero, i1, i2: BIG_INTEGER
		do
			comment ("t3: is_equal - Positive, Negative, Zero Cases")
			create zero
			create i1.make_from_integer64 (0)
			create i2.make_from_integer64 (13)

			Result := zero ~ i1 -- Compare zero against zero
			check Result end

			Result := zero ~ i2 -- Compare zero against Positive
			check not Result end

			i1 := "-1"
			Result := i1 ~ zero -- Compare zero against Negative
			check not Result end

			i2 := "1"
			Result := i1 ~ i2 -- Positive against negative
			check not Result end

			i1 := "1"
			Result := i1 ~ i2 -- Positive against positive
			check Result end

			i1 := "-11"
			i2:= "-11"
			Result := i2 ~ i1 -- Negative against negative
			check Result end

			i1 := "123456789123456789123456789"
			i2 := "123456789123456789123456789"
			Result := i1 ~ i2 -- Two very large numbers
			check Result end
		end

	t4: BOOLEAN -- is_string_int test
		local
			i1: BIG_INTEGER
		do
			comment ("t4: is_string_int - Zero, Positive, Negative, Padded Cases")
			create i1.default_create
			Result := not i1.is_string_int ("1+2") -- False case for addition
			check Result end

			Result := i1.is_string_int ("1222")
			check Result end

			Result := i1.is_string_int ("00001222")
			check Result end

			Result := i1.is_string_int ("-1222")
			check Result end

			Result := i1.is_string_int ("-001222")
			check Result end

			Result := not i1.is_string_int ("+001222")
			check Result end

			Result := not i1.is_string_int ("00-1222")
			check Result end
		end

	t5: BOOLEAN -- divisible test
		local
			i1, i2: BIG_INTEGER
		do
			comment ("t5: divisible - Zero, Positive, Negative")
			i1 := "0"
			Result := i1.divisible ("2") -- Zero by positive case
			check Result end

			Result := i1.divisible ("-2") -- Zero by negative case
			check Result end

			i1 := "3"
			i2 := "0"
			Result := i1.divisible (i2) -- Not divisible case
			check not Result end

			i1 := "4"
			i2 := "2"
			Result := i1.divisible (i2) -- Positive by positive
			check Result end

			i2 := "-2"
			Result := i1.divisible (i2) -- Positive by Negative
			check Result end

			Result := i2.divisible (i1) -- Negative by positive
			check Result end

			i1 := "-4"
			Result := i1.divisible (i2) -- Positive by Negative
			check Result end
		end


	t6: BOOLEAN -- is_natural test
		local
			i1: BIG_INTEGER
		do
			comment ("t6: is_natural - Zero, Positive, Negative")
			i1 := "0"
			Result := i1.is_natural -- Zero case
			check Result end

			i1 := "10"
			Result := i1.is_natural -- Positive case
			check Result end

			i1 := "-50"
			Result := not i1.is_natural -- Negative case
			check Result end
		end

	t7: BOOLEAN -- is_natural1 test
		local
			i1: BIG_INTEGER
		do
			comment ("t7: is_natural1 - Zero, Positive, Negative")

			i1 := "0"
			Result := not i1.is_natural1 -- Zero case
			check Result end

			i1 := "1"
			Result := i1.is_natural1 -- One case
			check Result end

			i1 := "10"
			Result := i1.is_natural1 -- Positive case
			check Result end

			i1 := "-50"
			Result := not i1.is_natural1 -- Negative case
			check Result end
		end


	t8: BOOLEAN -- is_integer
		local
			i1: BIG_INTEGER
		do
			comment("t8: is_integer - Zero, Positive, Negative cases")

			i1 := "0"
			Result := i1.is_integer -- Zero Test
			check Result end

			i1 := "4"
			Result := i1.is_integer -- Positive Test
			check Result end

			i1 := "-4"
			Result := i1.is_integer -- Negative Test
			check Result end
		end

end
