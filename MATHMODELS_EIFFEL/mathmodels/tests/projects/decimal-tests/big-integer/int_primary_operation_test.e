note
	description: "Testing suite for the BIG_INTEGER Class covering the +, -, *, and // operation capabilities."
	author: "Connor Dear, Jonathan Ostroff"
	date: "June 4 2019"
	revision: "1.00"

class
	INT_PRIMARY_OPERATION_TEST
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
			add_boolean_case (agent t11)
			add_boolean_case (agent t12)
		end

feature -- Tests

	-- Addition Segment (1 - 3)

	t1: BOOLEAN
		local
			i1, i2, i3, i4: BIG_INTEGER
		do
			comment ("t1: Addition - Positive and Negative Cases")

			i1 := "11"
			i2 := "22"
			i3 := "-11"
			i4 := "-100"

			-- Positive + Positive
			assert_equal ("fail",(i1 + i2).out, "33")
			Result := i1 + i2 ~ "33"
			check Result end

			-- Positive + Negative
			assert_equal ("fail",(i1 + i3).out, "0")
			Result := i1 + i3 ~ "0"
			check Result end

			-- Negative + Positive
			assert_equal ("fail",(i3 + i2).out, "11")
			Result := i3 + i2 ~ "11"
			check Result end

			-- Negative + Negative
			assert_equal ("fail",(i3 + i4).out, "-111")
			Result := i3 + i4 ~ "-111"
		end

	t2: BOOLEAN
		local
			i1, i2, zero: BIG_INTEGER
		do
			comment ("t2: Addition - Zero Cases")

			i1 := "23"
			i2 := "-4"
			create zero

			assert_equal("fail", zero.out, "0")

			-- Positive + Zero
			Result := i1 + zero ~ i1
			check Result end

			-- Negative + Zero
			Result := i2 + zero ~ i2
			check Result end

			-- Zero + Zero
			Result := "0" + zero ~ "0"
		end

	t3: BOOLEAN
		local
			i1, i2: BIG_INTEGER
		do
			comment ("t3: Addition - Large Integers")

			create i1.make_from_string ("123456789123456789111111")
			create i2.make_from_string ("98798798798798798799879879879879879879")
			Result := i1 + i2 ~ "98798798798798922256669003336668990990"
			check Result end
		end


	-- Subtraction Segment (4 - 6)

	t4: BOOLEAN
		local
			i1, i2, i3, i4: BIG_INTEGER
		do
			comment ("t4: Subtraction - Positive and Negative Cases")

			i1 := "11"
			i2 := "22"
			i3 := "-11"
			i4 := "-100"

			-- Positive - Positive
			assert_equal ("fail",(i1 - i2).out, "-11")
			Result := i1 - i2 ~ "-11"
			check Result end

			-- Positive - Negative
			assert_equal ("fail",(i1 - i3).out, "22")
			Result := i1 - i3 ~ "22"
			check Result end

			-- Negative - Positive
			assert_equal ("fail",(i3 - i2).out, "-33")
			Result := i3 - i2 ~ "-33"
			check Result end

			-- Negative - Negative
			assert_equal ("fail",(i3 - i4).out, "89")
			Result := i3 - i4 ~ "89"
		end

	t5: BOOLEAN
		local
			i1, i2, zero: BIG_INTEGER
		do
			comment ("t5: Subtraction - Zero Cases")

			i1 := "23"
			i2 := "-4"
			create zero

			assert_equal("fail", zero.out, "0")

			-- Positive + Zero
			Result := i1 - zero ~ i1
			check Result end

			-- Negative + Zero
			Result := i2 - zero ~ i2
			check Result end

			-- Zero + Zero
			Result := "0" - zero ~ "0"
		end

	t6: BOOLEAN
		local
			i1, i2: BIG_INTEGER
		do
			comment ("t6: Subtraction - Large Integers")

			create i1.make_from_string ("123456789123456789111111")
			create i2.make_from_string ("98798798798798798799879879879879879879")
			Result := i2 - i1 ~ "98798798798798675343090756423090768768"
			check Result end
		end

	-- Multiplication Segment (7 - 9)

	t7: BOOLEAN
		local
			i1, i2, i3, i4: BIG_INTEGER
		do
			comment ("t7: Multiplication - Positive and Negative Cases")

			i1 := "11"
			i2 := "22"
			i3 := "-11"
			i4 := "-100"

			-- Positive * Positive
			assert_equal ("fail",(i1 * i2).out, "242")
			Result := i1 * i2 ~ "242"
			check Result end

			-- Positive * Negative
			assert_equal ("fail",(i1 * i3).out, "-121")
			Result := i1 * i3 ~ "-121"
			check Result end

			-- Negative * Positive
			assert_equal ("fail",(i3 * i2).out, "-242")
			Result := i3 * i2 ~ "-242"
			check Result end

			-- Negative * Negative
			assert_equal ("fail",(i3 * i4).out, "1100")
			Result := i3 * i4 ~ "1100"
		end

	t8: BOOLEAN
		local
			i1, i2, zero: BIG_INTEGER
		do
			comment ("t8: Multiplication - Zero Cases")

			i1 := "23"
			i2 := "-4"
			create zero

			assert_equal("fail", zero.out, "0")

			-- Positive * Zero
			Result := i1 * zero ~ "0"
			check Result end

			-- Negative * Zero
			Result := i2 * zero ~ "0"
			check Result end

			-- Zero * Zero
			Result := "0" * zero ~ "0"
		end

	t9: BOOLEAN
		local
			i1, i2: BIG_INTEGER
		do
			comment ("t9: Multiplication - Large Integers")

			create i1.make_from_string ("123456789123456789111111")
			create i2.make_from_string ("98798798798798798799879879879879879879")
			Result := i2 * i1 ~ "12197382468954139224624613645899232564696177539900381864235569"
			check Result end
		end

	-- Division Segment (10 - 12)

	t10: BOOLEAN
		local
			i1, i2, i3, i4: BIG_INTEGER
		do
			comment ("t10: Division - Positive and Negative Cases")

			i1 := "11"
			i2 := "22"
			i3 := "-11"
			i4 := "-100"

			-- Positive // Positive
			assert_equal ("fail","2", (i2 // i1).out)
			Result := i2 // i1 ~ "2"
			check Result end

			-- Positive // Negative
			assert_equal ("fail", "-1", (i1 // i3).out)
			Result := i1 // i3 ~ "-1"
			check Result end

			-- Negative // Positive
			assert_equal ("fail", "-5", (i4 // i2).out)
			Result := i4 // i2 ~ "-5"
			check Result end

			-- Negative // Negative
			assert_equal ("fail", "9", (i4 // i3).out)
			Result := i4 // i3 ~ "9"
		end

	t11: BOOLEAN
		local
			i1, i2, zero: BIG_INTEGER
		do
			comment ("t11: Division - Zero Cases")

			i1 := "23"
			i2 := "-4"
			create zero

			assert_equal("fail", zero.out, "0")

			-- Zero // Positive
			Result := zero // i1 ~ "0"
			check Result end

			-- Zero // Negative
			Result := zero // i2 ~ "0"
			check Result end
		end


	t12: BOOLEAN
		local
			i1, i2: BIG_INTEGER
		do
			comment ("t12: Division - Large Integers")
			create i1.make_from_string ("123456789123456789111111")
			create i2.make_from_string ("98798798798798798799879879879879879879")
			Result := i2 // i1 ~ "800270276752459"
			check Result end
		end

end
