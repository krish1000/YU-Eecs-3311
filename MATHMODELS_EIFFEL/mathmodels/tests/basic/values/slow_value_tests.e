
class
	SLOW_VALUE_TESTS

inherit
	ES_TEST

create
	make


feature {NONE} -- in it
	make
			-- create the test
	do
		add_boolean_case (agent test3)
--		add_boolean_case (agent test6) -- This test causes a segmentation error
		add_boolean_case (agent test7)
		add_boolean_case (agent test8)

		add_boolean_case (agent test100)
		add_boolean_case (agent test101)
		add_boolean_case (agent test102)
		add_boolean_case (agent test103)
		add_boolean_case (agent test104)
		add_boolean_case (agent test105)
		add_boolean_case (agent test106)
		add_boolean_case (agent test107)
		add_boolean_case (agent test108)
		add_boolean_case (agent test109)
		add_boolean_case (agent test110)
		add_boolean_case (agent test111)
		add_boolean_case (agent test112)
		add_boolean_case (agent test113)
		add_boolean_case (agent test114)
		add_boolean_case (agent test115)
		add_boolean_case (agent test116)
		add_boolean_case (agent test117)
		add_boolean_case (agent test118)
		add_boolean_case (agent test119)
		add_boolean_case (agent test200)
		add_boolean_case (agent test201)
		add_boolean_case (agent test202)
		add_boolean_case (agent test203)
		add_boolean_case (agent test204)
		add_boolean_case (agent test205)
		add_boolean_case (agent test206)
		add_boolean_case (agent test207)
		add_boolean_case (agent test208)
		add_boolean_case (agent test209)
		add_boolean_case (agent test210)
		add_boolean_case (agent test211)
		add_boolean_case (agent test212)
		add_boolean_case (agent test213)
		add_boolean_case (agent test214)
		add_boolean_case (agent test215)
		add_boolean_case (agent test216)
		add_boolean_case (agent test217)
	end

feature -- Agents

	test3: BOOLEAN
			-- test multiplication using loop
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
			random_number: RANDOM_NUMBER
			random_val_1: REAL
			random_val_2: REAL
			result_: REAL
			i: INTEGER
			EPSILON: REAL
			junk: REAL
		do
			comment ("test multiplication using loop")
			create random_number.make_real_random
			EPSILON := 1
			Result := true
			from
				i := 0
			until
				i > 1000 or not Result
			loop

				random_val_1 := random_number.real_value_between (0, 1000)
				random_val_2 := random_number.real_value_between (0, 1000)

				create sn1.make_from_string (random_val_1.out)
				create sn2.make_from_string (random_val_2.out)

				answer := sn1.multiply (sn2)
				result_ := random_val_1 * random_val_2
				junk := ((answer.precise_out.to_real - (result_)).abs)/result_
				check junk <= .00001 end
				Result := Result and (answer.precise_out.to_real - (result_)).abs <= EPSILON
				if not Result then
					comment ("error on inputs: " + random_val_1.out + "  " + random_val_2.out + " Result was: " + answer.precise_out + " expected: " + result_.out)
				end

				check Result end
				i := i + 1
			end
		end

	test6: BOOLEAN
			-- test division using loop
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
			random_number: RANDOM_NUMBER
			random_val_1: REAL
			random_val_2: REAL
			result_: REAL
			i: INTEGER
			EPSILON: REAL
			junk: REAL
		do
			comment ("test division using loop")
			create random_number.make_real_random
			EPSILON := 1
			Result := true
			from
				i := 0
			until
				i > 1000 or not Result
			loop

				random_val_1 := random_number.real_value_between (0, 1000)
				random_val_2 := random_number.real_value_between (0, 1000)

				create sn1.make_from_string (random_val_1.out)
				create sn2.make_from_string (random_val_2.out)

				answer := sn1.divide (sn2)
				result_ := random_val_1 / random_val_2
				junk := ((answer.precise_out.to_real - (result_)).abs)/result_
				check junk <= .00001 end
				Result := Result and (answer.precise_out.to_real - (result_)).abs <= EPSILON
				if not Result then
					comment ("error on inputs: " + random_val_1.out + "  " + random_val_2.out + " Result was: " + answer.precise_out + " expected: " + result_.out)
				end

				check Result end
				i := i + 1
			end
		end

		test7: BOOLEAN
			-- test division
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test7: division precision set to 35 digits past the decimal")
			comment ("test division: 1 / 3 = 0.333333333333333333333333333333333333")
			create sn1.make_from_string ("1")
			create sn2.make_from_string ("3")
			answer := sn1 / sn2
			Result := answer.precise_out.starts_with ("0.33333333333333333333333333333333333") -- note that we can't use equal() here, because we don't know the exact precision we'll get
			check Result end
			Result := equal(answer.out, "0.33")
		end

	test100: BOOLEAN
			-- test division
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test division: 1.000 / 3.0 = 0.333333333333333333333333333333333333")
			create sn1.make_from_string ("1.000")
			create sn2.make_from_string ("3.0")
			answer := sn1 / sn2
			Result := answer.precise_out.starts_with ("0.33333333333333333333333333333333333")
			check Result end
			Result := equal(answer.out, "0.33")
		end

	test101: BOOLEAN
			-- test division
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test division: 1 / 3.0 = 0.333333333333333333333333333333333333")
			create sn1.make_from_string ("1")
			create sn2.make_from_string ("3.0")
			answer := sn1 / sn2
			Result := answer.precise_out.starts_with ("0.33333333333333333333333333333333333")
			check Result end
			Result := equal(answer.out, "0.33")
		end

	test102: BOOLEAN
			-- test division
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test division: 3 / 1.0 = 3")
			create sn1.make_from_string ("3")
			create sn2.make_from_string ("1.0")
			answer := sn1 / sn2
			Result := equal(answer.precise_out, "3") -- in this case, we can use equal() because the result is exact
			check Result end
			Result := equal(answer.out, "3.00")
		end

	test103: BOOLEAN
			-- test division
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test division: -1 / -0.500000 = 2")
			create sn1.make_from_string ("-1")
			create sn2.make_from_string ("-0.500000")
			answer := sn1 / sn2
			Result := equal(answer.precise_out, "2")
			check Result end
			Result := equal(answer.out, "2.00")
		end

	test104: BOOLEAN
			-- test division
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test division: 2 / -0.6666666667 = -2.9999999998500000000074999999996")
			create sn1.make_from_string ("2")
			create sn2.make_from_string ("-0.6666666667")
			answer := sn1 / sn2
			Result := answer.precise_out.starts_with ("-2.9999999998500000000074999999996")
			check Result end
			Result := equal(answer.out, "-3.00")
		end

	test105: BOOLEAN
			-- test division
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test division: 426356 / -28 = -15227")
			create sn1.make_from_string ("426356")
			create sn2.make_from_string ("-28")
			answer := sn1 / sn2
			Result := equal(answer.precise_out, "-15227")
			check Result end
			Result := equal(answer.out, "-15227.00")
		end

	test106: BOOLEAN
			-- test division
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test division: 600.0 / 15 = 40")
			create sn1.make_from_string ("600.0")
			create sn2.make_from_string ("15")
			answer := sn1 / sn2
			Result := equal(answer.precise_out, "40")
			check Result end
			Result := equal(answer.out, "40.00")
		end

	test107: BOOLEAN
			-- test division
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test division: 600.0 / 15 = 40")
			create sn1.make_from_string ("600.0")
			create sn2.make_from_string ("15")
			answer := sn1 / sn2
			Result := equal(answer.precise_out, "40")
			check Result end
			Result := equal(answer.out, "40.00")
		end

	test108: BOOLEAN
			-- test division
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test division: 0.3333333333333333333333333333333333333333333333 / 3.00000000000000000000000 = 0.1111111111111111111111111111111111111111111111")
			create sn1.make_from_string ("0.3333333333333333333333333333333333333333333333")
			create sn2.make_from_string ("3.00000000000000000000000")
			answer := sn1 / sn2
			Result := answer.precise_out.starts_with ("0.11111111111111111111111111111111111")
			check Result end
			Result := equal(answer.out, "0.11")
		end

	test109: BOOLEAN
			-- test division
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test division: -000810.0000000 / 9.00000000000000000000000000 = -90")
			create sn1.make_from_string ("-000810.0000000")
			create sn2.make_from_string ("9.00000000000000000000000000")
			answer := sn1 / sn2
			Result := equal(answer.precise_out, "-90")
			check Result end
			Result := equal(answer.out, "-90.00")
		end

	test110: BOOLEAN
			-- test division
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test division: 84286620042684884206684.886622440020486648200846268420 / 2.000000000000000000000000000000 = 42143310021342442103342.443311220010243324100423134210")
			create sn1.make_from_string ("84286620042684884206684.886622440020486648200846268420")
			create sn2.make_from_string ("2.000000000000000000000000000000")
			answer := sn1 / sn2
			Result := answer.precise_out.starts_with ("42143310021342442103342.44331122001024332410042313421")
			check Result end
			Result := equal(answer.out, "42143310021342442103342.44")
		end

	test111: BOOLEAN
			-- test division
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test division: 84286620042684884206684.886622440020486648200846268420 / 42143310021342442103342.443311220010243324100423134210 = 2")
			create sn1.make_from_string ("84286620042684884206684.886622440020486648200846268420")
			create sn2.make_from_string ("42143310021342442103342.443311220010243324100423134210")
			answer := sn1 / sn2
			Result := equal(answer.precise_out, "2")
			check Result end
			Result := equal(answer.out, "2.00")
		end

	test112: BOOLEAN
			-- test division
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test division: 7439758473585757575785757575783947538945.5904395843958439058439058439058439058349058439058439085394859430853904853985 / -00001.00000000000000000000000000000000000000000000000000000 = -7439758473585757575785757575783947538945.5904395843958439058439058439058439058349058439058439085394859430853904853985")
			create sn1.make_from_string ("7439758473585757575785757575783947538945.5904395843958439058439058439058439058349058439058439085394859430853904853985")
			create sn2.make_from_string ("-00001.00000000000000000000000000000000000000000000000000000")
			answer := sn1 / sn2
			Result := answer.precise_out.starts_with ("-7439758473585757575785757575783947538945.5904395843958439058439058439058439058349058439058439085394859430853904853985")
			check Result end
			Result := equal(answer.out, "-7439758473585757575785757575783947538945.59")
		end

	test113: BOOLEAN
			-- test division
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test division: 7439758473585757575785757575783947538945.5904395843958439058439058439058439058349058439058439085394859430853904853985 / -7439758473585757575785757575783947538945.5904395843958439058439058439058439058349058439058439085394859430853904853985 = -1")
			create sn1.make_from_string ("7439758473585757575785757575783947538945.5904395843958439058439058439058439058349058439058439085394859430853904853985")
			create sn2.make_from_string ("-7439758473585757575785757575783947538945.5904395843958439058439058439058439058349058439058439085394859430853904853985")
			answer := sn1 / sn2
			Result := equal(answer.precise_out, "-1")
			check Result end
			Result := equal(answer.out, "-1.00")
		end

	test114: BOOLEAN
			-- test division
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test division: 12345678987654321.000000000000000000000000000000000000000000000000000000000000 / 111111111.00000000000000000000000000000000000000 = 111111111")
			create sn1.make_from_string ("12345678987654321.000000000000000000000000000000000000000000000000000000000000")
			create sn2.make_from_string ("111111111.00000000000000000000000000000000000000")
			answer := sn1 / sn2
			Result := equal(answer.precise_out, "111111111")
			check Result end
			Result := equal(answer.out, "111111111.00")
		end

	test115: BOOLEAN
			-- test division
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test division: 234 / 2340 = 0.1")
			create sn1.make_from_string ("234")
			create sn2.make_from_string ("2340")
			answer := sn1 / sn2
			Result := equal(answer.precise_out, "0.1")
			check Result end
			Result := equal(answer.out, "0.10")
		end

	test116: BOOLEAN
			-- test division
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test division: 0.12345 / 100000000000000 = 0.0000000000000012345")
			create sn1.make_from_string ("0.12345")
			create sn2.make_from_string ("100000000000000")
			answer := sn1 / sn2
			Result := answer.precise_out.starts_with ("0.0000000000000012345")
			check Result end
			Result := equal(answer.out, "0.00")
		end

	test117: BOOLEAN
			-- test division
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test division: 1.2345678974534548454548454 / 10 = 0.12345678974534548454548454")
			create sn1.make_from_string ("1.2345678974534548454548454")
			create sn2.make_from_string ("10")
			answer := sn1 / sn2
			Result := answer.precise_out.starts_with ("0.12345678974534548454548454")
			check Result end
			Result := equal(answer.out, "0.12")
		end

	test118: BOOLEAN
			-- test division
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test division: -1.2345678974534548454548454 / 10 = -0.12345678974534548454548454")
			create sn1.make_from_string ("-1.2345678974534548454548454")
			create sn2.make_from_string ("10")
			answer := sn1 / sn2
			Result := answer.precise_out.starts_with ("-0.12345678974534548454548454")
			check Result end
			Result := equal(answer.out, "-0.12")
		end

	test119: BOOLEAN
			-- test division
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test division: -0 / 1 = 0") -- JSO takes 12 seconds
			create sn1.make_from_string ("-0")
			create sn2.make_from_string ("1")
			answer := sn1 / sn2
			Result := equal(answer.precise_out, "0")
			check Result end
			Result := equal(answer.out, "0.00")
		end

	test8: BOOLEAN
		-- test multiplication
		local
			sn1,sn2: VALUE
			answer: VALUE
		do
			comment ("test multiplication: 3.00000000 * 0.3333333333333333333333333333333333333333333333 = 0.9999999999999999999999999999999999999999999999")
			create sn1.make_from_string ("3.00000000")
			create sn2.make_from_string ("0.3333333333333333333333333333333333333333333333")
			answer := sn1 * sn2
			Result := equal(answer.precise_out, "0.9999999999999999999999999999999999999999999999")
			check Result end
			Result := equal(answer.out, "1.00")
		end

	test200: BOOLEAN
		-- test multiplication
		local
			sn1,sn2: VALUE
			answer: VALUE
		do
			comment ("test multiplication: -00007.1000000000000 * 0.1000000000 = -0.71")
			create sn1.make_from_string ("-00007.1000000000000")
			create sn2.make_from_string ("0.1000000000")
			answer := sn1 * sn2
			Result := equal(answer.precise_out, "-0.71")
			check Result end
			Result := equal(answer.out, "-0.71")
		end

	test201: BOOLEAN
		-- test multiplication
		local
			sn1,sn2: VALUE
			answer: VALUE
		do
			comment ("test multiplication: 0.7100000 * -10.00000 = -7.1")
			create sn1.make_from_string ("0.7100000")
			create sn2.make_from_string ("-10.00000")
			answer := sn1 * sn2
			Result := equal(answer.precise_out, "-7.1")
			check Result end
			Result := equal(answer.out, "-7.10")
		end

	test202: BOOLEAN
		-- test multiplication
		local
			sn1,sn2: VALUE
			answer: VALUE
		do
			comment ("test multiplication: -10.00000 * 0.7100000 = -7.1")
			create sn1.make_from_string ("-10.00000")
			create sn2.make_from_string ("0.7100000")
			answer := sn1 * sn2
			Result := equal(answer.precise_out, "-7.1")
			check Result end
			Result := equal(answer.out, "-7.10")
		end

	test203: BOOLEAN
		-- test multiplication
		local
			sn1,sn2: VALUE
			answer: VALUE
		do
			comment ("test multiplication: 2634786578463784561785643563654375784635784635784365783657864356356653547238973589347563758463785643563563478543.347573578957389565637563566565248974283742839748927489274892748927428394789237428934723897428947289347 * -000.00000 = 0")
			create sn1.make_from_string ("2634786578463784561785643563654375784635784635784365783657864356356653547238973589347563758463785643563563478543.347573578957389565637563566565248974283742839748927489274892748927428394789237428934723897428947289347")
			create sn2.make_from_string ("-000.00000")
			answer := sn1 * sn2
			Result := equal(answer.precise_out, "0")
			check Result end
			Result := equal(answer.out, "0.00")
		end

	test204: BOOLEAN
		-- test multiplication
		local
			sn1,sn2: VALUE
			answer: VALUE
		do
			comment ("test multiplication: 0 * 4273984723897234.4237894723847239847238947239847234 = 0")
			create sn1.make_from_string ("0")
			create sn2.make_from_string ("4273984723897234.4237894723847239847238947239847234")
			answer := sn1 * sn2
			Result := equal(answer.precise_out, "0")
			check Result end
			Result := equal(answer.out, "0.00")
		end

	test205: BOOLEAN
		-- test multiplication
		local
			sn1,sn2: VALUE
			answer: VALUE
		do
			comment ("test multiplication: 2634786578463784561785643563654375784635784635784365783657864356356653547238973589347563758463785643563563478543.347573578957389565637563566565248974283742839748927489274892748927428394789237428934723897428947289347 * 1.0 = 2634786578463784561785643563654375784635784635784365783657864356356653547238973589347563758463785643563563478543.347573578957389565637563566565248974283742839748927489274892748927428394789237428934723897428947289347")
			create sn1.make_from_string ("2634786578463784561785643563654375784635784635784365783657864356356653547238973589347563758463785643563563478543.347573578957389565637563566565248974283742839748927489274892748927428394789237428934723897428947289347")
			create sn2.make_from_string ("1.0")
			answer := sn1 * sn2
			Result := equal(answer.precise_out, "2634786578463784561785643563654375784635784635784365783657864356356653547238973589347563758463785643563563478543.347573578957389565637563566565248974283742839748927489274892748927428394789237428934723897428947289347")
			check Result end
			Result := equal(answer.out, "2634786578463784561785643563654375784635784635784365783657864356356653547238973589347563758463785643563563478543.35")
		end

	test206: BOOLEAN
		-- test multiplication
		local
			sn1,sn2: VALUE
			answer: VALUE
		do
			comment ("test multiplication: 23425.234243 * 793847.89223423445 = 18596072828.89876261503027135")
			create sn1.make_from_string ("23425.234243")
			create sn2.make_from_string ("793847.89223423445")
			answer := sn1 * sn2
			Result := equal(answer.precise_out, "18596072828.89876261503027135")
			check Result end
			Result := equal(answer.out, "18596072828.90")
		end

	test207: BOOLEAN
		-- test multiplication
		local
			sn1,sn2: VALUE
			answer: VALUE
		do
			comment ("test multiplication: 2346 * 48512 = 113809152")
			create sn1.make_from_string ("2346")
			create sn2.make_from_string ("48512")
			answer := sn1 * sn2
			Result := equal(answer.precise_out, "113809152")
			check Result end
			Result := equal(answer.out, "113809152.00")
		end

	test208: BOOLEAN
		-- test multiplication
		local
			sn1,sn2: VALUE
			answer: VALUE
		do
			comment ("test multiplication: 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000.000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 * 0.00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001 = 0.1")
			create sn1.make_from_string ("10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000.000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000")
			create sn2.make_from_string ("0.00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001")
			answer := sn1 * sn2
			Result := equal(answer.precise_out, "0.1")
			check Result end
			Result := equal(answer.out, "0.10")
		end

	test209: BOOLEAN
		-- test multiplication
		local
			sn1,sn2: VALUE
			answer: VALUE
		do
			comment ("test multiplication: 100000000000000000000000000000000000000000000000000000000000000000000 * 200000000000000000000000000000000000000000000000000000000000000000000000000000000000000 = 20000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000")
			create sn1.make_from_string ("100000000000000000000000000000000000000000000000000000000000000000000")
			create sn2.make_from_string ("200000000000000000000000000000000000000000000000000000000000000000000000000000000000000")
			answer := sn1 * sn2
			Result := equal(answer.precise_out, "20000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000")
			check Result end
			Result := equal(answer.out, "20000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000.00")
		end

	test210: BOOLEAN
		-- test multiplication
		local
			sn1,sn2: VALUE
			answer: VALUE
		do
			comment ("test multiplication: -.1 * 0.1 = -0.01")
			create sn1.make_from_string ("-.1")
			create sn2.make_from_string ("0.1")
			answer := sn1 * sn2
			Result := equal(answer.precise_out, "-0.01")
			check Result end
			Result := equal(answer.out, "-0.01")
		end

	test211: BOOLEAN
		-- test multiplication
		local
			sn1,sn2: VALUE
			answer: VALUE
		do
			comment ("test multiplication: 2.001 * 3.0 = 6.003")
			create sn1.make_from_string ("2.001")
			create sn2.make_from_string ("3.0")
			answer := sn1 * sn2
			Result := equal(answer.precise_out, "6.003")
			check Result end
			Result := equal(answer.out, "6.00")
		end

	test212: BOOLEAN
		-- test multiplication
		local
			sn1,sn2: VALUE
			answer: VALUE
		do
			comment ("test multiplication: -0.001 * 0.001 = -0.000001")
			create sn1.make_from_string ("-0.001")
			create sn2.make_from_string ("0.001")
			answer := sn1 * sn2
			Result := equal(answer.precise_out, "-0.000001")
			check Result end
			Result := equal(answer.out, "0.00")
		end

	test213: BOOLEAN
		-- test multiplication
		local
			sn1,sn2: VALUE
			answer: VALUE
		do
			comment ("test multiplication: 7 * 8.0 = 56")
			create sn1.make_from_string ("7")
			create sn2.make_from_string ("8.0")
			answer := sn1 * sn2
			Result := equal(answer.precise_out, "56")
			check Result end
			Result := equal(answer.out, "56.00")
		end

	test214: BOOLEAN
		-- test multiplication
		local
			sn1,sn2: VALUE
			answer: VALUE
		do
			comment ("test multiplication: -25 * -25 = 625")
			create sn1.make_from_string ("-25")
			create sn2.make_from_string ("-25")
			answer := sn1 * sn2
			Result := equal(answer.precise_out, "625")
			check Result end
			Result := equal(answer.out, "625.00")
		end

	test215: BOOLEAN
		-- test multiplication
		local
			sn1,sn2: VALUE
			answer: VALUE
		do
			comment ("test multiplication: 7 * -7 = -49")
			create sn1.make_from_string ("7")
			create sn2.make_from_string ("-7")
			answer := sn1 * sn2
			Result := equal(answer.precise_out, "-49")
			check Result end
			Result := equal(answer.out, "-49.00")
		end

	test216: BOOLEAN
		-- test multiplication
		local
			sn1,sn2: VALUE
			answer: VALUE
		do
			comment ("test multiplication: 5.43 * 6.875454 = 37.33371522")
			create sn1.make_from_string ("5.43")
			create sn2.make_from_string ("6.875454")
			answer := sn1 * sn2
			Result := equal(answer.precise_out, "37.33371522")
			check Result end
			Result := equal(answer.out, "37.33")
		end

	test217: BOOLEAN
		-- test multiplication
		local
			sn1,sn2: VALUE
			answer: VALUE
		do
			comment ("test multiplication: 4672836478263478263746273467826347826347862374678234234345664553465654646456.3442364646746456456567487867456576786864767867867645756564786847567567578567567575756756756757 * -0.1 = -467283647826347826374627346782634782634786237467823423434566455346565464645.63442364646746456456567487867456576786864767867867645756564786847567567578567567575756756756757")
			create sn1.make_from_string ("4672836478263478263746273467826347826347862374678234234345664553465654646456.3442364646746456456567487867456576786864767867867645756564786847567567578567567575756756756757")
			create sn2.make_from_string ("-0.1")
			answer := sn1 * sn2
			Result := equal(answer.precise_out, "-467283647826347826374627346782634782634786237467823423434566455346565464645.63442364646746456456567487867456576786864767867867645756564786847567567578567567575756756756757")
			check Result end
			Result := equal(answer.out, "-467283647826347826374627346782634782634786237467823423434566455346565464645.63")
		end

end
