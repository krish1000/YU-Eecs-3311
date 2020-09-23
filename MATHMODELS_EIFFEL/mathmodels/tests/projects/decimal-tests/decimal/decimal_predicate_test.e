note
	description: "[
					Testing suite for the DECIMAL Class covering the is_equal,
					is_less, divisible, is_integer, is_natural, is_natural1, and
					is_negative queries.
				  ]"
	author: "JSO & CD"
	date: "June 10 2019"
	revision: "1.00"

class
	DECIMAL_PREDICATE_TEST
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

	t1: BOOLEAN -- is_equal
		local
			d1, d2: DECIMAL
		do
			comment ("t1: is_equal - Zero, Positive, Negative Cases")

			create d1.make_from_string ("0.0")
			create d2.make_from_string ("-0.00")
			Result := d1.is_equal (d2)
			check Result end

			create d1.make_from_string ("4.20")
			create d2.make_from_string ("4.20")
			Result := d1.is_equal (d2)
			check Result end

			create d1.make_from_string ("-5")
			create d2.make_from_string ("-5.00")
			Result := d1.is_equal (d2)
			check Result end
		end

	t2: BOOLEAN -- is_less
		local
			d1, d2: DECIMAL
		do
			comment ("t2: is_less - Zero, Positive, Negative Basic Cases")

			create d1.make_from_string ("0")
			create d2.make_from_string ("-1")
			Result := d2 < d1
			check Result end

			create d2.make_from_string ("1.1")
			Result := d1 < d2
			check Result end

			create d1.make_from_string ("1.2")
			create d2.make_from_string ("2.3")
			Result := d1 < d2
			check Result end
		end

	t3: BOOLEAN -- is_less cont.
	local
		d1: DECIMAL
		d2: DECIMAL
	do
		comment ("test3: is_less: Longer Decimal Testing")
		create d1.make_from_string ("-5.00000")
		create d2.make_from_string ("-4.0000")
		Result := d1 < d2
		check Result end

		create d1.make_from_string ("-0005.00000")
		create d2.make_from_string ("0")
		Result := d1 < d2
		check Result end

		create d1.make_from_string ("-0")
		create d2.make_from_string ("0")
		Result := not (d1 < d2)
		check Result end

		create d1.make_from_string ("0")
		create d2.make_from_string ("0")
		Result := not (d1 < d2)
		check Result end

		create d1.make_from_string ("0.99999999999999999999999999999999999999999999999999999999999999999")
		create d2.make_from_string ("1")
		Result := d1 < d2
		check Result end

		create d1.make_from_string ("1")
		create d2.make_from_string ("0.99999999999999999999999999999999999999999999999999999999999999999")
		Result := not (d1 < d2)
		check Result end

		create d1.make_from_string ("0.999998")
		create d2.make_from_string ("0.999999")
		Result := d1 < d2
		check Result end

		create d1.make_from_string ("1.00000000000")
		create d2.make_from_string ("00000000000.2")
		Result := not (d1 < d2)
		check Result end

	end

	t4: BOOLEAN -- divisible
		local
			d1, d2: DECIMAL
		do
			comment ("t4: divisible - Zero, Non-Zero Cases")

			create d1.make_from_string ("1.0")
			create d2.make_from_string ("0.0")
			Result := d1.divisible (d2)
			check not Result end

			create d2.make_from_string ("14")
			Result := d1.divisible (d2)
			check Result end

			create d2.make_from_string ("-1.4")
			Result := d1.divisible (d2)
			check Result end
		end

	t5: BOOLEAN -- is_integer
		local
			d1: DECIMAL
		do
			comment ("t5: is_integer - Zero, Positive, Negative Cases")

			d1 := "-1"
			Result := d1.is_integer
			check Result end

			d1 := "-1.2"
			Result := d1.is_integer
			check not Result end

			d1 := "-1.0"
			Result := d1.is_integer
			check Result end

			d1 := "0"
			Result := d1.is_integer
			check Result end

			d1 := "0.1000"
			Result := d1.is_integer
			check not Result end

			d1 := "1.000"
			Result := d1.is_integer
			check Result end

			d1 := "15.00004"
			Result := d1.is_integer
			check not Result end

			d1 := "004"
			Result := d1.is_integer
			check Result end
		end

	t6: BOOLEAN -- is_natural
		local
			d1: DECIMAL
		do
			comment ("t6: is_natural - Zero, Positive, Negative Cases")

			d1 := "0.001"
			Result := d1.is_natural
			check not Result end

			d1 := "0"
			Result := d1.is_natural
			check Result end

			d1 := "1"
			Result := d1.is_natural
			check Result end

			d1 := "1.00"
			Result := d1.is_natural
			check Result end

			d1 := "1.01"
			Result := d1.is_natural
			check not Result end

			d1 := "-4.02"
			Result := d1.is_natural
			check not Result end

			d1 := "-4"
			Result := d1.is_natural
			check not Result end

			d1 := "5"
			Result := d1.is_natural
			check Result end
		end

	t7: BOOLEAN -- is_natural1
		local
			d1: DECIMAL
		do
			comment ("t7: is_natural1 - Zero, Positive, Negative Cases")

			d1 := "0.001"
			Result := d1.is_natural1
			check not Result end

			d1 := "0"
			Result := d1.is_natural1
			check not Result end

			d1 := "1"
			Result := d1.is_natural1
			check Result end

			d1 := "1.00"
			Result := d1.is_natural1
			check Result end

			d1 := "1.01"
			Result := d1.is_natural1
			check not Result end

			d1 := "-4.02"
			Result := d1.is_natural1
			check not Result end

			d1 := "-4"
			Result := d1.is_natural1
			check not Result end

			d1 := "5"
			Result := d1.is_natural1
			check Result end
		end

	t8: BOOLEAN -- is_negative
		local
			d1: DECIMAL
		do
			comment ("t8: is_negative - Zero, Positive, Negative Cases")

			d1 := "0.001"
			Result := d1.is_negative
			check not Result end

			d1 := "0"
			Result := d1.is_negative
			check not Result end

			d1 := "1"
			Result := d1.is_negative
			check not Result end

			d1 := "1.00"
			Result := d1.is_negative
			check not Result end

			d1 := "1.01"
			Result := d1.is_negative
			check not Result end

			d1 := "-4.02"
			Result := d1.is_negative
			check Result end

			d1 := "4"
			Result := d1.is_negative
			check not Result end

			d1 := "-5"
			Result := d1.is_negative
			check Result end
		end
end
