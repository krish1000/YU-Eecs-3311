class
	TEST_VALUE1
inherit
	ES_TEST

create
	make


feature {NONE} -- in it
	make
			-- create the test
	do
--		add_boolean_case (agent test00)  -- this test fails
		add_boolean_case (agent test01)
		add_boolean_case (agent test11)
		add_boolean_case (agent test22)
		add_boolean_case (agent test0)
		add_boolean_case (agent test1)
		add_boolean_case (agent test2)
		add_boolean_case (agent test3)
		add_boolean_case (agent test4)
		add_boolean_case (agent test5)
		add_boolean_case (agent test8)
		add_boolean_case (agent test9)
		add_boolean_case (agent test12)
		add_boolean_case (agent test13)

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
		add_boolean_case (agent test218)
		add_boolean_case (agent test219)
		add_boolean_case (agent test220)
		add_boolean_case (agent test221)
		add_boolean_case (agent test222)
		add_boolean_case (agent test223)
		add_boolean_case (agent test224)
		add_boolean_case (agent test225)
		add_boolean_case (agent test226)
		add_boolean_case (agent test227)
		add_boolean_case (agent test300)
		add_boolean_case (agent test301)
		add_boolean_case (agent test302)
		add_boolean_case (agent test303)
		add_boolean_case (agent test304)
		add_boolean_case (agent test305)
		add_boolean_case (agent test306)
		add_boolean_case (agent test307)
		add_boolean_case (agent test308)
		add_boolean_case (agent test309)
		add_boolean_case (agent test310)
		add_boolean_case (agent test400)
		add_boolean_case (agent test401)
		add_boolean_case (agent test402)
		add_boolean_case (agent test403)
		add_boolean_case (agent test404)
		add_boolean_case (agent test405)

		--add_violation_case_with_tag ("good_divisor", agent test10)
--		add_case(agent test10)
	end

feature -- Tests


	test00: BOOLEAN
		local
			three, two: VALUE
			answer: VALUE
		do
			comment ("test00: checking division to 35 decimal points")
			create three.make_from_string ("3")
			answer := three.one/three
--			print(answer.precise_out)
			Result := answer.precise_out ~ "0.333333333333333333333333333333333333"
			check Result end


			create two.make_from_string ("2")
			answer := two/three
--			print(answer.precise_out)
			Result := answer.precise_out ~ "0.666666666666666666666666666666666666"
			check Result end
		end

	test01: BOOLEAN
		local
			v: VALUE
		do
			comment("test01: check that 99.995.out = 100.00")
			v := "99.995"
			Result := v.out ~ "100.00"
			check Result end
			v := "999.995"
			Result := v.out ~ "1000.00"
			check Result end
		end

	test22: BOOLEAN
		local
			num1: VALUE
			answer: STRING
			answer2: VALUE
		do
			comment ("test22")
			create num1.make_from_string ("3.4344334455635543332")
			answer := num1.precise_out_to (10)
			Result := answer ~"3.4344334455"
			check Result end

			create num1.make_from_string ("3.4344334455335543332")
			answer2 := num1.round_to (8)
			Result := answer2.precise_out ~ "3.43443345"
			check Result end
		end


	test0: BOOLEAN
		local
			sn1,sn2: VALUE
			answer: VALUE
		do
			comment ("test0: test multiplication: 30021.232*1.2 = 36025.4784")
			create sn1.make_from_string ("1.2")
			create sn2.make_from_string ("30021.232")
			answer := sn1*sn2
			Result := answer.precise_out ~ "36025.4784"
			check Result end
			Result := answer.out ~ "36025.48"
		end

	test1: BOOLEAN
			-- test addition
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test1: test addition: 123.123 + 42.5 = 165.623")
			create sn1.make_from_string ("123.123")
			create sn2.make_from_string ("42.5")
			answer := sn1 + sn2
			Result := answer.precise_out ~ "165.623"
			check Result end
			Result := answer.out ~ "165.62"
		end

	test2: BOOLEAN
		local
			sn1: VALUE
			sn2: VALUE
		do
			comment ("test2: test that 42.5 < 123.123")
			create sn1.make_from_string ("123.123")
			create sn2.make_from_string ("42.5")
			Result := sn2 < sn1
		end

	test3: BOOLEAN
		local
			v1,v2,v3: VALUE
		do
			comment ("test3: test money value equality")
			create v1.make_from_string ("123.12345678999876")
			create v2.make_from_string ("123.12345678999875")
			create v3.make_from_string ("123.12345678999876")
			Result := v1 ~ v3 and v1 /~ v2
		end

	test4: BOOLEAN
			-- test addition
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test4: test addition: 1285 + 1387 = 2672")
			create sn1.make_from_string ("1285")
			create sn2.make_from_string ("1387")
			answer := sn1 + sn2
			Result := answer.precise_out ~ "2672"
			check Result end
			Result := answer.out ~ "2672.00"
		end

	test100: BOOLEAN
			-- test addition
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test5: test addition: 177.00 + -000177.0 = 0")
			create sn1.make_from_string ("177.00")
			create sn2.make_from_string ("-000177.0")
			answer := sn1 + sn2
			Result := equal(answer.precise_out, "0")
			check Result end
			Result := equal(answer.out, "0.00")
		end

	test101: BOOLEAN
			-- test addition
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test6: test addition: 99.9 + 2.1 = 102")
			create sn1.make_from_string ("99.9")
			create sn2.make_from_string ("2.1")
			answer := sn1 + sn2
			Result := equal(answer.precise_out, "102")
			check Result end
			Result := equal(answer.out, "102.00")
		end

	test102: BOOLEAN
			-- test addition
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test addition: 99.90000000001 + 0000000000000.100000000110000000090000 = 100.00000000012000000009")
			create sn1.make_from_string ("99.90000000001")
			create sn2.make_from_string ("0000000000000.100000000110000000090000")
			answer := sn1 + sn2
			Result := equal(answer.precise_out, "100.00000000012000000009")
			check Result end
			Result := equal(answer.out, "100.00")
		end

	test103: BOOLEAN
			-- test addition
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test addition: 100000000000.0000000000001 + 1000.001100110011023 = 100000001000.001100110011123")
			create sn1.make_from_string ("100000000000.0000000000001")
			create sn2.make_from_string ("1000.001100110011023")
			answer := sn1 + sn2
			Result := equal(answer.precise_out, "100000001000.001100110011123")
			check Result end
			Result := equal(answer.out, "100000001000.00")
		end

	test104: BOOLEAN
			-- test addition
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test addition: -0 + -0 = 0")
			create sn1.make_from_string ("-0")
			create sn2.make_from_string ("-0")
			answer := sn1 + sn2
			Result := equal(answer.precise_out, "0")
			check Result end
			Result := equal(answer.out, "0.00")
		end

	test105: BOOLEAN
			-- test addition
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test addition: 198.00 + 2 = 200")
			create sn1.make_from_string ("198.00")
			create sn2.make_from_string ("2")
			answer := sn1 + sn2
			Result := equal(answer.precise_out, "200")
			check Result end
			Result := equal(answer.out, "200.00")
		end

	test106: BOOLEAN
			-- test addition
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test addition: 202 + -02.0000 = 200")
			create sn1.make_from_string ("202")
			create sn2.make_from_string ("-02.0000")
			answer := sn1 + sn2
			Result := equal(answer.precise_out, "200")

			check Result end
			Result := equal(answer.out, "200.00")
		end

	test107: BOOLEAN
			-- test addition
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test addition: 98 + 14 = 112")
			create sn1.make_from_string ("98")
			create sn2.make_from_string ("14")
			answer := sn1 + sn2
			Result := equal(answer.precise_out, "112")
			check Result end
			Result := equal(answer.out, "112.00")
		end

	test108: BOOLEAN
			-- test addition
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test addition: 098.1 + 0013.9 = 112")
			create sn1.make_from_string ("098.1")
			create sn2.make_from_string ("0013.9")
			answer := sn1 + sn2
			Result := equal(answer.precise_out, "112")
			check Result end
			Result := equal(answer.out, "112.00")
		end

	test109: BOOLEAN
			-- test addition
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test addition: -127.00000000 + -3 = -130")
			create sn1.make_from_string ("-127.00000000")
			create sn2.make_from_string ("-3")
			answer := sn1 + sn2
			Result := equal(answer.precise_out, "-130")
			check Result end
			Result := equal(answer.out, "-130.00")
		end

	test110: BOOLEAN
			-- test addition
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test addition: 4635743657353.578395757439573577775767535734859364543534534645567578564564353426467456452675856245564675734645 + -4635743657353.578395757439573577775767535734859364543534534645567578564564353426467456452675856245564675734645 = 0")
			create sn1.make_from_string ("4635743657353.578395757439573577775767535734859364543534534645567578564564353426467456452675856245564675734645")
			create sn2.make_from_string ("-4635743657353.578395757439573577775767535734859364543534534645567578564564353426467456452675856245564675734645")
			answer := sn1 + sn2
			Result := equal(answer.precise_out, "0")
			check Result end
			Result := equal(answer.out, "0.00")
		end

	test111: BOOLEAN
			-- test addition
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test addition: 3512765361.123812789378917389423472374238974892374982374 + 27893.234723894723897893274326578246826346 = 3512793254.358536684102815282697798952485801238374982374")
			create sn1.make_from_string ("3512765361.123812789378917389423472374238974892374982374")
			create sn2.make_from_string ("27893.234723894723897893274326578246826346")
			answer := sn1 + sn2
			Result := equal(answer.precise_out, "3512793254.358536684102815282697798952485801238374982374")
			check Result end
			Result := equal(answer.out, "3512793254.36")
		end

	test112: BOOLEAN
			-- test addition
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test addition: 1 + -100.0 = -99")
			create sn1.make_from_string ("1")
			create sn2.make_from_string ("-100.0")
			answer := sn1 + sn2
			Result := equal(answer.precise_out, "-99")
			check Result end
			Result := equal(answer.out, "-99.00")
		end

	test113: BOOLEAN
			-- test addition
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test addition: -100.000 + 1 = -99")
			create sn1.make_from_string ("-100.000")
			create sn2.make_from_string ("1")
			answer := sn1 + sn2
			Result := equal(answer.precise_out, "-99")
			check Result end
			Result := equal(answer.out, "-99.00")
		end

	test114: BOOLEAN
			-- test addition
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test addition: 999999.9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999 + 0.0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001 = 1000000")
			create sn1.make_from_string ("999999.9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999")
			create sn2.make_from_string ("0.0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001")
			answer := sn1 + sn2
			Result := equal(answer.precise_out, "1000000")
			check Result end
			Result := equal(answer.out, "1000000.00")
		end

	test115: BOOLEAN
			-- test addition
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test addition: 84395743648584735894737856356473598473589674573452345789736734583847586374357823583585623562437538957677456437589375894736583654736578365783465782346578436578346578634576356436578436543567843657843657834658734656347564356473564735643567436578435636547365784365843657835 + 1 = 84395743648584735894737856356473598473589674573452345789736734583847586374357823583585623562437538957677456437589375894736583654736578365783465782346578436578346578634576356436578436543567843657843657834658734656347564356473564735643567436578435636547365784365843657836")
			create sn1.make_from_string ("84395743648584735894737856356473598473589674573452345789736734583847586374357823583585623562437538957677456437589375894736583654736578365783465782346578436578346578634576356436578436543567843657843657834658734656347564356473564735643567436578435636547365784365843657835")
			create sn2.make_from_string ("1")
			answer := sn1 + sn2
			Result := equal(answer.precise_out, "84395743648584735894737856356473598473589674573452345789736734583847586374357823583585623562437538957677456437589375894736583654736578365783465782346578436578346578634576356436578436543567843657843657834658734656347564356473564735643567436578435636547365784365843657836")
			check Result end
			Result := equal(answer.out, "84395743648584735894737856356473598473589674573452345789736734583847586374357823583585623562437538957677456437589375894736583654736578365783465782346578436578346578634576356436578436543567843657843657834658734656347564356473564735643567436578435636547365784365843657836.00")
		end

	test116: BOOLEAN
			-- test addition
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test addition: 84395743648584735894737856356473598473589674573452345789736734583847586374357823583585623562437538957677456437589375894736583654736578365783465782346578436578346578634576356436578436543567843657843657834658734656347564356473564735643567436578435636547365784365843657835.456765347573489754764875825624783563478653785348975652357346378465782364534895646834906836524571435138956890456889275834651347866873815671452365434786893256278361423571348956347825678583513478512365783457372523456356426457825891345678462378423784615786132552361347851734891237429 + 1 = 84395743648584735894737856356473598473589674573452345789736734583847586374357823583585623562437538957677456437589375894736583654736578365783465782346578436578346578634576356436578436543567843657843657834658734656347564356473564735643567436578435636547365784365843657836.456765347573489754764875825624783563478653785348975652357346378465782364534895646834906836524571435138956890456889275834651347866873815671452365434786893256278361423571348956347825678583513478512365783457372523456356426457825891345678462378423784615786132552361347851734891237429")
			create sn1.make_from_string ("84395743648584735894737856356473598473589674573452345789736734583847586374357823583585623562437538957677456437589375894736583654736578365783465782346578436578346578634576356436578436543567843657843657834658734656347564356473564735643567436578435636547365784365843657835.456765347573489754764875825624783563478653785348975652357346378465782364534895646834906836524571435138956890456889275834651347866873815671452365434786893256278361423571348956347825678583513478512365783457372523456356426457825891345678462378423784615786132552361347851734891237429")
			create sn2.make_from_string ("1")
			answer := sn1 + sn2
			Result := equal(answer.precise_out, "84395743648584735894737856356473598473589674573452345789736734583847586374357823583585623562437538957677456437589375894736583654736578365783465782346578436578346578634576356436578436543567843657843657834658734656347564356473564735643567436578435636547365784365843657836.456765347573489754764875825624783563478653785348975652357346378465782364534895646834906836524571435138956890456889275834651347866873815671452365434786893256278361423571348956347825678583513478512365783457372523456356426457825891345678462378423784615786132552361347851734891237429")
			check Result end
			Result := equal(answer.out, "84395743648584735894737856356473598473589674573452345789736734583847586374357823583585623562437538957677456437589375894736583654736578365783465782346578436578346578634576356436578436543567843657843657834658734656347564356473564735643567436578435636547365784365843657836.46")
		end

	test117: BOOLEAN
			-- test addition
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test addition: 0.84395743648584735894737856356473598473589674573452345789736734583847586374357823583585623562437538957677456437589375894736583654736578365783465782346578436578346578634576356436578436543567843657843657834658734656347564356473564735643567436578435636547365784365843657835 + 1 = 1.84395743648584735894737856356473598473589674573452345789736734583847586374357823583585623562437538957677456437589375894736583654736578365783465782346578436578346578634576356436578436543567843657843657834658734656347564356473564735643567436578435636547365784365843657835")
			create sn1.make_from_string ("0.84395743648584735894737856356473598473589674573452345789736734583847586374357823583585623562437538957677456437589375894736583654736578365783465782346578436578346578634576356436578436543567843657843657834658734656347564356473564735643567436578435636547365784365843657835")
			create sn2.make_from_string ("1")
			answer := sn1 + sn2
			Result := equal(answer.precise_out, "1.84395743648584735894737856356473598473589674573452345789736734583847586374357823583585623562437538957677456437589375894736583654736578365783465782346578436578346578634576356436578436543567843657843657834658734656347564356473564735643567436578435636547365784365843657835")
			check Result end
			Result := equal(answer.out, "1.84")
		end

	test5: BOOLEAN
			-- test subtraction
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test subtraction: 1285 - 1387 = -102")
			create sn1.make_from_string ("1285")
			create sn2.make_from_string ("1387")
			answer := sn1 - sn2
			Result := equal(answer.precise_out, "-102")
			check Result end
			Result := equal(answer.out, "-102.00")
		end

	test200: BOOLEAN
			-- test subtraction
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test subtraction: 177.00 - -000177.0 = 354")
			create sn1.make_from_string ("177.00")
			create sn2.make_from_string ("-000177.0")
			answer := sn1 - sn2
			Result := equal(answer.precise_out, "354")
			check Result end
			Result := equal(answer.out, "354.00")
		end

	test201: BOOLEAN
			-- test subtraction
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test subtraction: 177.00 - -000177.0 = 354")
			create sn1.make_from_string ("177.00")
			create sn2.make_from_string ("-000177.0")
			answer := sn1 - sn2
			Result := equal(answer.precise_out, "354")
			check Result end
			Result := equal(answer.out, "354.00")
		end

	test202: BOOLEAN
			-- test subtraction
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test subtraction: 177.00 - 0177.00000000 = 0")
			create sn1.make_from_string ("177.00")
			create sn2.make_from_string ("0177.00000000")
			answer := sn1 - sn2
			Result := equal(answer.precise_out, "0")
			check Result end
			Result := equal(answer.out, "0.00")
		end

	test203: BOOLEAN
			-- test subtraction
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test subtraction: 99.9 - 2.1 = 97.8")
			create sn1.make_from_string ("99.9")
			create sn2.make_from_string ("2.1")
			answer := sn1 - sn2
			Result := equal(answer.precise_out, "97.8")
			check Result end
			Result := equal(answer.out, "97.80")
		end

	test204: BOOLEAN
			-- test subtraction
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test subtraction: 112 - 98.7 = 13.3")
			create sn1.make_from_string ("112")
			create sn2.make_from_string ("98.7")
			answer := sn1 - sn2
			Result := equal(answer.precise_out, "13.3")
			check Result end
			Result := equal(answer.out, "13.30")
		end

	test205: BOOLEAN
			-- test subtraction
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test subtraction: 112 - 98 = 14")
			create sn1.make_from_string ("112")
			create sn2.make_from_string ("98")
			answer := sn1 - sn2
			Result := equal(answer.precise_out, "14")
			check Result end
			Result := equal(answer.out, "14.00")
		end

	test206: BOOLEAN
			-- test subtraction
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test subtraction: 99.90000000001 - 0000000000000.100000000110000000090000 = 99.79999999989999999991")
			create sn1.make_from_string ("99.90000000001")
			create sn2.make_from_string ("0000000000000.100000000110000000090000")
			answer := sn1 - sn2
			Result := equal(answer.precise_out, "99.79999999989999999991")
			check Result end
			Result := equal(answer.out, "99.80")
		end

	test207: BOOLEAN
			-- test subtraction
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test subtraction: 100000000000.0000000000001 - 1000.001100110011023 = 99999998999.998899889989077")
			create sn1.make_from_string ("100000000000.0000000000001")
			create sn2.make_from_string ("1000.001100110011023")
			answer := sn1 - sn2
			Result := equal(answer.precise_out, "99999998999.998899889989077")
			check Result end
			Result := equal(answer.out, "99999999000.00")
		end

	test208: BOOLEAN
			-- test subtraction
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test subtraction: 100000000000.0000000000001 - 1000.001100110011023 = 99999998999.998899889989077")
			create sn1.make_from_string ("100000000000.0000000000001")
			create sn2.make_from_string ("1000.001100110011023")
			answer := sn1 + -sn2
			Result := equal(answer.precise_out, "99999998999.998899889989077")
			check Result end
			Result := equal(answer.out, "99999999000.00")
		end

	test209: BOOLEAN
			-- test subtraction
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test subtraction: 1 - 100.0 = -99")
			create sn1.make_from_string ("1")
			create sn2.make_from_string ("100.0")
			answer := sn1 - sn2
			Result := equal(answer.precise_out, "-99")
			check Result end
			Result := equal(answer.out, "-99.00")
		end

	test210: BOOLEAN
			-- test subtraction
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test subtraction: 100.1 - 1 = 99.1")
			create sn1.make_from_string ("100.1")
			create sn2.make_from_string ("1")
			answer := sn1 - sn2
			Result := equal(answer.precise_out, "99.1")
			check Result end
			Result := equal(answer.out, "99.10")
		end

	test211: BOOLEAN
			-- test subtraction
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test subtraction: 100 - 1.00 = 99")
			create sn1.make_from_string ("100")
			create sn2.make_from_string ("1.00")
			answer := sn1 - sn2
			Result := equal(answer.precise_out, "99")
			check Result end
			Result := equal(answer.out, "99.00")
		end

	test212: BOOLEAN
			-- test subtraction
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test subtraction: 12 - 125.456 = -113.456")
			create sn1.make_from_string ("12")
			create sn2.make_from_string ("125.456")
			answer := sn1 - sn2
			Result := equal(answer.precise_out, "-113.456")
			check Result end
			Result := equal(answer.out, "-113.46")
		end

	test213: BOOLEAN
			-- test subtraction
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test subtraction: -12 - 125.456 = -137.456")
			create sn1.make_from_string ("-12")
			create sn2.make_from_string ("125.456")
			answer := sn1 - sn2
			Result := equal(answer.precise_out, "-137.456")
			check Result end
			Result := equal(answer.out, "-137.46")
		end

	test214: BOOLEAN
			-- test subtraction
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test subtraction: -12 - -125.456 = 113.456")
			create sn1.make_from_string ("-12")
			create sn2.make_from_string ("-125.456")
			answer := sn1 - sn2
			Result := equal(answer.precise_out, "113.456")
			check Result end
			Result := equal(answer.out, "113.46")
		end

	test215: BOOLEAN
			-- test subtraction
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test subtraction: 125.456 - 12 = 113.456")
			create sn1.make_from_string ("125.456")
			create sn2.make_from_string ("12")
			answer := sn1 - sn2
			Result := equal(answer.precise_out, "113.456")
			check Result end
			Result := equal(answer.out, "113.46")
		end

	test216: BOOLEAN
			-- test subtraction
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test subtraction: 098.1 - 0013.9 = 84.2")
			create sn1.make_from_string ("098.1")
			create sn2.make_from_string ("0013.9")
			answer := sn1 - sn2
			Result := equal(answer.precise_out, "84.2")
			check Result end
			Result := equal(answer.out, "84.20")
		end

	test217: BOOLEAN
			-- test subtraction
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test subtraction: -127.00000000 - -3 = -124")
			create sn1.make_from_string ("-127.00000000")
			create sn2.make_from_string ("-3")
			answer := sn1 - sn2
			Result := equal(answer.precise_out, "-124")
			check Result end
			Result := equal(answer.out, "-124.00")
		end

	test218: BOOLEAN
			-- test subtraction
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test subtraction: 4635743657353.578395757439573577775767535734859364543534534645567578564564353426467456452675856245564675734645 - 4635743657353.578395757439573577775767535734859364543534534645567578564564353426467456452675856245564675734645 = 0")
			create sn1.make_from_string ("4635743657353.578395757439573577775767535734859364543534534645567578564564353426467456452675856245564675734645")
			create sn2.make_from_string ("4635743657353.578395757439573577775767535734859364543534534645567578564564353426467456452675856245564675734645")
			answer := sn1 - sn2
			Result := equal(answer.precise_out, "0")
			check Result end
			Result := equal(answer.out, "0.00")
		end

	test219: BOOLEAN
			-- test subtraction
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test subtraction: 3512765361.123812789378917389423472374238974892374982374 - 27893.234723894723897893274326578246826346 = 3512737467.889088894655019496149145795992148546374982374")
			create sn1.make_from_string ("3512765361.123812789378917389423472374238974892374982374")
			create sn2.make_from_string ("27893.234723894723897893274326578246826346")
			answer := sn1 - sn2
			Result := equal(answer.precise_out, "3512737467.889088894655019496149145795992148546374982374")
			check Result end
			Result := equal(answer.out, "3512737467.89")
		end

	test220: BOOLEAN
			-- test subtraction
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test subtraction: 999999.9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999 - 0.9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999 = 999999")
			create sn1.make_from_string ("999999.9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999")
			create sn2.make_from_string ("0.9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999")
			answer := sn1 - sn2
			Result := equal(answer.precise_out, "999999")
			check Result end
			Result := equal(answer.out, "999999.00")
		end

	test221: BOOLEAN
			-- test subtraction
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test subtraction: 999999.9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999 - 999999 = 0.9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999")
			create sn1.make_from_string ("999999.9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999")
			create sn2.make_from_string ("999999")
			answer := sn1 - sn2
			Result := equal(answer.precise_out, "0.9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999")
			check Result end
			Result := equal(answer.out, "1.00")
		end

	test222: BOOLEAN
			-- test subtraction
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test subtraction: 84395743648584735894737856356473598473589674573452345789736734583847586374357823583585623562437538957677456437589375894736583654736578365783465782346578436578346578634576356436578436543567843657843657834658734656347564356473564735643567436578435636547365784365843657835 - 1 = 84395743648584735894737856356473598473589674573452345789736734583847586374357823583585623562437538957677456437589375894736583654736578365783465782346578436578346578634576356436578436543567843657843657834658734656347564356473564735643567436578435636547365784365843657834")
			create sn1.make_from_string ("84395743648584735894737856356473598473589674573452345789736734583847586374357823583585623562437538957677456437589375894736583654736578365783465782346578436578346578634576356436578436543567843657843657834658734656347564356473564735643567436578435636547365784365843657835")
			create sn2.make_from_string ("1")
			answer := sn1 - sn2
			Result := equal(answer.precise_out, "84395743648584735894737856356473598473589674573452345789736734583847586374357823583585623562437538957677456437589375894736583654736578365783465782346578436578346578634576356436578436543567843657843657834658734656347564356473564735643567436578435636547365784365843657834")
			check Result end
			Result := equal(answer.out, "84395743648584735894737856356473598473589674573452345789736734583847586374357823583585623562437538957677456437589375894736583654736578365783465782346578436578346578634576356436578436543567843657843657834658734656347564356473564735643567436578435636547365784365843657834.00")
		end

	test223: BOOLEAN
			-- test subtraction
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test subtraction: 84395743648584735894737856356473598473589674573452345789736734583847586374357823583585623562437538957677456437589375894736583654736578365783465782346578436578346578634576356436578436543567843657843657834658734656347564356473564735643567436578435636547365784365843657835.5734895734895789347895634789573490583904587624875893534890589038649068908790356890585649578935734897689764897869057890576987935768573465893276857468978968234753897583495734895734895738945738945738943895738957357 - 1 = 84395743648584735894737856356473598473589674573452345789736734583847586374357823583585623562437538957677456437589375894736583654736578365783465782346578436578346578634576356436578436543567843657843657834658734656347564356473564735643567436578435636547365784365843657834.5734895734895789347895634789573490583904587624875893534890589038649068908790356890585649578935734897689764897869057890576987935768573465893276857468978968234753897583495734895734895738945738945738943895738957357")
			create sn1.make_from_string ("84395743648584735894737856356473598473589674573452345789736734583847586374357823583585623562437538957677456437589375894736583654736578365783465782346578436578346578634576356436578436543567843657843657834658734656347564356473564735643567436578435636547365784365843657835.5734895734895789347895634789573490583904587624875893534890589038649068908790356890585649578935734897689764897869057890576987935768573465893276857468978968234753897583495734895734895738945738945738943895738957357")
			create sn2.make_from_string ("1")
			answer := sn1 - sn2
			Result := equal(answer.precise_out, "84395743648584735894737856356473598473589674573452345789736734583847586374357823583585623562437538957677456437589375894736583654736578365783465782346578436578346578634576356436578436543567843657843657834658734656347564356473564735643567436578435636547365784365843657834.5734895734895789347895634789573490583904587624875893534890589038649068908790356890585649578935734897689764897869057890576987935768573465893276857468978968234753897583495734895734895738945738945738943895738957357")
			check Result end
			Result := equal(answer.out, "84395743648584735894737856356473598473589674573452345789736734583847586374357823583585623562437538957677456437589375894736583654736578365783465782346578436578346578634576356436578436543567843657843657834658734656347564356473564735643567436578435636547365784365843657834.57")
		end

	test224: BOOLEAN
			-- test subtraction
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test subtraction: 1 - 84395743648584735894737856356473598473589674573452345789736734583847586374357823583585623562437538957677456437589375894736583654736578365783465782346578436578346578634576356436578436543567843657843657834658734656347564356473564735643567436578435636547365784365843657835 = -84395743648584735894737856356473598473589674573452345789736734583847586374357823583585623562437538957677456437589375894736583654736578365783465782346578436578346578634576356436578436543567843657843657834658734656347564356473564735643567436578435636547365784365843657834")
			create sn1.make_from_string ("1")
			create sn2.make_from_string ("84395743648584735894737856356473598473589674573452345789736734583847586374357823583585623562437538957677456437589375894736583654736578365783465782346578436578346578634576356436578436543567843657843657834658734656347564356473564735643567436578435636547365784365843657835")
			answer := sn1 - sn2
			Result := equal(answer.precise_out, "-84395743648584735894737856356473598473589674573452345789736734583847586374357823583585623562437538957677456437589375894736583654736578365783465782346578436578346578634576356436578436543567843657843657834658734656347564356473564735643567436578435636547365784365843657834")
			check Result end
			Result := equal(answer.out, "-84395743648584735894737856356473598473589674573452345789736734583847586374357823583585623562437538957677456437589375894736583654736578365783465782346578436578346578634576356436578436543567843657843657834658734656347564356473564735643567436578435636547365784365843657834.00")
		end

	test225: BOOLEAN
			-- test subtraction
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test subtraction: 1.84395743648584735894737856356473598473589674573452345789736734583847586374357823583585623562437538957677456437589375894736583654736578365783465782346578436578346578634576356436578436543567843657843657834658734656347564356473564735643567436578435636547365784365843657835 - 1 = 0.84395743648584735894737856356473598473589674573452345789736734583847586374357823583585623562437538957677456437589375894736583654736578365783465782346578436578346578634576356436578436543567843657843657834658734656347564356473564735643567436578435636547365784365843657835")
			create sn1.make_from_string ("1.84395743648584735894737856356473598473589674573452345789736734583847586374357823583585623562437538957677456437589375894736583654736578365783465782346578436578346578634576356436578436543567843657843657834658734656347564356473564735643567436578435636547365784365843657835")
			create sn2.make_from_string ("1")
			answer := sn1 - sn2
			Result := equal(answer.precise_out, "0.84395743648584735894737856356473598473589674573452345789736734583847586374357823583585623562437538957677456437589375894736583654736578365783465782346578436578346578634576356436578436543567843657843657834658734656347564356473564735643567436578435636547365784365843657835")
			check Result end
			Result := equal(answer.out, "0.84")
		end

	test226: BOOLEAN
			-- test subtraction
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test subtraction: 1 - 1.84395743648584735894737856356473598473589674573452345789736734583847586374357823583585623562437538957677456437589375894736583654736578365783465782346578436578346578634576356436578436543567843657843657834658734656347564356473564735643567436578435636547365784365843657835 = -0.84395743648584735894737856356473598473589674573452345789736734583847586374357823583585623562437538957677456437589375894736583654736578365783465782346578436578346578634576356436578436543567843657843657834658734656347564356473564735643567436578435636547365784365843657835")
			create sn1.make_from_string ("1")
			create sn2.make_from_string ("1.84395743648584735894737856356473598473589674573452345789736734583847586374357823583585623562437538957677456437589375894736583654736578365783465782346578436578346578634576356436578436543567843657843657834658734656347564356473564735643567436578435636547365784365843657835")
			answer := sn1 - sn2
			Result := equal(answer.precise_out, "-0.84395743648584735894737856356473598473589674573452345789736734583847586374357823583585623562437538957677456437589375894736583654736578365783465782346578436578346578634576356436578436543567843657843657834658734656347564356473564735643567436578435636547365784365843657835")
			check Result end
			Result := equal(answer.out, "-0.84")
		end

	test227: BOOLEAN
			-- test subtraction
		local
			sn1: VALUE
			sn2: VALUE
			answer: VALUE
		do
			comment ("test subtraction: 1 - .1 = 0.9")
			create sn1.make_from_string ("1")
			create sn2.make_from_string (".1")
			answer := sn1 - sn2
			Result := equal(answer.precise_out, "0.9")
			check Result end
			Result := equal(answer.out, "0.90")
		end

	test8: BOOLEAN
			-- test operator <
		local
			sn1: VALUE
			sn2: VALUE
		do
			comment ("test8: test operator <: 1.2 < 2.3 = true")
			create sn1.make_from_string ("1.2")
			create sn2.make_from_string ("2.3")
			Result := sn1 < sn2
			check Result = true end
		end

	test300: BOOLEAN
			-- test operator <
		local
			sn1: VALUE
			sn2: VALUE
		do
			comment ("test8: test operator <: 1.2 < 2.3 = true")
			create sn1.make_from_string ("1.2")
			create sn2.make_from_string ("2.3")
			Result := sn1 < sn2
		end

	test301: BOOLEAN
			-- test operator <
		local
			sn1: VALUE
			sn2: VALUE
		do
			comment ("test8: test operator <: -5.00000 < -4.0000 = true")
			create sn1.make_from_string ("-5.00000")
			create sn2.make_from_string ("-4.0000")
			Result := sn1 < sn2
		end

	test302: BOOLEAN
			-- test operator <
		local
			sn1: VALUE
			sn2: VALUE
		do
			comment ("test operator <: -0005.00000 < 0 = true")
			create sn1.make_from_string ("-0005.00000")
			create sn2.make_from_string ("0")
			Result := sn1 < sn2
		end

	test303: BOOLEAN
			-- test operator <
		local
			sn1: VALUE
			sn2: VALUE
		do
			comment ("test operator <: -0.055555 < 5 = true")
			create sn1.make_from_string ("-0.055555")
			create sn2.make_from_string ("5")
			Result := sn1 < sn2
		end

	test304: BOOLEAN
			-- test operator <
		local
			sn1: VALUE
			sn2: VALUE
		do
			comment ("test operator <: -0 < 0 = false")
			create sn1.make_from_string ("-0")
			create sn2.make_from_string ("0")
			Result := not (sn1 < sn2)
		end

	test305: BOOLEAN
			-- test operator <
		local
			sn1: VALUE
			sn2: VALUE
		do
			comment ("test operator <: 0 < 0 = false")
			create sn1.make_from_string ("0")
			create sn2.make_from_string ("0")
			Result := not (sn1 < sn2)
		end

	test306: BOOLEAN
			-- test operator <
		local
			sn1: VALUE
			sn2: VALUE
		do
			comment ("test operator <: 0.99999999999999999999999999999999999999999999999999999999999999999 < 1 = true")
			create sn1.make_from_string ("0.99999999999999999999999999999999999999999999999999999999999999999")
			create sn2.make_from_string ("1")
			Result := sn1 < sn2
		end

	test307: BOOLEAN
			-- test operator <
		local
			sn1: VALUE
			sn2: VALUE
		do
			comment ("test operator <: 1 < 0.99999999999999999999999999999999999999999999999999999999999999999 = false")
			create sn1.make_from_string ("1")
			create sn2.make_from_string ("0.99999999999999999999999999999999999999999999999999999999999999999")
			Result := not (sn1 < sn2)
		end

	test308: BOOLEAN
			-- test operator <
		local
			sn1: VALUE
			sn2: VALUE
		do
			comment ("test operator <: 0.999998 < 0.999999 = true")
			create sn1.make_from_string ("0.999998")
			create sn2.make_from_string ("0.999999")
			Result := sn1 < sn2
		end

	test309: BOOLEAN
			-- test operator <
		local
			sn1: VALUE
			sn2: VALUE
		do
			comment ("test operator <: 1.00000000000 < 00000000000.2 = false")
			create sn1.make_from_string ("1.00000000000")
			create sn2.make_from_string ("00000000000.2")
			Result := not (sn1 < sn2)
		end

	test310: BOOLEAN
			-- test operator <
		local
			sn1: VALUE
			sn2: VALUE
		do
			-- the following two real numbers differ at the very last digit
			comment ("test operator <: 42365473386374785637856437889849023849027453758346578365348929048012845738945364742378563489573495682359753657451565678345748643675895347861587618958736578134895637857348957348534895789345.5348738578498239758753753487457896346573465734897817587658349723897418567134865783464782357465234728947892561462389472356473561742389482653465123489234537561478239848915613476237842837418951347867234238561347623894792561488956346589478914791728957145612894792578947891247238947239472347238471479237849729347 < 42365473386374785637856437889849023849027453758346578365348929048012845738945364742378563489573495682359753657451565678345748643675895347861587618958736578134895637857348957348534895789345.5348738578498239758753753487457896346573465734897817587658349723897418567134865783464782357465234728947892561462389472356473561742389482653465123489234537561478239848915613476237842837418951347867234238561347623894792561488956346589478914791728957145612894792578947891247238947239472347238471479237849729348 = true")
			create sn1.make_from_string ("42365473386374785637856437889849023849027453758346578365348929048012845738945364742378563489573495682359753657451565678345748643675895347861587618958736578134895637857348957348534895789345.5348738578498239758753753487457896346573465734897817587658349723897418567134865783464782357465234728947892561462389472356473561742389482653465123489234537561478239848915613476237842837418951347867234238561347623894792561488956346589478914791728957145612894792578947891247238947239472347238471479237849729347")
			create sn2.make_from_string ("42365473386374785637856437889849023849027453758346578365348929048012845738945364742378563489573495682359753657451565678345748643675895347861587618958736578134895637857348957348534895789345.5348738578498239758753753487457896346573465734897817587658349723897418567134865783464782357465234728947892561462389472356473561742389482653465123489234537561478239848915613476237842837418951347867234238561347623894792561488956346589478914791728957145612894792578947891247238947239472347238471479237849729348")
			Result := sn1 < sn2
		end

	test9: BOOLEAN
		-- test operator == (yes, `==', not `='; this is NOT a typo)
		local
			sn1: VALUE
			sn2: VALUE
		do
			comment ("test operator ==: 10.000000 == 10 = true")
			create sn1.make_from_string ("10.000000")
			create sn2.make_from_string ("10")
			Result := sn1.is_equal (sn2)
		end

	test400: BOOLEAN
		-- test operator == (yes, `==', not `='; this is NOT a typo)
		local
			sn1: VALUE
			sn2: VALUE
		do
			comment ("test operator ==: 10.000 == 010.00000000000 = true")
			create sn1.make_from_string ("10.000")
			create sn2.make_from_string ("010.00000000000")
			Result := sn1.is_equal (sn2)
		end

	test401: BOOLEAN
		-- test operator == (yes, `==', not `='; this is NOT a typo)
		local
			sn1: VALUE
			sn2: VALUE
		do
			comment ("test operator ==: 10.000 == -10.0 = false")
			create sn1.make_from_string ("10.000")
			create sn2.make_from_string ("-10.0")
			Result := not sn1.is_equal (sn2)
		end

	test402: BOOLEAN
		-- test operator == (yes, `==', not `='; this is NOT a typo)
		local
			sn1: VALUE
			sn2: VALUE
		do
			comment ("test operator ==: 347862462746.4237489238472893478924 == 000000347862462746.423748923847289347892400000000000000000 = true")
			create sn1.make_from_string ("347862462746.4237489238472893478924")
			create sn2.make_from_string ("000000347862462746.423748923847289347892400000000000000000")
			Result := sn1.is_equal (sn2)
		end

	test403: BOOLEAN
		-- test operator == (yes, `==', not `='; this is NOT a typo)
		local
			sn1: VALUE
			sn2: VALUE
		do
			comment ("test operator ==: -0 == 0 = true")
			create sn1.make_from_string ("-0")
			create sn2.make_from_string ("0")
			Result := sn1.is_equal (sn2)
		end

	test404: BOOLEAN
		-- test operator == (yes, `==', not `='; this is NOT a typo)
		local
			sn1: VALUE
			sn2: VALUE
		do
			-- the following two real numbers differ at the very last digit
			comment ("test operator <: 42365473386374785637856437889849023849027453758346578365348929048012845738945364742378563489573495682359753657451565678345748643675895347861587618958736578134895637857348957348534895789345.5348738578498239758753753487457896346573465734897817587658349723897418567134865783464782357465234728947892561462389472356473561742389482653465123489234537561478239848915613476237842837418951347867234238561347623894792561488956346589478914791728957145612894792578947891247238947239472347238471479237849729347 < 42365473386374785637856437889849023849027453758346578365348929048012845738945364742378563489573495682359753657451565678345748643675895347861587618958736578134895637857348957348534895789345.5348738578498239758753753487457896346573465734897817587658349723897418567134865783464782357465234728947892561462389472356473561742389482653465123489234537561478239848915613476237842837418951347867234238561347623894792561488956346589478914791728957145612894792578947891247238947239472347238471479237849729348 = true")
			create sn1.make_from_string ("42365473386374785637856437889849023849027453758346578365348929048012845738945364742378563489573495682359753657451565678345748643675895347861587618958736578134895637857348957348534895789345.5348738578498239758753753487457896346573465734897817587658349723897418567134865783464782357465234728947892561462389472356473561742389482653465123489234537561478239848915613476237842837418951347867234238561347623894792561488956346589478914791728957145612894792578947891247238947239472347238471479237849729347")
			create sn2.make_from_string ("42365473386374785637856437889849023849027453758346578365348929048012845738945364742378563489573495682359753657451565678345748643675895347861587618958736578134895637857348957348534895789345.5348738578498239758753753487457896346573465734897817587658349723897418567134865783464782357465234728947892561462389472356473561742389482653465123489234537561478239848915613476237842837418951347867234238561347623894792561488956346589478914791728957145612894792578947891247238947239472347238471479237849729348")
			Result := not sn1.is_equal (sn2)
		end

	test405: BOOLEAN
		-- test operator == (yes, `==', not `='; this is NOT a typo)
		local
			sn1: VALUE
			sn2: VALUE
		do
			-- the following two real numbers are identical
			comment ("test operator <: 42365473386374785637856437889849023849027453758346578365348929048012845738945364742378563489573495682359753657451565678345748643675895347861587618958736578134895637857348957348534895789345.5348738578498239758753753487457896346573465734897817587658349723897418567134865783464782357465234728947892561462389472356473561742389482653465123489234537561478239848915613476237842837418951347867234238561347623894792561488956346589478914791728957145612894792578947891247238947239472347238471479237849729347 < 42365473386374785637856437889849023849027453758346578365348929048012845738945364742378563489573495682359753657451565678345748643675895347861587618958736578134895637857348957348534895789345.5348738578498239758753753487457896346573465734897817587658349723897418567134865783464782357465234728947892561462389472356473561742389482653465123489234537561478239848915613476237842837418951347867234238561347623894792561488956346589478914791728957145612894792578947891247238947239472347238471479237849729347 = true")
			create sn1.make_from_string ("42365473386374785637856437889849023849027453758346578365348929048012845738945364742378563489573495682359753657451565678345748643675895347861587618958736578134895637857348957348534895789345.5348738578498239758753753487457896346573465734897817587658349723897418567134865783464782357465234728947892561462389472356473561742389482653465123489234537561478239848915613476237842837418951347867234238561347623894792561488956346589478914791728957145612894792578947891247238947239472347238471479237849729347")
			create sn2.make_from_string ("42365473386374785637856437889849023849027453758346578365348929048012845738945364742378563489573495682359753657451565678345748643675895347861587618958736578134895637857348957348534895789345.5348738578498239758753753487457896346573465734897817587658349723897418567134865783464782357465234728947892561462389472356473561742389482653465123489234537561478239848915613476237842837418951347867234238561347623894792561488956346589478914791728957145612894792578947891247238947239472347238471479237849729347")
			Result := sn1.is_equal (sn2)
		end

	test10
		local
			sn1,sn2,answer: VALUE
		do
			comment ("violation test division: 1 / 0.0 = exception")
			create sn1.make_from_string ("1")
			create sn2.make_from_string ("0.0")
			answer := sn1 / sn2
			-- should generate an exception
		end
			--

			-- test case disabled to allow the test harness to finish; if this test case is enabled, a pre-condition failure will occur
			--comment ("test division: 1 / 0.0 = exception")
			--create sn1.make_from_string ("1")
			--create sn2.make_from_string ("0.0")
			--answer := sn1 / sn2
			--Result := equal(answer.precise_out, "") -- the "correct" result we put here should not matter, as we are not supposed to get here
			--check Result end
			--Result := equal(answer.out, "") -- same comment as above
			--check Result end

			-- test case disabled to allow the test harness to finish; if this test case is enabled, a pre-condition failure will occur
			--comment ("test division: 1.1 / -000.00000 = exception")
			--create sn1.make_from_string ("1.1")
			--create sn2.make_from_string ("-000.00000")
			--answer := sn1 / sn2
			--Result := equal(answer.precise_out, "") -- same comment as above
			--check Result end
			--Result := equal(answer.out, "") -- same comment as above
			--check Result end

			-- test case disabled to allow the test harness to finish; if this test case is enabled, a pre-condition failure will occur
			--comment ("test division: 0.0 / -000.00000 = exception")
			--create sn1.make_from_string ("0.0")
			--create sn2.make_from_string ("-000.00000")
			--answer := sn1 / sn2
			--Result := equal(answer.precise_out, "") -- same comment as above
			--check Result end
			--Result := equal(answer.out, "") -- same comment as above
			--check Result en

	test11: BOOLEAN
		local
			zero, v0, one: VALUE
		do
			comment("t1: check `make_from_int(0)`")
			create v0.make_from_int (0)
			create zero.make_from_string ("0")
			Result := equal(v0, zero)
			check Result end
			create one.make_from_string ("1")
			Result := equal (v0 + one, one)
		end

	test12: BOOLEAN
		local
			v1, v2, v3: VALUE
		do
			comment("t1: check `make_from_int(n)` for n < 0")

			create v1.make_from_int (-3)
			check v1 < v1.zero end

			create v2.make_from_string ("-3")
			check equal(v1, v2) end

			create v3.make_from_int (3)
			result := equal(v1 + v3, v1.zero)
		end

	test13: BOOLEAN
		local
			v1, v2, v3, v4: VALUE
		do
			comment("t13: test conversion to DOUBLE")
			create v1.make_from_string ("23.4")
			create v2.make_from_string ("-10.0")
			v3 := v1 + v2
			create v4.make_from_string ("13.4")
			Result := v1 + v2 ~ v4
			check Result end
--			Result := v1 > 23.4 -- note that this may fail due to roun up errors
			Result := v1 > 23.2 and v1 > v2 and v2 < -9.4
			check Result end
			v1 := "23.4"
			Result := v1 ~ "23.4"
		end
end
