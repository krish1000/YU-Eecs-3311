note
	description: "[
					Testing suite for the DECIMAL Class covering the opposite,
					identity, root, exponent, round_to, round, negate, and absolute
					functions.
				  ]"
	author: "CD"
	date: "June 10 2019"
	revision: "1.00"


class
	DECIMAL_SECONDARY_OPERATION_TEST
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

	t1: BOOLEAN -- Opposite
		local
			d1: DECIMAL
		do
			comment ("t1: opposite - Positive, Negative, Zero Cases")

			-- Positive
			create d1.make_from_string ("4.124")
			d1 := d1.opposite
			Result := d1.precise_out ~ "-4.124"
			check Result end

			-- Negative
			create d1.make_from_string ("-4.124")
			d1 := d1.opposite
			Result := d1.precise_out ~ "4.124"
			check Result end

			-- Zero
			create d1.make_from_string ("0")
			d1 := d1.opposite
			Result := d1.precise_out ~ "0"
			check Result end
		end

	t2: BOOLEAN -- Identity
		local
			d1: DECIMAL
		do
			comment ("t2: identity - Positive, Negative, Zero Cases")
			-- Positive
			create d1.make_from_string ("4.124")
			d1 := d1.identity
			Result := d1.precise_out ~ "4.124"
			check Result end

			-- Negative
			create d1.make_from_string ("-4.124")
			d1 := d1.identity
			Result := d1.precise_out ~ "-4.124"
			check Result end

			-- Zero
			create d1.make_from_string ("0")
			d1 := d1.identity
			Result := d1.precise_out ~ "0"
			check Result end
		end

	t3: BOOLEAN -- Root
		local
			d1: DECIMAL
		do
			comment ("t3: root - Positive, Zero Cases")
			-- Positive
			create d1.make_from_string ("4.00")
			d1 := d1.sqrt
			Result := d1.out ~ "2.00"
			check Result end

			-- Positive (non-whole)
			create d1.make_from_string ("4.124")
			d1 := d1.sqrt
			Result := d1.precise_out.starts_with ("2.030763403")
			check Result end

			-- Zero
			create d1.make_from_string ("0")
			d1 := d1.sqrt
			Result := d1.precise_out ~ "0"
			check Result end
		end

	t4: BOOLEAN -- exponent
		local
			d1: DECIMAL
		do
			comment ("t4: exponent - Positive, Negative, Zero Cases")
			-- Positive ^ Positive
			create d1.make_from_string ("4.2")
			d1 := d1.exponent ("3")
			Result := d1.precise_out ~ "74.088"
			check Result end

			-- Positive ^ Negative
			create d1.make_from_string ("2.15")
			d1 := d1.exponent ("-5")
			Result := d1.precise_out.starts_with ("0.021767457")
			assert_equal ("fail:2.15^-5", "0.021767457", d1.precise_out_to (9))
			check Result end

			-- Negative ^ Positive
			create d1.make_from_string ("-1.15")
			d1 := d1.exponent ("2")
			Result := d1.precise_out ~ "1.3225"
			assert_equal("fail:-1.15^2", "1.3225", d1.precise_out)
			check Result end

			-- Negative ^ Negative
			create d1.make_from_string ("-6")
			d1 := d1.exponent ("-2")
			Result := d1.precise_out.starts_with ("0.027777777777777")
			assert_equal ("fail:-6^-2", "0.02778", d1.precise_out_to (5))
			check Result end

			-- Zero
			create d1.make_from_string ("0")
			d1 := d1.exponent("55")
			Result := d1.precise_out ~ "0"
			check Result end

			-- Power Zero
			create d1.make_from_string ("512.51")
			d1 := d1.exponent ("0")
			Result := d1.precise_out ~ "1"
			check Result end
		end

	t5: BOOLEAN -- round_to
		local
			d1: DECIMAL
		do
			comment ("t5: round_to - Positive, Negative, Zero Cases")

			create d1.make_from_string ("5512.124")
			d1 := d1.round_to (1)
			Result := d1.precise_out ~ "5512.1"
			check Result end

			create d1.make_from_string ("-5512.1245")
			d1 := d1.round_to (3)
			Result := d1.precise_out ~ "-5512.125"
			check Result end

			create d1.make_from_string ("0.00000000000000001")
			d1 := d1.round_to (1)
			Result := d1.precise_out ~ "0.00000000000000001"
			check Result end

			create d1.make_from_string ("0.0000000000")
			d1 := d1.round_to (1)
			Result := d1.precise_out ~ "0"
			check Result end

			d1 := "0.019"
			d1 := d1.round_to (1)
			Result := d1.out ~ "0.02"
			assert_equal ("fail rounding 0.019 to 1 decimal", "0.02", d1.precise_out)
			check Result end

			create d1.make_from_string ("44.2")
			d1 := d1.round_to (0)
			Result := d1.precise_out ~ "44"
			assert_equal ("fail rounding 44.2 to 0 decimals", "44", d1.precise_out)
			check
				Result
			end
		end

	t6: BOOLEAN -- round
		local
			d1: DECIMAL
		do
			comment ("t6: round - Positive, Negative, Zero Cases")
			-- Positive
			create d1.make_from_string ("125.125")
			d1.round (2)
			Result := d1.precise_out ~ "125.13"
			check Result end

			-- Negative
			create d1.make_from_string ("-125.99999999999995")
			d1.round (1)
			Result := d1.precise_out ~ "-126"
			assert_equal ("fail", "-126", d1.precise_out)
			check Result end

			-- Decimal Rounding off lots
			create d1.make_from_string ("0.01020214")
			d1.round (1)
			Result := d1.precise_out ~ "0.01"
			check Result end

			-- Zero
			create d1.make_from_string ("0")
			d1.round (1)
			Result := d1.precise_out ~ "0"
			check Result end

			create d1.make_from_string ("4.3")
			d1.round (0)
			assert_equal ("fail 4.3 rounded to 0 decimal", "4.00", d1.out)
			Result := d1.out ~ "4.00"
			check Result end

		end

	t7: BOOLEAN -- negate
		local
			d1: DECIMAL
		do
			comment ("t7: negate - Positive, Negative, Zero Cases")

			-- Positive Decimal
			create d1.make_from_string("55.0124")
			d1.negate
			Result := d1.precise_out ~ "-55.0124"
			check Result end

			-- Negative Decimal
			d1 := "-152.124"
			d1.negate
			Result := d1.precise_out ~ "152.124"
			check Result end

			-- Zero
			d1 := "0.0"
			d1.negate
			Result := d1.precise_out ~ "0"
			check Result end
		end

	t8: BOOLEAN -- absolute
		local
			d1: DECIMAL
		do
			comment ("t8: absolute - Positive, Negative, Zero Cases")
			create d1.make_from_string ("15.551234")
			d1 := d1.absolute
			Result := d1.precise_out ~ "15.551234"
			check Result end

			d1 := "-0.15235"
			d1 := d1.absolute
			Result := d1.precise_out ~ "0.15235"
			check Result end

			d1 := "0.00"
			d1 := d1.absolute
			Result := d1.precise_out ~ "0"
			check Result end
		end

	t9: BOOLEAN -- floor
		local
			d1: DECIMAL
		do
			comment ("t9: floor - Positive, Negative, Zero Cases")
			create d1.make_from_string ("15.551234")
			d1 := d1.floor
			Result := d1.precise_out ~ "15"
			check Result end

			create d1.make_from_string ("-15.551234")
			d1 := d1.floor
			Result := d1.precise_out ~ "-16"
			check Result end

			d1 := "0.15235"
			d1 := d1.floor
			Result := d1.precise_out ~ "0"
			check Result end

			d1 := "-0.15235"
			d1 := d1.floor
			Result := d1.precise_out ~ "-1"
			check Result end

			d1 := "0.00"
			d1 := d1.floor
			Result := d1.precise_out ~ "0"
			check Result end

			d1 := "1.00"
			d1 := d1.floor
			Result := d1.precise_out ~ "1"
			check Result end

			d1 := "-4.00"
			d1 := d1.floor
			Result := d1.precise_out ~ "-4"
			check Result end

		end

	t10: BOOLEAN -- ceiling
		local
			d1: DECIMAL
		do
			comment ("t9: ceiling - Positive, Negative, Zero Cases")
			create d1.make_from_string ("15.551234")
			d1 := d1.ceiling
			Result := d1.precise_out ~ "16"
			check Result end

			create d1.make_from_string ("-15.551234")
			d1 := d1.ceiling
			Result := d1.precise_out ~ "-15"
			check Result end

			d1 := "0.15235"
			d1 := d1.ceiling
			Result := d1.precise_out ~ "1"
			check Result end

			d1 := "-0.15235"
			d1 := d1.ceiling
			Result := d1.precise_out ~ "0"
			check Result end

			d1 := "0.00"
			d1 := d1.ceiling
			Result := d1.precise_out ~ "0"
			check Result end

			d1 := "1.00"
			d1 := d1.ceiling
			Result := d1.precise_out ~ "1"
			check Result end

			d1 := "-4.00"
			d1 := d1.ceiling
			Result := d1.precise_out ~ "-4"
			check Result end

		end

end
