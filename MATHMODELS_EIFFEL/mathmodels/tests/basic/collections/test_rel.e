note
	description: "Summary description for {TEST_REL}."
	author: "Jackie Wang"
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_REL
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
			add_boolean_case (agent t2)
			add_boolean_case (agent t3)
			add_boolean_case (agent t4)
			add_boolean_case (agent t5)
			add_boolean_case (agent t6)
			add_boolean_case (agent t7)
			add_boolean_case (agent t8)
			add_boolean_case (agent t9)
		end

	setup
		do
			common_setup
		end

feature -- tests

	t1: BOOLEAN
		local
			r, r1 : REL[PERSON, CAR]
			r_inv : REL[CAR, PERSON]
			img, s: SET[CAR]
		do
			comment ("t1: basic relational operations")
			create r.make_empty
			Result := # r = 0
			check Result end

			r.extend (create {PAIR[PERSON, CAR]}.make_from_tuple ([p1, m1]))
			r.extend (create {PAIR[PERSON, CAR]}.make_from_tuple ([p1, m2]))
			r.union (create {REL[PERSON, CAR]}.make_from_tuple_array (<<[p1, m3], [p1, m4]>>))

			create r1.make_from_tuple_array (<<[p1, m3], [p1, m4], [p1, m1]>>)
			Result := r /~ r1 and then r1 |<: r and then not (r |<: r1)
			check Result end

			r1 := r1.extended (create {PAIR[PERSON, CAR]}.make_from_tuple ([p1, m2]))
			Result := r ~ r1 and then r1 |<: r and then r |<: r1
			check Result end

			create s.make_from_array (<<m2, m1, m3, m4>>)
			img := r1.image (p1)
			Result := img ~ s
			check Result end

			r_inv := r.inverse
			Result :=
				r_inv ~
					create {REL[CAR, PERSON]}.make_from_tuple_array (
						<<[m4, p1], [m2, p1], [m1, p1], [m3, p1]>>)
			check Result end

			Result := r_inv.inverse ~ r
			check Result end
		end

	t2: BOOLEAN
		local
			er, r, r1, r2: REL[PERSON, CAR]
			es, s1, s2, s12, s3, s123: SET[PERSON]
		do
			comment ("t2: domain restriction and subtraction")
			create s1.make_from_array  (<<p1>>)
			create s2.make_from_array  (<<p2>>)
			create s12.make_from_array (<<p1, p2>>)
			create s3.make_from_array (<<p3>>)
			create s123.make_from_array (<<p1, p2, p3>>)

			create r1.make_from_tuple_array (<<[p1, m1], [p1, m4]>>)
			create r2.make_from_tuple_array (<<[p2, m3], [p2, m2]>>)
			r := r1.unioned (r2)

			Result :=
				r |<  s1 ~ r1 and then
				r |<< s1 ~ r2 and then
				( (r |< s1) |\/| (r |<< s1) ) ~ r
			check Result end

			Result :=
				r |<  s2 ~ r2 and then
				r |<< s2 ~ r1 and then
				( (r |< s2) |\/| (r |<< s2) ) ~ r
			check Result end

			create er.make_empty
			Result :=
				r |<  s12 ~ r and then
				r |<< s12 ~ er and then
				( (r |< s12) |\/| (r |<< s12) ) ~ r
			check Result end

			Result :=
				r |<  s3 ~ er and then
				r |<< s3 ~ r and then
				( (r |< s3) |\/| (r |<< s3) ) ~ r
			check Result end

			Result :=
				r |<  s123 ~ r and then
				r |<< s123 ~ er and then
				( (r |< s123) |\/| (r |<< s123) ) ~ r
			check Result end

			create es.make_empty
			Result :=
				r |<  es ~ er and then
				r |<< es ~ r and then
				( (r |< es) |\/| (r |<< es) ) ~ r
			check Result end
		end

	t3: BOOLEAN
		local
			er, r, r1, r2: REL[PERSON, CAR]
			es, s1, s2, s12, s3, s123: SET[CAR]
		do
			comment ("t3: range restriction and subtraction")
			create s1.make_from_array  (<<m1>>)
			create s2.make_from_array  (<<m2>>)
			create s12.make_from_array (<<m1, m2>>)
			create s3.make_from_array (<<m3>>)
			create s123.make_from_array (<<m1, m2, m3>>)

			create r1.make_from_tuple_array (<<[p1, m1], [p4, m1]>>)
			create r2.make_from_tuple_array (<<[p3, m2], [p2, m2]>>)
			r := r1.unioned (r2)

			Result :=
				r |>  s1 ~ r1 and then
				r |>> s1 ~ r2 and then
				( (r |> s1) |\/| (r |>> s1) ) ~ r
			check Result end

			Result :=
				r |>  s2 ~ r2 and then
				r |>> s2 ~ r1 and then
				( (r |> s2) |\/| (r |>> s2) ) ~ r
			check Result end

			create er.make_empty
			Result :=
				r |>  s12 ~ r and then
				r |>> s12 ~ er and then
				( (r |> s12) |\/| (r |>> s12) ) ~ r
			check Result end

			Result :=
				r |>  s3 ~ er and then
				r |>> s3 ~ r and then
				( (r |> s3) |\/| (r |>> s3) ) ~ r
			check Result end

			Result :=
				r |>  s123 ~ r and then
				r |>> s123 ~ er and then
				( (r |> s123) |\/| (r |>> s123) ) ~ r
			check Result end

			create es.make_empty
			Result :=
				r |>  es ~ er and then
				r |>> es ~ r and then
				( (r |> es) |\/| (r |>> es) ) ~ r
			check Result end
		end

	t4: BOOLEAN
		local
			rel, fun, inj: REL[PERSON, CAR]
		do
			comment ("t4: is_function and is_injection")

			create rel.make_from_tuple_array (<<[p1, m1], [p2, m2], [p3, m3], [p1, m4]>>)
			Result := not (rel.is_function OR rel.is_injection)
			check Result end

			create fun.make_from_tuple_array (<<[p1, m1], [p2, m2], [p3, m3], [p4, m1]>>)
			Result := fun.is_function AND not fun.is_injection
			check Result end

			create inj.make_from_tuple_array (<<[p1, m1], [p2, m2], [p3, m3], [p4, m4]>>)
			Result := inj.is_function AND inj.is_injection
			check Result end
		end

	t5: BOOLEAN
		local
			er, r1, r2, r3, r4, r5, r6, r7: REL[PERSON, CAR]
			s: SET[PERSON]
		do
			comment ("t5: relationl override")

			create er.make_empty
			create r1.make_from_tuple_array (<<[p1, m1], [p2, m2], [p3, m3]>>)
			Result :=
				er |<+ r1 ~ r1 AND r1 |<+ er ~ r1 AND er |<+ er ~ er
			check Result end

			create r2.make_from_tuple_array (<<[p1, m2], [p2, m3], [p2, m4]>>)
			create s.make_from_array (<<p1, p2>>)
			-- two ways of expressing overriding using domin restriction/subtraction
			r3 := r1.domain_subtracted (s             ).unioned (r2)
			r4 := r1.domain_restricted (r1.domain |\ s).unioned (r2)
			Result :=
				r1 |<+ r2 ~ r3 AND r1 |<+ r2 ~ r4
			check Result end

			-- case where the overriding set is disjoint
			create r5.make_from_tuple_array (<<[p4, m4], [p4, m1]>>)
			create s.make_from_array (<<p4>>)
			r6 := r1.domain_subtracted (s             ).unioned (r5)
			r7 := r1.domain_restricted (r1.domain |\ s).unioned (r5)
			Result :=
				r1 |<+ r5 ~ r6 AND r1 |<+ r5 ~ r7
			check Result end
		end

	t6: BOOLEAN
		local
			r, r1, r2: REL[PERSON, CAR]
		do
			comment ("t6: relation comprehension")

			create r.make_from_tuple_array (<<[p1, m1], [p2, m2], [p3, m3], [p1, m4], [p4, m4]>>)

			r1 := r.domain_restricted (
				create {SET[PERSON]}.make_from_array (<<p1>>))
			r2 := r.comprehension (agent is_PERSON (?, p1))

			Result := r1 ~ r2
			check Result end
		end

	t7 : BOOLEAN
		local
			r, r_: REL[PERSON, CAR]
		do
			comment ("t7: item and remove")
			create r.make_from_tuple_array (<<[p1, m1], [p2, m2], [p3, m3]>>)
			r.choose_item
			Result := r.item.first ~ p3 and r.item.second ~ m3
			check Result end

			r.remove_item
			r.choose_item
			create r_.make_from_tuple_array (<<[p1, m1], [p2, m2]>>)
			Result :=
				r ~ r_
				and then
				r.item.first ~ p2 and r.item.second ~ m2
			check Result end

			r.extend (create {PAIR[PERSON, CAR]}.make_from_tuple([p4, m4]))
			r.choose_item
			create r_.make_from_tuple_array (<<[p4, m4], [p1, m1], [p2, m2]>>)
			Result :=
				r ~ r_
				and then
				r.item.first ~ p4 AND r.item.second ~ m4
			check Result end

			r.subtract (create {PAIR[PERSON, CAR]}.make_from_tuple([p2, m2]))
			r.choose_item
			create r_.make_from_tuple_array (<<[p4, m4], [p1, m1]>>)
			Result :=
				r ~ r_
				and then
				r.item.first ~ p4 AND r.item.second ~ m4
			check Result end
		end

	t8: BOOLEAN
		local
			r, r1, r2, r3: REL[PERSON, CAR]
			s1, s2, s12, s3, s123: SET[PERSON]
			ap: ARRAY[TUPLE[PERSON, CAR]]
		do
			comment ("t8: relation as tupled array")
			create s1.make_from_array  (<<p1>>)
			create s2.make_from_array  (<<p2>>)
			create s12.make_from_array (<<p1, p2>>)
			create s3.make_from_array (<<p3>>)
			create s123.make_from_array (<<p1, p2, p3>>)

			r1 := <<[p1, m1], [p1, m4]>>
			r2 := <<[p2, m3], [p2, m2]>>
			r := r1.unioned (r2)

			Result :=
				r |<  s1 ~ r1 and then
				r |<< s1 ~ r2 and then
				( (r |< s1) |\/| (r |<< s1) ) ~ r
			check Result end

			create r3.make_from_tuple_array (<<[p1, m1], [p1, m4]>>)
			ap := <<[p1, m1], [p1, m4]>>
			ap.compare_objects
			ap.do_all (agent {TUPLE [PERSON,CAR]}.compare_objects)
			Result := r1.as_array ~ ap
			check Result end



		end

	t9: BOOLEAN
		local
			r: REL[PERSON, CAR]
			sc: SET[CAR]
		do
			comment ("t8: test image as a set")

			r := <<[p1, m1], [p1, m4], [p2, m3]>>
			sc := <<m1, m4>>

			Result := r[p1] ~ sc

			check Result end



		end
end
