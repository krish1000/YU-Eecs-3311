note
	description: "Testing suite for the BIG_INTEGER Class covering the remainder, power, square, gcd, opposite, and identity operation capabilities."
	author: "Connor Dear, Jonathan Ostroff"
	date: "June 4 2019"
	revision: "1.00"

class
	INT_SECONDARY_OPERATION_TEST
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

	t1: BOOLEAN -- Remainder
		-- Will need to be redone after remainder implementation is fixed.
		local
			i1, i2, i3, i4, answer: BIG_INTEGER
		do
			comment ("t1: Remainder - Positive and Negative Cases")

			i1 := "3"
			i2 := "7"
			answer := i1 \\ i2
			Result := "3" ~ answer -- Both positive, doesn't divide
			assert_equal ("fail 3\\7", "3", answer.out)
			check Result end

			i3 := "7"
			i4 := "3"
			answer := i3 \\ i4
			assert_equal ("fail 7\\3", "1", answer.out)
			Result := answer ~ "1" -- Both positive, divides
			check Result end

			i1 := "-3"
			i2 := "7"
			answer := i1 \\ i2
			Result := "4" ~ answer -- Negative numerator, doesn't divide
			assert_equal("fail -3//7", "4", answer.out)
			check Result end

			i1 := "-7"
			i2 := "3"
			answer := i1 \\ i2
			assert_equal("fail -7//3", "2", answer.out)
			Result := "2" ~ answer -- Negative numerator, divides
			check Result end

			i1 := "3"
			i2 := "-7"
			answer := i1 \\ i2
			assert_equal("fail 3//-7", "-4", answer.out)
			Result := "-4" ~ answer
			check Result end

			i1 := "7"
			i2 := "-3"
			answer := i1 \\ i2
			assert_equal("fail 7//-3", "-2", answer.out)
			Result := answer ~ "-2"
			check Result end

			i1 := "-7"
			i2 := "-3"
			answer := i1 \\ i2
			assert_equal("fail -7//-3", "-1", answer.out)
			Result := answer ~ "-1" -- Both Negative, divides
			check Result end

			i1 := "-3"
			i2 := "-7"
			answer := i1 \\ i2
			assert_equal("fail -3//-7", "-3", answer.out)
			Result := answer ~ "-3" -- Both Negative, divides
			check Result end

			i3 := "9223372036854775807"
			i4 := "100000000000000000"
			answer := i3 \\ i4
			assert_equal("fail large numbers", "23372036854775807", answer.out)
			Result := answer ~ "23372036854775807" -- Large numbers
			check Result end

			i3 := "-9223372036854775808"
			i4 := "100000000000000000"
			answer := i3 \\ i4
			assert_equal("fail -3//-7", "76627963145224192", answer.out)
			Result := answer ~ "76627963145224192" -- Large numbers with negatives
			check Result end
		end

	t2: BOOLEAN -- Power
		local
			i1,answer: BIG_INTEGER
			i2: INTEGER
		do
			comment ("t2: Power - Positive and Zero Cases")
			i1 := "2"
			i2 := 4
			answer := "16"
			Result := i1.power (i2) ~ answer -- Positive power
			check Result end
			assert_equal ("fail",(i1.power (i2)).out, "16")

			i1 := "2"
			i2 := 0
			answer := "1"
			Result := i1.power (i2) ~ answer  -- Zero power
			check Result end
			assert_equal ("fail",(i1.power (i2)).out, "1")

			i1 := "0"
			i2 := 4
			answer := "0"
			Result := i1.power (i2) ~ answer -- Zero to a positive power
			check Result end
			assert_equal ("fail",(i1.power (i2)).out, "0")
		end

	t3: BOOLEAN -- Power Cont.
		local
			i1, i2: BIG_INTEGER
		do
			comment("t3: Power - Large Power Case")
			i1 := "123456789123456789123456789"
			i2 := "15241578780673678546105778281054720515622620750190521"
			check i1 ^ 0 ~ "1" end
			check i1 ^ 1 ~ "123456789123456789123456789" end
			check i2 ~ i1.square end
			check i2 ~ i1 ^ 2 end

			i1 := "123"
			i2 := i1 * i1 * i1 * i1 * i1
			check i2 ~ i1 ^ 5 end
			check i2 ~ i1 ^ 3 * i1.square end

			i2 := i1 ^ 23
			Result := i2 ~ "1169008215014432917465348578887506800769541157267"
		end

	t4: BOOLEAN -- Square
		local
			i1, i2, answer: BIG_INTEGER
		do
			comment ("t4: Square - Positive, Negative, and Zero Cases")

			create i1.make_from_string ("10000")
			create i2.make_from_string ("10001")
			check i1 < i2 end
			check i1.square < i2.square end

			create i1.make_from_string ("-444")
			create i2.make_from_string ("-10")
			check i1.square > i2.square end

			create i2.make_from_string ("123456789123456789123456789")
			check i1 < i2 end
			check i1.square < i2.square end

			create i1.make_from_string ("15241578780673678546105778281054720515622620750190521")
			Result := i2.square ~ i1

			i1 := "2"
			answer := "4"
			Result := i1.square ~ answer
			check Result end
			assert_equal ("fail",(i1.square).out, "4")

			i1 := "0"
			answer := "0"
			Result := i1.square ~ answer
			check Result end
			assert_equal ("fail",(i1.square).out, "0")
		end

	t5: BOOLEAN -- GCD
		local
			i1,i2,answer: BIG_INTEGER
		do
			comment ("t5: GCD - Positive, Zero, and Prime Cases")

			i1 := "12"
			i2 := "15"
			answer := "3"
			Result := i1.gcd (i2) ~ answer
			check Result end

			i1 := "12"
			i2 := "1"
			answer := "1"
			Result := i1.gcd (i2) ~ answer
			check Result end

			i1 := "12"
			i2 := "0"
			answer := "12"
			Result := i1.gcd (i2) ~ answer
			check Result end

			i1 := "0"
			i2 := "12"
			answer := "12"
			Result := i1.gcd (i2) ~ answer
			check Result end

			i1 := "12"
			i2 := "0"
			check i1.gcd (i2) ~ i1 and i2.gcd (i1) ~ i1 end

			i2 := "1"
			check i1.gcd (i2) ~ i2 end

			i2 := "13"
			check i1.gcd (i2) ~ i2.gcd (i1) and i1.gcd (i2) ~ "1" end

			i1 := "7"
			i2 := "21"
			check i1.gcd (i2) ~ i1 and i2.gcd (i1) ~ i1 end

			i1 := "18"
			i2 := "12"
			check i1.gcd (i2) ~ i2.gcd (i1) and i1.gcd (i2) ~ "6" end

			i1 := "18"
			i2 := "27"
			Result := i1.gcd (i2) ~ i2.gcd (i1) and i1.gcd (i2) ~ "9"
		end

	t6: BOOLEAN -- Negative GCD
		local
			x,y,r: BIG_INTEGER
		do
			comment("t6: GCD - Negative Case")
			x :=  "135749"
			y := "163231"
			r := x.gcd (y)
			Result := r ~ "151"
			check Result end
			assert_equal ("fail", r, x.gcd (-y))
			assert_equal ("fail", r, (-x).gcd (-y))
		end

	t7: BOOLEAN -- Opposite test
		local
			i1, i2: BIG_INTEGER
		do
			comment("t7: Opposite - Positive and Negative Cases")
			create i1.make_from_integer64 (5)
			i2 := i1.opposite
			Result := i2 ~ "-5"
			check Result end

			i1 := "-5"
			i2 := i1.opposite
			Result := i2 ~ "5"
		end

	t8: BOOLEAN -- Identity test		
		local
			i1, i2: BIG_INTEGER
		do
			comment("t7: Identity - Positive and Negative Cases")
			create i1.make_from_integer64 (5)

			-- Positive Case
			i2 := i1.identity
			Result := i2 ~ "5"
			check Result end

			-- Negative Case
			i1 := "-5"
			i2 := i1.identity
			Result := i2 ~ "-5"
		end


end
