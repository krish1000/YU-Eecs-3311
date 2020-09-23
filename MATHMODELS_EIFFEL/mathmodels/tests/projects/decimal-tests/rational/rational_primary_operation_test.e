note
	description: "[
					Testing suite for the RATIONAL Class covering the +, -, *, and // operation capabilities.
				  ]"
	author: "Connor Dear, Jonathan Ostroff"
	date: "June 10 2019"
	revision: "1.00"

class
	RATIONAL_PRIMARY_OPERATION_TEST
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

	-- Addition Segment (1 - 2)

	t1: BOOLEAN
		local
			r1, r2, r3, r4: RATIONAL
		do
			comment ("t1: Addition - Positive and Negative Cases")

			r1 := "10/2"
			r2 := "22/2"
			r3 := "-3/4"
			r4 := "1/-2"

			-- Positive + Positive
			Result := r1 + r2 ~ "32/2"
			check Result end

			-- Positive + Negative
			Result := r1 + r3 ~ "17/4"
			check Result end

			-- Negative + Positive
			Result := r3 + r2 ~ "41/4"
			check Result end

			-- Negative + Negative
			Result := r3 + r4 ~ "-5/4"
		end

	t2: BOOLEAN
		local
			r1, r2, zero: RATIONAL
		do
			comment ("t2: Addition - Zero Cases")

			r1 := "1/5"
			r2 := "-4/5"
			zero := "0/1"

			-- Positive + Zero
			Result := r1 + zero ~ r1
			check Result end

			-- Negative + Zero
			Result := r2 + zero ~ r2
			check Result end

			-- Zero + Zero
			Result := "0" + zero ~ "0"
		end


	-- Subtraction Segment (3 - 4)

	t3: BOOLEAN
		local
			r1, r2, r3, r4: RATIONAL
		do
			comment ("t3: Subtraction - Positive and Negative Cases")

			r1 := "1/2"
			r2 := "3/4"
			r3 := "-1/3"
			r4 := "2/-3"

			-- Positive - Positive
			Result := r1 - r2 ~ "-1/4"
			check Result end

			-- Positive - Negative
			Result := r1 - r3 ~ "5/6"
			check Result end

			-- Negative - Positive
			Result := r3 - r2 ~ "-13/12"
			check Result end

			-- Negative - Negative
			Result := r3 - r4 ~ "1/3"
		end

	t4: BOOLEAN
		local
			r1, r2, zero: RATIONAL
		do
			comment ("t4: Subtraction - Zero Cases")

			r1 := "1/3"
			r2 := "-2/3"
			zero := "0"

			-- Positive + Zero
			Result := r1 - zero ~ r1
			check Result end

			-- Negative + Zero
			Result := r2 - zero ~ r2
			check Result end

			-- Zero + Zero
			Result := "0" - zero ~ "0"
		end



	-- Multiplication Segment (5 - 6)

	t5: BOOLEAN
		local
			r1, r2, r3, r4: RATIONAL
		do
			comment ("t5: Multiplication - Positive and Negative Cases")

			r1 := "1/3"
			r2 := "3/4"
			r3 := "-1/2"
			r4 := "2/-3"

			-- Positive * Positive
			Result := r1 * r2 ~ "3/12"
			check Result end

			-- Positive * Negative
			Result := r1 * r3 ~ "-1/6"
			check Result end

			-- Negative * Positive
			Result := r3 * r2 ~ "-3/8"
			check Result end

			-- Negative * Negative
			Result := r3 * r4 ~ "2/6"
		end

	t6: BOOLEAN
		local
			r1, r2, zero: RATIONAL
		do
			comment ("t6: Multiplication - Zero Cases")

			r1 := "2/3"
			r2 := "-4/5"
			zero := "0/1"

			-- Positive * Zero
			Result := r1 * zero ~ "0/3"
			check Result end

			-- Negative * Zero
			Result := r2 * zero ~ "0/5"
			check Result end

			-- Zero * Zero
			Result := "0/1" * zero ~ "0/1"
		end

	-- Division Segment (7 - 9)

	t7: BOOLEAN
		local
			r1, r2, r3, r4: RATIONAL
		do
			comment ("t7: Division - Positive and Negative Cases")

			r1 := "1/3"
			r2 := "1/4"
			r3 := "-2/3"
			r4 := "-3/4"

			-- Positive // Positive
			Result := r2 // r1 ~ "3/4"
			check Result end

			-- Positive // Negative
			Result := r1 // r3 ~ "3/-6"
			check Result end

			-- Negative // Positive
			Result := r4 // r2 ~ "-12/4"
			check Result end

			-- Negative // Negative
			Result := r4 // r3 ~ "-9/-8"
		end

	t8: BOOLEAN
		local
			r1, r2, zero: RATIONAL
		do
			comment ("t8: Division - Zero Cases")

			r1 := "2/3"
			r2 := "-1/4"
			zero := "0/1"

			assert_equal("fail", zero.out, "0")

			-- Zero // Positive
			Result := zero // r1 ~ "0"
			check Result end

			-- Zero // Negative
			Result := zero // r2 ~ "0"
			check Result end
		end





end
