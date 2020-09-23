note
	description: "[
					Testing suite for the RATIONAL Class covering the power,
					square, gcd, reciprocal, v_divide, real_divide_round_to, round_to,
					opposite, and identity operation capabilities.
				  ]"
	author: "Connor Dear, Jonathan Ostroff"
	date: "June 10 2019"
	revision: "1.00"

class
	RATIONAL_SECONDARY_OPERATION_TEST
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
--			add_boolean_case (agent t6)
		end

feature -- Tests



	t1: BOOLEAN -- Square and Power
		local
			r1, r2: RATIONAL
		do
			comment ("t1: Square and Power - Positive and Negative Cases")

			r1 := "7/13"
			r2 := "9/-5"

			check r1.square ~ "49/169" and r1.square ~ "-49/-169" end
			check r2.square ~ "81/25" and r2.square ~ "-81/-25" end

			check r1 ^ 2 ~ r1.square end
			check r2 ^ 2 ~ r2.square end

			check r1 ^ 3 ~ "343/2197" end
			check r2 ^ 3 ~ "-729/125" end

			check r1 ^ -2 ~ "169/49" end
			check r2 ^ -2 ~ "25/81" end

			check r1 ^ -3 ~ "2197/343" end
			Result := r2 ^ -3 ~ "-125/729" and r2 ^ -3 ~ "125/-729"
		end

	t2: BOOLEAN -- Reciprocal
		local
			r1: RATIONAL
		do
			comment ("t2: reciprocal test")

			r1 := "111/123" -- Positive/Positive
			Result := r1.reciprocal ~ "123/111"
			check Result end

			r1 := "-111/123" -- Negative/Positive
			Result := r1.reciprocal ~ "-123/111"
			check Result end

			r1 := "111/-123" -- Positive/Negative
			Result := r1.reciprocal ~ "123/-111"
			check Result end

			r1 := "-111/-123" -- Negative/Negative
			Result := r1.reciprocal ~ "-123/-111"
			check Result end
		end

	t3: BOOLEAN -- Opposite / Negate
		local
			r1: RATIONAL
		do
			comment ("t3: opposite/negate test")

			r1 := "111/123" -- Positive/Positive
			Result := r1.opposite ~ "-111/123"
			check Result end

			r1 := "-111/123" -- Negative/Positive
			Result := r1.opposite ~ "111/123"
			check Result end

			r1 := "111/-123" -- Positive/Negative
			Result := r1.opposite ~ "111/123"
			check Result end

			r1 := "-111/-123" -- Negative/Negative
			Result := r1.opposite ~ "-111/123"
			check Result end
		end

	t4: BOOLEAN -- abs/absolute
		local
			r1: RATIONAL
		do
			comment ("t4: abs/absolute - Positive and Negative Cases ")

			r1 := "111/123" -- Positive/Positive
			Result := r1.abs ~ "111/123"
			check Result end

			r1 := "-111/123" -- Negative/Positive
			Result := r1.abs ~ "111/123"
			check Result end

			r1 := "111/-123" -- Positive/Negative
			Result := r1.abs ~ "111/123"
			check Result end

			r1 := "-111/-123" -- Negative/Negative
			Result := r1.abs ~ "111/123"
			check Result end
		end

	t5: BOOLEAN -- canonicalize
		local
			r1: RATIONAL
		do
			comment ("t5: canonicalize - Positive, Negative, Zero Cases")

			create r1.make_from_string ("2/4")
			r1.canonicalize
			Result := r1 ~ "1/2" -- Positive/Positive
			check Result end

			create r1.make_from_string ("3/-9")
			r1.canonicalize
			Result := r1 ~ "1/-3" -- Positive/Negative
			check Result end

			create r1.make_from_string ("-4/16")
			r1.canonicalize
			Result := r1 ~ "-1/4" -- Negative/Positive
			check Result end

			create r1.make_from_string ("-5/-50")
			r1.canonicalize
			Result := r1 ~ "1/10" -- Positive/Positive
			check Result end

			create r1.make_from_string ("0/-50")
			r1.canonicalize
			Result := r1 ~ "0/1" -- Zero Case
			check Result end
		end


--	t6: BOOLEAN -- real_divide_round_to
--		local
--			r1: RATIONAL
--			s1: STRING
--		do
--			comment ("t6: real_divide_round_to - Positive Case")
--			r1 := "1/4"
--			s1 := r1.real_divide_round_to ("2", 3)
--			assert_equal ("(1/4)/(2/1)", "0.125", s1.out)
--			Result := s1 ~ "0.125"
--			check Result end
--		end

-- Tests for v_divide
-- Not sure if we need these since the implementation seems to indicate that they should be for internal use only, or only with "q" as an argument

--	t6: BOOLEAN -- v_divide
--		local
--			r1: RATIONAL
--			i1: BIG_INTEGER
--			v1: VALUE
--		do
--			 TODO
--			Result := True
--		end


end
