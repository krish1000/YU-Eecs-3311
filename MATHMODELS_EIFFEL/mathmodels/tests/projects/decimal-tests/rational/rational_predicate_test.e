note
	description: "[
					Testing suite for the RATIONAL Class covering the is_equal,
					is_less, divisible, and is_canonical queries.
				  ]"
	author: "JSO & CD"
	date: "June 10 2019"
	revision: "1.00"
class
	RATIONAL_PREDICATE_TEST
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
		end

feature -- Tests

	t1: BOOLEAN -- string_is_rational
		local
			r1: RATIONAL
		do
			comment ("t1: string_is_rational - Zero, Positive, Negative Cases")

			r1 := "1"
			Result := not r1.string_is_rational ("1/0")
			check Result end

			Result := not r1.string_is_rational ("10/0000")
			check Result end

			Result := not r1.string_is_rational ("-5/00")
			check Result end

			Result := r1.string_is_rational ("1/3")
			check Result end

			Result := r1.string_is_rational ("-1/-3")
			check Result end

			Result := r1.string_is_rational ("1/-3")
			check Result end
		end

	t2: BOOLEAN -- divisible
		local
			r1, r2: RATIONAL
		do
			comment ("t2: divisible - Check if division by zero is allowed")
			r1 := "1/3"
			r2 := "0/1"
			Result := not r1.divisible(r2) -- fails... implementation is Result := true, but this should not be true
		end

	t3: BOOLEAN -- is_less
		local
			r1, r2: RATIONAL
		do
			comment ("t3: is_less - Positive and Negative Cases")

			r1 := "111/123"
			r2 := "112/123"
			Result := r1 < r2 -- Positive < positive
			assert ("111/123 < 112/123", r1 < r2, true)
			check Result end

			r1 := "-111/123"
			Result := r1 < r2 -- Negative < positive
			assert ("-111/123 < 112/123", r1 < r2, true)
			check Result end

			r1 := "111/123"
			r2 := "-112/123"
			Result := r2 < r1 -- Negative < positive
			assert ("-112/123 < 111/123", r2 < r1, true)
			check Result end

			r1 := "-111/-123"
			Result := r1.zero < r1  -- Zero < Positive
			assert ("0 < -111/-123", r1.zero < r1, true)
			check Result end

			r1 := "111/-123"
			Result := r1 < r1.zero -- Negative < 0
			assert ("111/-123 < 0", r1 < r1.zero, true)
			check Result end
		end

	t4: BOOLEAN -- is_canonical
		local
			r1: RATIONAL
		do
			comment ("t4: is_canonical - Positive and Negative Cases")

			r1 := "1/2"
			Result := r1.is_canonical
			check Result end
			-- Not able to test more, since all the RATIONAL's are automatically
			-- created to be canonical.
		end


end
