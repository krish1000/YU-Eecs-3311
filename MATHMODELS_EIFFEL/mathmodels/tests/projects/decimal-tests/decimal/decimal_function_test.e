note
	description: "[
					A series of test cases for the functions included in the DECIMAL class.
					This includes make_from_ints, make_from_string, make_with_precision, 
					as_double, and set_precision/reset_precision."
				  ]"
	author: "JSO & CD"
	date: "June 10 2019"
	revision: "1.00"

class
	DECIMAL_FUNCTION_TEST
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

			add_boolean_case (agent t10)
			add_boolean_case (agent t11)
		end

feature -- Constructor Tests

	t1: BOOLEAN
		local
			d1: DECIMAL
		do
			comment ("t1: make_from_string - Positive, negative, zero cases")

			-- Zero compared against string
			create d1.make_from_string ("0.00")
			Result := d1 ~ "0.00"
			check Result end

			-- Positive int out to 3 decimals
			create d1.make_from_string ("4")
			Result := d1.precise_out_to (3) ~ "4.000"
			check Result end

			-- Positive decimal precise out
			create d1.make_from_string ("55.1024")
			Result := d1.precise_out ~ "55.1024"
			check Result end

			-- Test 40 decimals
			create d1.make_from_string ("-12419915.0000000000000000012400000000000000000124")
			Result := d1.precise_out ~ "-12419915.0000000000000000012400000000000000000124"
			check Result end

			-- Test 40 decimals precise out to 3 decimals
			Result := d1.precise_out_to (3) ~ "-12419915.000"
			check Result end

			-- Test -0.0000... against 0
			create d1.make_from_string ("-0.000000000000")
			Result := d1.precise_out ~ "0"
		end

	t2: BOOLEAN
		local
			zero, d1, one: DECIMAL
		do
			comment("t1: make_from_int - Zero, positive, negative case")
			create d1.make_from_int (0)
			create zero.make_from_string ("0")
			Result := equal(d1, zero)
			check Result end

			create one.make_from_string ("1")
			Result := equal (d1 + one, one)

			create d1.make_from_int (45)
			Result := d1.precise_out ~ "45"
			check Result end

			Result := d1.precise_out_to (5) ~ "45.00000"
			check Result end

			create d1.make_from_int (-2)
			Result := equal(d1 + one + one, zero)
			check Result end
		end

	t3: BOOLEAN
		local
			d1, d2: DECIMAL
			s1: STRING
		do
			comment ("t2: make_with_precision - Positive, negative, zero cases")
			create d1.make_with_precision ("0", 1)
			s1 := d1.precise_out_to (1)
			Result := s1 ~ "0.0"
			check Result end

			create d1.make_with_precision ("-1512.001024218", 4)
			Result := "-1512" ~ d1.precise_out
			check Result end

			create d1.make_with_precision ("-1512.015127", 1)
			s1 := d1.precise_out
			Result := "-2000" ~ s1
			check Result end

			create d1.make_with_precision ("0", 5)
			Result := d1.precise_out ~ "0"
			check Result end

			create d1.make_with_precision ("0", 2)
			create d2.make_with_precision ("0.000", 5)
			Result := d1 ~ d2
			check Result end

			create d1.make_with_precision ("1", 5)
			create d2.make_with_precision ("1.005", 1)
			Result := d1 ~ d2
			check Result end
		end

	t4: BOOLEAN
		local
			d1: DECIMAL
			r1: REAL_64
		do
			comment ("t4: as_double - Zero, Positive, Negative Cases")
			create d1.make_from_string ("0")
			r1 := d1.as_real64
			Result := r1 ~ 0
			check Result end

			create d1.make_from_string ("42.1512")
			r1 := d1.as_real64
			Result := r1 ~ 42.1512
			check Result end

			create d1.make_from_string ("1250.4000540005400054000540005400054000540005")
			r1 := d1.as_real64
			Result := r1 ~ 1250.40005400054
			check Result end

			create d1.make_from_string ("-15.01")
			r1 := d1.as_real64
			Result := r1 ~ -15.01
			check Result end
		end

	t5: BOOLEAN
		local
			d1: DECIMAL
			s1: STRING
		do
			comment ("t5: out - Test Rounding Accuracy")
			create d1.make_from_string("0")
			assert_equal ("fail 0.out", "0.00", d1.out)
			Result := d1.out ~ "0.00"
			check Result end

			d1 := "44.125195721099"
			assert_equal ("fail 44.125195721099.out", "44.13", d1.out)
			Result := d1.out ~ "44.13"
			check Result end

			d1 := "44.12409187507"
			assert_equal ("fail 44.12409187507.out", "44.12", d1.out)
			Result := d1.out ~ "44.12"
			check Result end

			d1 := "-44.125195721099"
			assert_equal ("fail -44.125195721099.out", "-44.13", d1.out)
			Result := d1.out ~ "-44.13"
			check Result end

			d1 := "-44.12409187507"
			assert_equal ("fail -44.12409187507.out", "-44.12", d1.out)
			Result := d1.out ~ "-44.12"
			check Result end

			d1 := "-44.999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999995"
			assert_equal ("fail -44.99999....out", "-45.00", d1.out)
			Result := d1.out ~ "-45.00"
			check Result end

			d1 := "-44.995"
			assert_equal ("fail -44.995.out", "-45.00", d1.out)
			Result := d1.out ~ "-45.00"
			check Result end

			d1 := "-44.994"
			assert_equal ("fail -44.994.out", "-44.99", d1.out)
			Result := d1.out ~ "-44.99"
			check Result end


			create d1.make_from_string ("12323.252111")
			assert_equal ("fail 12323.252111.out", "12323.25", d1.out)
			Result := d1.out.is_equal ("12323.25")
			check Result end

			create d1.make_from_string ("12323.255111")
			assert_equal ("fail 12323.255111.out", "12323.26", d1.out)
			Result := d1.out.is_equal ("12323.26")
			check Result end

			create d1.make_from_string ("0.0001")
			assert_equal ("fail 0.0001.out", "0.00", d1.out)
			Result := d1.out.is_equal ("0.00")
			check Result end

			create d1.make_from_string ("0.0101")
			assert_equal ("fail 0.0101.out", "0.01", d1.out)
			Result := d1.out.is_equal ("0.01")
			check Result end

			create d1.make_from_string ("0.011")
			assert_equal ("fail 0.011.out", "0.01", d1.out)
			Result := d1.out.is_equal ("0.01")
			check Result end

			create d1.make_from_string ("0.019")
			assert_equal ("fail 0.019.out", "0.02", d1.out)
			s1 := d1.out
			Result := s1.is_equal ("0.02")
			check Result end

			create d1.make_from_string ("0.015")
			assert_equal ("fail 0.015.out", "0.02", d1.out)
			s1 := d1.out
			Result := s1.is_equal ("0.02")
			check Result end

			create d1.make_from_string ("0.005")
			assert_equal ("fail 0.005.out", "0.01", d1.out)
			Result := d1.out.is_equal ("0.01")
			check Result end

			create d1.make_from_string ("0.05")
			assert_equal ("fail 0.05.out", "0.05", d1.out)
			Result := d1.out.is_equal ("0.05")
			check Result end

			create d1.make_from_string ("0.01")
			assert_equal ("fail 0.01.out", "0.01", d1.out)
			Result := d1.out.is_equal ("0.01")
			check Result end

			create d1.make_from_string ("0.5")
			assert_equal ("fail 0.5.out", "0.50", d1.out)
			Result := d1.out.is_equal ("0.50")
			check Result end

			create d1.make_from_string ("0.3")
			assert_equal ("fail 0.30.out", "0.30", d1.out)
			Result := d1.out.is_equal ("0.30")
			check Result end

			create d1.make_from_string ("0.0462342345234523")
			assert_equal ("fail 0.0462342345234523.out", "0.05", d1.out)
			Result := d1.out.is_equal ("0.05")
			check Result end

			create d1.make_from_string ("100.001012131")
			assert_equal ("fail 100.001012131.out", "100.00", d1.out)
			Result := d1.out.is_equal ("100.00")
			check Result end

			create d1.make_from_string ("100234234234")
			assert_equal ("fail 100234234234.out", "100234234234.00", d1.out)
			Result := d1.out.is_equal ("100234234234.00")
			check Result end

			create d1.make_from_string ("100234.234234")
			assert_equal ("fail 100234.234234.out", "100234.23", d1.out)
			Result := d1.out.is_equal ("100234.23")
			check Result end
		end

	t6: BOOLEAN -- Test make_from_big_int, as_big_int, as_int
		local
			d1: DECIMAL
			i1: BIG_INTEGER
		do
			comment ("t6: make_from_big_int - Test with 44")
			i1 := "44"
			create d1.make_from_big_int (i1)
			Result := d1.is_integer
			check
				Result
			end

			Result := d1.as_big_int ~ i1
			check
				Result
			end
		end

	t7: BOOLEAN -- Test make_from_rational
		local
			d1: DECIMAL
			r1: RATIONAL
		do
			comment ("t7: make_from_rational - Test with 35/7")
			r1 := "35/7"
			create d1.make_from_rational (r1)
			Result := d1.out ~ "5.00"
			check
				Result
			end
		end

	t10: BOOLEAN -- set_precision: doesn't pass right now, set_precision and reset_precision "may not work as expected"
		local
			d1: DECIMAL
			s1: STRING
		do
			comment ("t10: set_precision - Zero, Positive, Negative cases")
			create d1.make_from_string("4.00001")
			d1.set_precision (1)
			s1 := d1.precise_out
			Result := s1 ~ "4"
			assert_equal ("4.00001.set_precision(1)", "4", s1)
			check Result end -- fails, s1 = "4.00001" still for some reason

			-- Not sure if this is how it's supposed to work
			create d1.make_from_string ("4.00001")
			d1.set_precision (10)
			s1 := d1.precise_out
			assert_equal("4.00001.set_precision(10)", "4.00001", s1)
			Result := s1 ~ "4.00001"
			check Result end
		end

	t11: BOOLEAN -- reset_precision: doesn't pass right now, set_precision and reset_precision "may not work as expected"
		local
			d1: DECIMAL
			s1: STRING
		do
			comment ("t11: reset_precision - Zero, Positive, Negative cases")

			create d1.make_from_string("4.00001")
			d1.set_precision (1)
			s1 := d1.precise_out
			Result := s1 ~ "4"
			assert_equal("4.00001.set_precision(1)", "4", s1)
			check Result end -- fails, s1 = "4.00001" still for some reason
			d1.reset_precision

			d1 := d1 + "0.00001"
			s1 := d1.precise_out
			Result := s1 ~ "4.00001"
			assert_equal("reset_precision", "4.00001", s1)
			check Result end
		end

end
