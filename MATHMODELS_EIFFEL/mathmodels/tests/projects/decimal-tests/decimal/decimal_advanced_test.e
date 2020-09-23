note
	description: "[
					Contains test cases for elements of the DECIMAL class, including
					precision, accumulation of decimals, and more.
				  ]"
	author: "JSO, CD"
	date: "June 18, 2019"
	revision: "1.00"

class
	DECIMAL_ADVANCED_TEST

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
			add_boolean_case (agent t4) -- Extremely long test (~20 mins)
			add_boolean_case (agent t5)
		end

feature -- tests

	t1: BOOLEAN
		local
			d1, d2: DECIMAL
		do
			comment("t1: 0.1 ten times")
			d1 := ".1"
			d2 := d1 + d1 + d1 + d1 + d1 + d1 + d1 + d1 +d1 + d1
			Result := d2.out ~ "1.00" and d2.precise_out ~ "1"
		end

	t2: BOOLEAN
		local
			ma_decimal1: DECIMAL
			ma_decimal2: DECIMAL
			ma_result: DECIMAL

			value1: VALUE
			value2: VALUE
			val_result: VALUE

			s1, s2: STRING
		do
			comment("t2: Test to default precision 36")
			create ma_decimal1.make_from_string("22");
			create ma_decimal2.make_from_string("7");
			ma_result := ma_decimal1 / ma_decimal2;
			ma_result.reset_precision
			Result := ma_result ~ "3.14285714285714285714285714285714286"
			-- "3.1428571428571428571428571428571428571428571428571428571428571428571428571428571428571428571428571428"
			check Result end
			value1 := "22";
			value2 := "7";
			val_result := value1/value2;
			s1 := val_result.precise_out_to (2)
			s2 := ma_result.out
			Result := s1 ~ s2
			check Result end
		end

	t3: BOOLEAN
		local
			d1: DECIMAL
			d2: DECIMAL
			rd: DECIMAL
			d1c: MA_DECIMAL_CONTEXT
			pi100: DECIMAL
		do
			comment("t3: Precision to 100 digits")
			pi100 := "3.142857142857142857142857142857142857142857142857142857142857142857142857142857142857142857142857143"
			create d1.make_from_string("22");
			create d2.make_from_string("7");
			rd := d1 / d2;
			rd.reset_precision
			assert_equal ("fail 22/7 = 3.142857... to default", "3.14285714285714285714285714285714286", rd.precise_out)
			Result := rd ~ "3.14285714285714285714285714285714286"
			check Result end
			-- change context
			create d1c.make (100, 4)  -- precision 100, rounding 4
			create d1.make_from_string ("22")
			create d2.make_from_string ("7")
			d1.set_precision (100)
			rd := d1 / d2  -- proper division
			assert_equal ("fail 22/7 = 3.142857...", "3.142857142857142857142857142857142857142857142857142857142857142857142857142857142857142857142857143", rd.precise_out)
			Result := rd ~ pi100
			check Result end
		end


	t4: BOOLEAN
		local
			d1, d2, d3, d4, d5, d6: DECIMAL
			r64: REAL_64
			i: INTEGER
			r: RATIONAL

		do
			comment ("t4: Demonstration of precision superior to REAL_64, Interest Calculation (very long)")
			-- floating point arithmetic cannot distinguish
			-- between 0.4 and 0.40000000000000002
			r64 := 0.1 + 0.3
			Result := r64 = 0.4 and r64 = 0.40000000000000002
			check Result end
			-- decimal arithmetic can
			d1 := "0.1" ; d2 := "0.3"
			d3 := d1 + d2
			Result := d3 ~ "0.4"and d3 /~ "0.40000000000000002"
			check Result end
			assert_equal ("precise_out test", "0.4", d3.precise_out)
			assert_equal ("out test1", "0.40", d3.out)
			r64 := 100000*(1+0.05/12)^360
			Result := r64 = 446774.43140061089
			check Result end
			d1 := "100000" d2 := "0.05"; d3 := "12"; d4 := "360"
			d2.set_precision(120)
			d5 := d1 * (d1.one + d2/d3)^d4
			Result := d5.precise_out.starts_with ("446774.431400613221242807011041301589597772674487270698002439224547330881614835011308578390042190134313238565062087470")
			check Result end
			assert_equal ("out test2", "446774.43", d5.out)
			d6 := d5 - "446774.43140061089"
			Result := d6.precise_out.starts_with ("0.000000002331242807011041301589597772674487270698002439224547330881614835011308578390042190134313238565062087470")
			check
				 Result
			end
			d1 := "45.875"
			r := d1.as_rational
			Result := r ~ "367/8"
			check
				Result
			end
		end

	t5: BOOLEAN
		local
			d1, d2, answer:  DECIMAL
		do
			comment ("t5: Test set/reset precision")
			d1 := "100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
			d2 := "0.0000000000000000000000000000000000000000000000000000000000000000000000000000000000000001"
			answer := d1 + d2
			Result := answer.precise_out ~ "100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000.0000000000000000000000000000000000000000000000000000000000000000000000000000000000000001"
			check Result end
			answer.reset_precision
			Result := answer.precise_out ~ "100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
			check Result end

			d1 := "123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789"
			d2 := "0.123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789"
			answer := d1 + d2
			Result := answer.precise_out ~ "123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789.123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789"
			check Result end

			answer.set_precision (5)
			Result := answer.precise_out ~ "123460000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
			check
				Result
			end
		end
end
