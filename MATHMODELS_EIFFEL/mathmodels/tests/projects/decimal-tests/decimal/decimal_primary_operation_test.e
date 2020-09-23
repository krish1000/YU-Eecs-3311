note
	description: "[
					Testing suite for the DECIMAL Class covering the +, -, *, and / operation capabilities.
				  ]"
	author: "Connor Dear, Jonathan Ostroff"
	date: "June 18 2019"
	revision: "1.00"

class
	DECIMAL_PRIMARY_OPERATION_TEST

inherit
	ES_TEST

create
	make

feature {NONE} -- Initialization

	make
		do
--			add_boolean_case (agent t0)
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
			add_boolean_case (agent t11)
			add_boolean_case (agent t12)

		end

feature -- Tests

	

	t1: BOOLEAN
		local
			d1: DECIMAL
			d2: DECIMAL
			answer: DECIMAL
		do
			comment ("t1: plus - Positive + _______")

				-- Basic addition with decimals
			create d1.make_from_string ("123.123")
			create d2.make_from_string ("42.5")
			answer := d1 + d2
			Result := answer.precise_out ~ "165.623"
			check
				Result
			end
			Result := answer.out ~ "165.62"
			check
				Result
			end

				-- Basic addition (positive) with no decimals
			create d1.make_from_string ("1285")
			create d2.make_from_string ("1387")
			answer := d1 + d2
			Result := answer.precise_out ~ "2672"
			check
				Result
			end
			Result := answer.out ~ "2672.00"
			check
				Result
			end

				-- Two decimals added together to a whole number
			create d1.make_from_string ("99.9")
			create d2.make_from_string ("2.1")
			answer := d1 + d2
			Result := equal (answer.precise_out, "102")
			check
				Result
			end
			Result := equal (answer.out, "102.00")
			check
				Result
			end

				-- Longer decimal addition, rounding via .out
			create d1.make_from_string ("100000000000.0000000000001")
			create d2.make_from_string ("1000.001100110011023")
			answer := d1 + d2
			Result := equal (answer.precise_out, "100000001000.001100110011123")
			check
				Result
			end
			Result := equal (answer.out, "100000001000.00")
			check
				Result
			end

				-- Two positive whole numbers create a whole number
			create d1.make_from_string ("198.00")
			create d2.make_from_string ("2")
			answer := d1 + d2
			Result := equal (answer.precise_out, "200")
			check
				Result
			end
			Result := equal (answer.out, "200.00")
			check
				Result
			end

				-- Two positives, padded zeros creating a whole number
			create d1.make_from_string ("098.1")
			create d2.make_from_string ("0013.9")
			answer := d1 + d2
			Result := equal (answer.precise_out, "112")
			check
				Result
			end
			Result := equal (answer.out, "112.00")
			check
				Result
			end

				-- Adding a negative with padded zeros
			create d1.make_from_string ("202")
			create d2.make_from_string ("-02.0000")
			answer := d1 + d2
			Result := equal (answer.precise_out, "200")
			check
				Result
			end
			Result := equal (answer.out, "200.00")
			check
				Result
			end
		end

	t2: BOOLEAN -- Negative + _______
		local
			d1, d2, answer: DECIMAL
		do
			comment ("t2: plus - Negative + _________")
				-- Basic addition positive + negative and padded 0's, equal zero
			create d1.make_from_string ("177.00")
			create d2.make_from_string ("-000177.0")
			answer := d1 + d2
			Result := equal (answer.precise_out, "0")
			check
				Result
			end
			Result := equal (answer.out, "0.00")
			check
				Result
			end

				-- Two negatives added together
			create d1.make_from_string ("-127.00000000")
			create d2.make_from_string ("-3")
			answer := d1 + d2
			Result := equal (answer.precise_out, "-130")
			check
				Result
			end
			Result := equal (answer.out, "-130.00")
			check
				Result
			end
		end

	t3: BOOLEAN -- Zero + ________
		local
			d1, d2, answer: DECIMAL
		do
			comment ("t3: plus - Zero + _______")

				-- Zero + Positive = Positive
			create d1.make_from_string ("0")
			create d2.make_from_string ("5")
			answer := d1 + d2
			Result := equal (answer.precise_out, "5")
			check
				Result
			end
			Result := equal (answer.out, "5.00")
			check
				Result
			end

				-- Zero + Negative = Negative
			create d1.make_from_string ("0")
			create d2.make_from_string ("-5")
			answer := d1 + d2
			Result := equal (answer.precise_out, "-5")
			check
				Result
			end
			Result := equal (answer.out, "-5.00")
			check
				Result
			end

				-- Negative zeros added create zero
			create d1.make_from_string ("-0")
			create d2.make_from_string ("-0")
			answer := d1 + d2
			Result := equal (answer.precise_out, "0")
			check
				Result
			end
			Result := equal (answer.out, "0.00")
			check
				Result
			end
		end

	t4: BOOLEAN
		local
			d1, d2, answer: DECIMAL
		do
			comment ("t4: minus - Positive, Negative, and Zero Cases")

				-- Positive - Positive = Negative
			create d1.make_from_string ("1285")
			create d2.make_from_string ("1387")
			answer := d1 - d2
			Result := equal (answer.precise_out, "-102")
			check
				Result
			end
			Result := equal (answer.out, "-102.00")
			check
				Result
			end

				-- Positive - Negative (padded 0's) = Positive
			create d1.make_from_string ("177.00")
			create d2.make_from_string ("-000177.0")
			answer := d1 - d2
			Result := equal (answer.precise_out, "354")
			check
				Result
			end
			Result := equal (answer.out, "354.00")
			check
				Result
			end

				-- Positive - Positive (padded 0's) = 0
			create d1.make_from_string ("177.00")
			create d2.make_from_string ("0177.00000000")
			answer := d1 - d2
			Result := equal (answer.precise_out, "0")
			check
				Result
			end
			Result := equal (answer.out, "0.00")
			check
				Result
			end

				-- Positive decimal - Positive Decimal = Positive Decimal
			create d1.make_from_string ("99.9")
			create d2.make_from_string ("2.1")
			answer := d1 - d2
			Result := equal (answer.precise_out, "97.8")
			check
				Result
			end
			Result := equal (answer.out, "97.80")
			check
				Result
			end

				-- Positive long decimal + Positive long decimal = Positive long decimal (long carry)
			create d1.make_from_string ("99.90000000001")
			create d2.make_from_string ("0000000000000.100000000110000000090000")
			answer := d1 - d2
			Result := equal (answer.precise_out, "99.79999999989999999991")
			check
				Result
			end
			Result := equal (answer.out, "99.80")
			check
				Result
			end

				-- Positive whole - positive decimal = negative decimal
			create d1.make_from_string ("12")
			create d2.make_from_string ("125.456")
			answer := d1 - d2
			Result := equal (answer.precise_out, "-113.456")
			check
				Result
			end
			Result := equal (answer.out, "-113.46")
			check
				Result
			end
		end

	t5: BOOLEAN -- minus Negative - _________
		local
			d1, d2, answer: DECIMAL
		do
			comment ("t5: minus - Negative - ________")
				-- Negative whole - positive Decimal = negative Decimal
			create d1.make_from_string ("-12")
			create d2.make_from_string ("125.456")
			answer := d1 - d2
			Result := equal (answer.precise_out, "-137.456")
			check
				Result
			end
			Result := equal (answer.out, "-137.46")
			check
				Result
			end

				-- Negative whole - negative decimal = positive decimal
			create d1.make_from_string ("-12")
			create d2.make_from_string ("-125.456")
			answer := d1 - d2
			Result := equal (answer.precise_out, "113.456")
			check
				Result
			end
			Result := equal (answer.out, "113.46")
			check
				Result
			end
		end

	t6: BOOLEAN -- minus Zero - _______
		local
			d1, d2, answer: DECIMAL
		do
			comment ("t6: minus - Zero - _______")
				-- Zero - Positive
			create d1.make_from_string ("0")
			create d2.make_from_string ("125.456")
			answer := d1 - d2
			Result := equal (answer.precise_out, "-125.456")
			check
				Result
			end
			Result := equal (answer.out, "-125.46")
			check
				Result
			end

				-- Zero - Negative
			create d1.make_from_string ("0")
			create d2.make_from_string ("-125.456")
			answer := d1 - d2
			Result := equal (answer.precise_out, "125.456")
			check
				Result
			end
			Result := equal (answer.out, "125.46")
			check
				Result
			end

				-- Zero - Zero
			create d1.make_from_string ("0")
			create d2.make_from_string ("0")
			answer := d1 - d2
			Result := equal (answer.precise_out, "0")
			check
				Result
			end
			Result := equal (answer.out, "0.00")
			check
				Result
			end
		end

	t7: BOOLEAN -- multiplication Positive * ______
		local
			d1, d2, answer: DECIMAL
		do
			comment ("t7: multipilication - Positive * _________")

				-- Positive Decimal * Positive Decimal
			create d1.make_from_string ("1.2")
			create d2.make_from_string ("30021.232")
			answer := d1 * d2
			Result := answer.precise_out ~ "36025.4784"
			check
				Result
			end
			Result := answer.out ~ "36025.48"
			check
				Result
			end

				-- Positive Decimal * Positive Whole

			create d1.make_from_string ("1.2")
			create d2.make_from_string ("5")
			answer := d1 * d2
			Result := answer.precise_out ~ "6"
			check
				Result
			end
			Result := answer.out ~ "6.00"
			check
				Result
			end

				-- Positive Decimal * Negative Decimal

			create d1.make_from_string ("1.2")
			create d2.make_from_string ("-30021.232")
			answer := d1 * d2
			Result := answer.precise_out ~ "-36025.4784"
			check
				Result
			end
			Result := answer.out ~ "-36025.48"
			check
				Result
			end

				-- Positive Decimal * Negative Whole
			create d1.make_from_string ("1.2")
			create d2.make_from_string ("-5")
			answer := d1 * d2
			Result := answer.precise_out ~ "-6"
			check
				Result
			end
			Result := answer.out ~ "-6.00"
			check
				Result
			end

				-- Positive Decimal * Zero
			create d1.make_from_string ("1.2")
			create d2.make_from_string ("0")
			answer := d1 * d2
			Result := answer.precise_out ~ "0"
			check
				Result
			end
			Result := answer.out ~ "0.00"
			check
				Result
			end

				-- Positive * Positive longer decimals
			create d1.make_from_string ("23425.234243")
			create d2.make_from_string ("793847.89223423445")
			answer := d1 * d2
			Result := equal (answer.precise_out, "18596072828.89876261503027135")
			check
				Result
			end
			Result := equal (answer.out, "18596072828.90")
			check
				Result
			end
		end

	t8: BOOLEAN -- multiplication Negative * ______
		local
			d1, d2, answer: DECIMAL
		do
			comment ("t8: multipilication - Negative * _________")

				-- Negative Decimal * Positive Decimal
			create d1.make_from_string ("-1.2")
			create d2.make_from_string ("30021.232")
			answer := d1 * d2
			Result := answer.precise_out ~ "-36025.4784"
			check
				Result
			end
			Result := answer.out ~ "-36025.48"
			check
				Result
			end

				-- Negative Decimal * Positive Whole
			create d1.make_from_string ("-1.2")
			create d2.make_from_string ("5")
			answer := d1 * d2
			Result := answer.precise_out ~ "-6"
			check
				Result
			end
			Result := answer.out ~ "-6.00"
			check
				Result
			end

				-- Negative Whole * Positive Decimal
			create d1.make_from_string ("-5")
			create d2.make_from_string ("1.2")
			answer := d1 * d2
			Result := answer.precise_out ~ "-6"
			check
				Result
			end
			Result := answer.out ~ "-6.00"
			check
				Result
			end

				-- Negative Whole * Positive Whole
			create d1.make_from_string ("-2")
			create d2.make_from_string ("5")
			answer := d1 * d2
			Result := answer.precise_out ~ "-10"
			check
				Result
			end
			Result := answer.out ~ "-10.00"
			check
				Result
			end

				-- Negative Decimal * Negative Decimal
			create d1.make_from_string ("-1.2")
			create d2.make_from_string ("-30021.232")
			answer := d1 * d2
			Result := answer.precise_out ~ "36025.4784"
			check
				Result
			end
			Result := answer.out ~ "36025.48"
			check
				Result
			end

				-- Negative Decimal * Negative Whole
			create d1.make_from_string ("-1.2")
			create d2.make_from_string ("-5")
			answer := d1 * d2
			Result := answer.precise_out ~ "6"
			check
				Result
			end
			Result := answer.out ~ "6.00"
			check
				Result
			end

				-- Negative Decimal * Zero
			create d1.make_from_string ("-1.2")
			create d2.make_from_string ("0")
			answer := d1 * d2
			Result := answer.precise_out ~ "0"
			check
				Result
			end
			Result := answer.out ~ "0.00"
			check
				Result
			end
		end

	t9: BOOLEAN -- multiplication Zero * ______
		local
			d1, d2, answer: DECIMAL
		do
			comment ("t9: multipilication - Zero * _________")

				-- Zero * Positive Decimal
			create d1.make_from_string ("0")
			create d2.make_from_string ("521.24224")
			answer := d1 * d2
			Result := answer.precise_out ~ "0"
			check
				Result
			end
			Result := answer.out ~ "0.00"
			check
				Result
			end

				-- Zero * Positive Whole
			create d1.make_from_string ("0")
			create d2.make_from_string ("5")
			answer := d1 * d2
			Result := answer.precise_out ~ "0"
			check
				Result
			end
			Result := answer.out ~ "0.00"
			check
				Result
			end

				-- Zero * Negative Decimal
			create d1.make_from_string ("0")
			create d2.make_from_string ("-5.125")
			answer := d1 * d2
			Result := answer.precise_out ~ "0"
			check
				Result
			end
			Result := answer.out ~ "0.00"
			check
				Result
			end

				-- Zero * Negative Whole
			create d1.make_from_string ("0")
			create d2.make_from_string ("-5")
			answer := d1 * d2
			Result := answer.precise_out ~ "0"
			check
				Result
			end
			Result := answer.out ~ "0.00"
			check
				Result
			end
		end

	t10: BOOLEAN -- Division - Positive / _______
		local
			d1, d2, answer: DECIMAL
		do
			comment ("t10: divide - Positive / ______ (repeating & non-repeating")
				-- Positive Whole / Positive Whole = Positive Decimal (repeating)
			create d1.make_from_string ("1.000")
			create d2.make_from_string ("3.0")
			answer := d1 / d2
			Result := answer.precise_out.starts_with ("0.33333333333333333333333333333333333")
			check
				Result
			end
			Result := equal (answer.out, "0.33")
			check
				Result
			end

				-- Positive whole / Positive whole = Positive (whole)
			create d1.make_from_string ("3")
			create d2.make_from_string ("1.0")
			answer := d1 / d2
			Result := equal (answer.precise_out, "3") -- in this case, we can use equal() because the result is exact
			check
				Result
			end
			Result := equal (answer.out, "3.00")
			check
				Result
			end

				-- Positive Whole / Negative decimal = Negative Decimal (Non-repeating)
			create d1.make_from_string ("2")
			create d2.make_from_string ("-0.6666666667")
			answer := d1 / d2
			Result := answer.precise_out.starts_with ("-2.9999999998500000000074999999996")
			check
				Result
			end
			Result := equal (answer.out, "-3.00")

				-- Positive Whole / Negative Whole = Negative Whole
			create d1.make_from_string ("426356")
			create d2.make_from_string ("-28")
			answer := d1 / d2
			Result := equal (answer.precise_out, "-15227")
			check
				Result
			end
			Result := equal (answer.out, "-15227.00")

				-- Positive Decimal / Positive Whole = Positive Decimal (Repeatingish)
			create d1.make_from_string ("0.3333333333333333333333333333333333333333333333")
			create d2.make_from_string ("3.00000000000000000000000")
			answer := d1 / d2
			Result := answer.precise_out.starts_with ("0.11111111111111111111111111111111111")
			check
				Result
			end
			Result := equal (answer.out, "0.11")
			check
				Result
			end
		end

	t11: BOOLEAN -- Division - Negative / ________
		local
			d1, d2, answer: DECIMAL
		do
			comment ("t11: divide - Negative / ________")

				-- Negative whole / negative decimal = Positive Whole
			create d1.make_from_string ("-1")
			create d2.make_from_string ("-0.500000")
			answer := d1 / d2
			Result := equal (answer.precise_out, "2")
			check
				Result
			end
			Result := equal (answer.out, "2.00")
			check
				Result
			end

				-- Negative Whole / Positive Whole = Negative Whole
			create d1.make_from_string ("-000810.0000000")
			create d2.make_from_string ("9.00000000000000000000000000")
			answer := d1 / d2
			Result := equal (answer.precise_out, "-90")
			check
				Result
			end
			Result := equal (answer.out, "-90.00")

				-- Negative Decimal / Positive Whole = Negative Decimal
			create d1.make_from_string ("-1.2345678974534548454548454")
			create d2.make_from_string ("10")
			answer := d1 / d2
			Result := answer.precise_out.starts_with ("-0.12345678974534548454548454")
			check
				Result
			end
			Result := equal (answer.out, "-0.12")
		end

	t12: BOOLEAN -- Division - Zero / ______
		local
			d1, d2, answer: DECIMAL
		do
			comment ("t12: divide - Zero / ________")

				-- Zero / Positive
			create d1.make_from_string ("-0")
			create d2.make_from_string ("1")
			answer := d1 / d2
			Result := equal (answer.precise_out, "0")
			check
				Result
			end
			Result := equal (answer.out, "0.00")

				-- Zero / Negative
			create d1.make_from_string ("0")
			create d2.make_from_string ("-1")
			answer := d1 / d2
			Result := equal (answer.precise_out, "0")
			check
				Result
			end
			Result := equal (answer.out, "0.00")
		end



end
