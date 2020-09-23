note
	description: "[
					A series of test cases for the functions included in the RATIONAL class.
					This includes make_from_ints, make_from_string, creation from floats, 
					as_real64, and round_to."
				  ]"
	author: "JSO & CD"
	date: "June 10 2019"
	revision: "1.00"

class
	RATIONAL_FUNCTION_TEST
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
			add_boolean_case (agent t9)
			add_boolean_case (agent t10)
		end

feature -- Tests

	t1: BOOLEAN -- make_from_ints
		local
			i1, i2: BIG_INTEGER
			ii1, ii2: INTEGER
			r1, r2: RATIONAL
		do
			comment ("t1: make_from_ints - Positive, Negative cases (from both INTEGER and BIG_INTEGER classes")

			i1 := "10"
			i2 := "23"
			ii1 := 10
			ii2 := 23
			create r1.make_from_ints (i1, i2)
			create r2.make (ii1, ii2)
			Result := r1 ~ r2 -- Positive and positive
			check Result end

			i1 := "10"
			i2 := "-23"
			ii1 := 10
			ii2 := -23
			create r1.make_from_ints (i1, i2)
			create r2.make (ii1, ii2)
			Result := r1 ~ r2 -- Positive and negative
			check Result end

			i1 := "-10"
			i2 := "23"
			ii1 := -10
			ii2 := 23
			create r1.make_from_ints (i1, i2)
			create r2.make (ii1, ii2)
			Result := r1 ~ r2 -- Negative and positive
			check Result end

			i1 := "-10"
			i2 := "-23"
			ii1 := -10
			ii2 := -23
			create r1.make_from_ints (i1, i2)
			create r2.make (ii1, ii2)
			Result := r1 ~ r2 -- Negative and negative
			check Result end
		end



	t2: BOOLEAN -- make_from_string
		local
			r1, r2: RATIONAL
		do
			comment ("t2: make_from_string - Positive, Negative Cases")
			r1 := "123456"
			create r2.make_from_ints ("123456", "1")
			Result := r1 ~ r2 -- Positive Positive
			check Result end

			r1 := "000/001"
			create r2.make_from_ints ("0", "1")
			Result := r1 ~ r2 -- Zero
			check Result end

			r1 := "-1/2"
			create r2.make_from_ints ("-1", "2")
			Result := r1 ~ r2 -- Negative positive
			check Result end

			r1 := "2/-3"
			create r2.make_from_ints ("2", "-3") -- Positive Negative
			Result := r1 ~ r2
			check Result end

			r1 := "-2/-3"
			create r2.make_from_ints ("-2", "-3") -- Negative negative
			Result := r1 ~ r2
			check Result end
		end

	t3: BOOLEAN -- make RATIONAL number from a float number
		local
			r1, r2: RATIONAL
		do
			comment ("t3: Float Creation")

			r1 := "-45.783"
			r2 := "-45.784"
			Result := r1 > r2
			check Result end

			r2 := "-45783/1000"
			Result := r1 ~ r2
			check Result end

			r2 := "-45.784"
			Result := r1 /~ r2
			check Result end

			r2 := "-45.7833"
			Result := r1 /~ r2
			check Result end

			r1 := "-12"
			r2 := "-12.000000000000000000000000000000001"
			Result := r1 > r2
			check Result end

			Result := r1 /~ r2
		end


	t4: BOOLEAN -- as_real64
		local
			r1: RATIONAL
			real1, real2: REAL_64
		do
			comment ("t4: as_real64 - Positive, Negative Cases")
			r1 := "123456"
			real1 := 123456
			Result := r1.as_real64 ~ real1
			assert_equal("123456.as_real64", real1.out, r1.as_real64.out)
			check Result end

			r1 := "0/1"
			r1 := "000/001"
			real1 := 0
			Result := r1.as_real64 ~ real1
			assert_equal("0/1.as_real64", real1.out, r1.as_real64.out)
			check Result end

			r1 := "-0.5"
			real1 := -0.5
			real2 := r1.as_real64
			Result := real2 ~ real1
			assert_equal("-0.5.as_real64", real1.out, r1.as_real64.out)
			check Result end

			r1 := "0.25"
			real1 := 1 / 4
			Result := r1.as_real64 ~ real1
			assert_equal("0.25.as_real64", real1.out, r1.as_real64.out)
			check Result end

			r1 := "1/4"
			real1 := 1 / 4
			real2 := r1.as_real64
			Result := real2 ~ real1
			assert_equal("1/4.as_real64", real1.out, r1.as_real64.out)
			check Result end

			r1 := "2/-3"
			real1 := 2 / -3
			Result := r1.as_real64.out.substring (1, 18) ~ real1.out.substring(1, 18)
			assert_equal("2/-3.as_real64", r1.as_real64.out.substring (1, 18), real1.out.substring(1, 18)) -- only compare first 18 digits because of float
			check Result end
		end

	t5: BOOLEAN -- round_to
		local
			r1, r2: RATIONAL
		do
			comment ("t5: round_to - Positive and Negative Cases")
			r1 := "123.458890"
			Result := r1.round_to (3) ~ "123.459"
			check Result end

			r1 := "-567.098765432"
			Result := r1.round_to (5) ~ "-567.09877"
			check Result end

			r1 := "1/4"
			r2 := r1.round_to (1)
			Result := r2 ~ "0.3"
			check Result end

			r1 := "-1/8"
			r2 := r1.round_to (2)
			Result := r2 ~ "-0.13"
			check Result end
		end

	t6: BOOLEAN -- string_is_fraction
		local
			s1: STRING
			r1: RATIONAL
		do
			comment ("t6: string_is_fraction - Test with -55/")
			create r1
			s1 := "-55/"
			Result := not r1.string_is_fraction(s1)
		end

	t7: BOOLEAN -- string_is_fraction
		local
			s1: STRING
			r1: RATIONAL
		do
			comment ("t7: string_is_fraction - Test with 5/")
			create r1
			s1 := "5/"
			Result := not r1.string_is_fraction(s1)
		end

	t8: BOOLEAN -- string_is_fraction
		local
			s1: STRING
			r1: RATIONAL
		do
			comment ("t8: string_is_fraction - Test with -1/")
			create r1
			s1 := "-1/"
			Result := not r1.string_is_fraction(s1)
		end

	t9: BOOLEAN -- string_is_fraction
		local
			s1: STRING
			r1: RATIONAL
		do
			comment ("t9: string_is_fraction - Test with /1")
			create r1
			s1 := "/1"
			Result := not r1.string_is_fraction(s1)
		end

	t10: BOOLEAN -- string_is_fraction
		local
			s1: STRING
			r1: RATIONAL
		do
			comment ("t10: string_is_fraction - Test with /-1")
			create r1
			s1 := "/-1"
			Result := not r1.string_is_fraction(s1)
		end




end
