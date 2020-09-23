
class
	TEST_VALUE2

inherit
	ES_TEST

create
	make


feature {NONE} -- in it
	make
			-- create the test
	do
		add_boolean_case (agent test1)
		add_boolean_case (agent test2)
		add_boolean_case (agent test4)
		add_boolean_case (agent test5)

		-- this test is disabled so that the test harness can finish; if you want to get an "exception" (i.e. a pre-condition failure), enable this test
		--add_violation_case_with_tag ("incorrect_format", agent violation_test1)

		add_boolean_case (agent violation_test2)
	end


feature -- Agents
	test1: BOOLEAN
			-- test addition using loop
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
			random_number: RANDOM_NUMBER
			random_val_1: REAL
			random_val_2: REAL
			result_: REAL
			i: INTEGER
			EPSILON: REAL_64
		do
			comment ("test addition using loop")
			create random_number.make_real_random
			EPSILON := 0.1
			Result := true
			from
				i := 0
			until
				i > 10
			loop

				random_val_1 := random_number.real_value_between (0, 10000)
				random_val_2 := random_number.real_value_between (0, 10000)

				create sn1.make_from_string (random_val_1.out)
				create sn2.make_from_string (random_val_2.out)

				answer := sn1.add (sn2)
				result_ := random_val_1 + random_val_2
				Result := Result and (answer.precise_out.to_real - (result_)).abs <= EPSILON
				if not Result then
					comment ("error on inputs: " + random_val_1.out + "  " + random_val_2.out + "  our calculation=" + answer.precise_out + " Eiffel result=" + result_.out)
				end

				check Result end
				i := i + 1
			end

		end

	test2: BOOLEAN
			-- test the precise feature
		local
			sn: VALUE
			random_number: RANDOM_NUMBER
			generated_number: STRING
			i: INTEGER
		do
			comment ("precise test: randomly for 10 numbers")
			create random_number.make_real_random
			Result := true
			from
				i := 1
			until
				i > 10
			loop
				generated_number := random_number.real_value_between (0, 1000000).out
				create sn.make_from_string (generated_number)
				Result := Result and sn.precise_out.is_equal (generated_number)
				i:= i + 1
			end


		end

	test4: BOOLEAN
			-- test the out feature
		local
			sn: VALUE
		do
			comment ("out test")
			create sn.make_from_string ("12323.252111")
			Result := sn.out.is_equal ("12323.25")
			check Result end
			create sn.make_from_string ("12323.255111")
			Result := sn.out.is_equal ("12323.26")
			check Result end
			create sn.make_from_string ("0.0001")
			Result := sn.out.is_equal ("0.00")
			check Result end
			create sn.make_from_string ("0.0101")
			Result := sn.out.is_equal ("0.01")
			check Result end
			create sn.make_from_string ("0.011")
			Result := sn.out.is_equal ("0.01")
			check Result end
			create sn.make_from_string ("0.019")
			Result := sn.out.is_equal ("0.02")
			check Result end
			create sn.make_from_string ("0.015")
			Result := sn.out.is_equal ("0.02")
			check Result end
			create sn.make_from_string ("0.005")
			Result := sn.out.is_equal ("0.01")
			check Result end
			create sn.make_from_string ("0.05")
			Result := sn.out.is_equal ("0.05")
			check Result end
			create sn.make_from_string ("0.01")
			Result := sn.out.is_equal ("0.01")
			check Result end
			create sn.make_from_string ("0.5")
			Result := sn.out.is_equal ("0.50")
			check Result end
			create sn.make_from_string ("0.3")
			Result := sn.out.is_equal ("0.30")
			check Result end
			create sn.make_from_string ("0.0462342345234523")
			Result := sn.out.is_equal ("0.05")
			check Result end
			create sn.make_from_string ("100.001012131")
			Result := sn.out.is_equal ("100.00")
			check Result end
			create sn.make_from_string ("100234234234")
			Result := sn.out.is_equal ("100234234234.00")
			check Result end
			create sn.make_from_string ("100234.234234")
			Result := sn.out.is_equal ("100234.23")
			check Result end
		end

	test5: BOOLEAN
			-- test subtraction using loop
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
			random_number: RANDOM_NUMBER
			random_val_1: REAL
			random_val_2: REAL
			result_: REAL
			i: INTEGER
			EPSILON: REAL_64
		do
			comment ("test subtraction using loop")
			create random_number.make_real_random
			EPSILON := 0.1
			Result := true
			from
				i := 0
			until
				i > 10
			loop

				random_val_1 := random_number.real_value_between (0, 10000)
				random_val_2 := random_number.real_value_between (0, 10000)

				create sn1.make_from_string (random_val_1.out)
				create sn2.make_from_string (random_val_2.out)

				answer := sn1.subtract (sn2)
				result_ := random_val_1 - random_val_2
				Result := Result and (answer.precise_out.to_real - (result_)).abs <= EPSILON
				if not Result then
					comment ("error on inputs: " + random_val_1.out + "  " + random_val_2.out + "  our calculation=" + answer.precise_out + " Eiffel result=" + result_.out)
				end

				check Result end
				i := i + 1
			end
		end

	violation_test1
			-- incorrect string format XY.XY.XY
		local
			sn: VALUE
		do
			comment ("incorrect string format XY.XY.XY")
			create sn.make_from_string ("2.11.21")
		end

	violation_test2:BOOLEAN
			-- negative number
		local
			sn: VALUE
		do
			comment ("negative number")
			create sn.make_from_string ("-0.323")
			Result := sn < sn.zero
		end
end
