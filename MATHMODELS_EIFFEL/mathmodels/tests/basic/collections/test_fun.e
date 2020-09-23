note
	description: "Summary description for {TEST_FUN}."
	author: "Jackie Wang"
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_FUN
inherit
	ES_TEST
		redefine setup end
	COMMON_SETUP
		undefine default_create end
create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		do
			setup

			add_boolean_case (agent t1)
--			add_violation_case_with_tag ("is_a_function", agent t2)
			add_violation_case_with_tag ("no_duplicates", agent t2)
			add_boolean_case (agent t3)
			add_boolean_case (agent t4)
			add_boolean_case (agent t5)
			add_boolean_case (agent t6)
			add_boolean_case (agent t7)
			add_boolean_case (agent t8)
			add_boolean_case (agent t9)
			add_boolean_case (agent t10)
		end

	setup
		do
			common_setup
		end

feature -- tests

	t1: BOOLEAN
		local
			f: FUN[PERSON, CAR]
		do
			comment ("t1: a relation may be a function")
			create f.make_from_array (<<[p1, m1], [p2, m2], [p3, m1]>>)

			Result :=
				# f = 3 and then
				NOT f.is_injection
				and then
				f.domain ~ create {SET[PERSON]}.make_from_array (<<p1, p2, p3>>)
				and then
				f.range ~ create {SET[CAR]}.make_from_array (<<m1, m2>>)
				and then
				f[p1] ~ m1
		end

	t2
		local
			f: FUN[PERSON, CAR]
		do
			comment ("t2: violation; relation may not be a function")
			create f.make_from_array (<<[p1, m1], [p2, m2], [p1, m3]>>)
		end

	t3: BOOLEAN
		local
			f, f1 : FUN[PERSON, CAR]
		do
			comment ("t3: basic relational operations")
			create f.make_empty
			Result := # f = 0
			check Result end

			f.extend (create {PAIR[PERSON, CAR]}.make_from_tuple ([p1, m1]))
			f.extend (create {PAIR[PERSON, CAR]}.make_from_tuple ([p2, m1]))
			f.union (create {FUN[PERSON, CAR]}.make_from_array (<<[p3, m3], [p4, m4]>>))

			create f1.make_from_array (<<[p3, m3], [p4, m4], [p1, m1]>>)
			Result := f /~ f1 and then f1 |<: f and then not (f |<: f1)
			check Result end

			f1 := f1.extended (create {PAIR[PERSON, CAR]}.make_from_tuple ([p2, m1]))
			Result := f ~ f1 and then f1 |<: f and then f |<: f1
			check Result end

			Result :=
						 f [p1] ~ m1
				and then f [p2] ~ m1
				and then f [p3] ~ m3
				and then f [p4] ~ m4
			check Result end
		end

	t4: BOOLEAN
		local
			er, r, r1, r2: FUN[PERSON, CAR]
			es, s14, s23, s1234, s5: SET[PERSON]
--			p5: PERSON
		do
			comment ("t4: domain restriction and subtraction")
			create s14.make_from_array (<<p1, p4>>)
			create s23.make_from_array (<<p2, p3>>)
			create s1234.make_from_array (<<p1, p2, p3, p4>>)
			create s5.make_from_array(<<create {PERSON}.make ("p5")>>)
			create es.make_empty

			create r1.make_from_array (<<[p1, m1], [p4, m4]>>)
			create r2.make_from_array (<<[p3, m3], [p2, m2]>>)
			r := r1.unioned (r2)

			Result :=
				r |<  s14 ~ r1 and then
				r |<< s14 ~ r2 and then
				( (r |< s14) |\/| (r |<< s14) ) ~ r
			check Result end

			Result :=
				r |<  s23 ~ r2 and then
				r |<< s23 ~ r1 and then
				( (r |< s23) |\/| (r |<< s23) ) ~ r
			check Result end

			create er.make_empty
			Result :=
				r |<  s1234 ~ r and then
				r |<< s1234 ~ er and then
				( (r |< s1234) |\/| (r |<< s1234) ) ~ r
			check Result end

			Result :=
				r |<  s5 ~ er and then
				r |<< s5 ~ r and then
				( (r |< s5) |\/| (r |<< s5) ) ~ r
			check Result end

			create es.make_empty
			Result :=
				r |<  es ~ er and then
				r |<< es ~ r and then
				( (r |< es) |\/| (r |<< es) ) ~ r
			check Result end
		end

	t5: BOOLEAN
		local
			er, r, r1, r2: FUN[PERSON, CAR]
			es, s14, s23, s1234, s5: SET[CAR]
--			m5: CAR
		do
			comment ("t5: range restriction and subtraction")
			create s14.make_from_array (<<m1, m4>>)
			create s23.make_from_array (<<m2, m3>>)
			create s1234.make_from_array (<<m1, m2, m3, m4>>)
			create s5.make_from_array(<<create {CAR}.make ("m5")>>)
			create es.make_empty

			create r1.make_from_array (<<[p1, m1], [p4, m4]>>)
			create r2.make_from_array (<<[p3, m3], [p2, m2]>>)
			r := r1.unioned (r2)

			Result :=
				r |>  s14 ~ r1 and then
				r |>> s14 ~ r2 and then
				( (r |> s14) |\/| (r |>> s14) ) ~ r
			check Result end

			Result :=
				r |>  s23 ~ r2 and then
				r |>> s23 ~ r1 and then
				( (r |> s23) |\/| (r |>> s23) ) ~ r
			check Result end

			create er.make_empty
			Result :=
				r |>  s1234 ~ r and then
				r |>> s1234 ~ er and then
				( (r |> s1234) |\/| (r |>> s1234) ) ~ r
			check Result end

			Result :=
				r |>  s5 ~ er and then
				r |>> s5 ~ r and then
				( (r |> s5) |\/| (r |>> s5) ) ~ r
			check Result end

			create es.make_empty
			Result :=
				r |>  es ~ er and then
				r |>> es ~ r and then
				( (r |> es) |\/| (r |>> es) ) ~ r
			check Result end
		end

	t6: BOOLEAN
		local
			fun, inj: FUN[PERSON, CAR]
		do
			comment ("t6: is_function and is_injection")

			create fun.make_from_array (<<[p1, m1], [p2, m2], [p3, m3], [p4, m1]>>)
			Result := fun.is_function AND not fun.is_injection
			check Result end

			create inj.make_from_array (<<[p1, m1], [p2, m2], [p3, m3], [p4, m4]>>)
			Result := inj.is_function AND inj.is_injection
			check Result end
		end

	t7: BOOLEAN
		local
			er, r1, r2, r3, r4: FUN[PERSON, CAR]
			s: SET[PERSON]
		do
			comment ("t7: functional override")

			create er.make_empty
			create r1.make_from_array (<<[p1, m1], [p2, m2], [p3, m3]>>)
			Result :=
				er |<+ r1 ~ r1 AND r1 |<+ er ~ r1 AND er |<+ er ~ er
			check Result end

			create r2.make_from_array (<<[p2, m3], [p3, m4]>>)
			create s.make_from_array (<<p2, p3>>)
			-- two ways of expressing overriding using domin restriction/subtraction
			r3 := r1.domain_subtracted (s             ).unioned (r2)
			r4 := r1.domain_restricted (r1.domain |\ s).unioned (r2)
			Result :=
				r1 |<+ r2 ~ r3 AND r1 |<+ r2 ~ r4
			check Result end
			create r1.make_from_array (<<[p1, m1], [p2, m2], [p3, m3]>>)
			r1[p2] := m4
			Result := r1[p2] ~ m4 and r1[p1] ~ m1 and r1.item(p3) ~ m3
		end

	t8: BOOLEAN
		local
			r, r1, r2: FUN[PERSON, CAR]
		do
			comment ("t8: function comprehension")

			create r.make_from_array (<<[p1, m1], [p2, m2], [p3, m3], [p4, m4]>>)

			r1 := r.domain_restricted (
				create {SET[PERSON]}.make_from_array (<<p1>>))
			r2 := r.comprehension (agent is_PERSON (?, p1))

			Result := r1 ~ r2
			check Result end
		end

	t9: BOOLEAN
		local
			f: FUN[PERSON, CAR]
			b1, b2: BAG[CAR]
		do
			comment("t9: test range as bag")
			create f.make_from_array (<<[p1, m1], [p2, m2], [p3, m1], [p4, m4]>>)
			create b1.make_from_array (<<m1, m2, m1, m4>>)
			b2 := f.range_as_bag
			Result := b1 ~ b2
			check Result end
		end

	t10: BOOLEAN
		local
			f: FUN[STRING, INTEGER]
			f_inverse: FUN[INTEGER, STRING]
		do
			comment("t10: test inverse")
			create f.make_from_array (<<["one", 1], ["two", 2], ["three", 3], ["four", 4]>>)
			create f_inverse.make_from_array (<<[1, "one"],[2, "two"], [3, "three"], [4, "four"]  >>)
			Result := f_inverse ~ f.inverse
			check Result end
			assert_equal ("correct inverse", "{ 1 -> one, 2 -> two, 3 -> three, 4 -> four }", f_inverse.out)
			Result := f.inverse.inverse ~ f
		end
end
