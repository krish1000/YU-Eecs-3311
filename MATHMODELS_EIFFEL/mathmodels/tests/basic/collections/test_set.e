note
	description: "Summary description for {TEST_SET}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_SET
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
			l_set: SET[PERSON]
			p: PERSON
		do
			comment("t1: check that iterable works with sets")
			create p.make ("p1")
			create l_set.make_empty
			l_set.extend (p1)
			l_set.extend (p2)
			l_set.extend (p3)
			l_set.extend (p4)
			Result := across l_set as it some  it.item ~ p end
		end

	t2: BOOLEAN
		local
			l_set1, l_set2: SET[PERSON]

		do
			comment ("t2: compare equality of two sets")
			create l_set1.make_empty
			create l_set2.make_empty
			l_set1.extend (p1)
			l_set1.extend (p2)
			l_set2.extend (p2)
			l_set2.extend (p1)
			Result := l_set1 ~ l_set2
		end

	t3: BOOLEAN
		local
			l_set1, l_set2: SET[PERSON]
		do
			comment ("t3: is_subset_of on empty sets")
			create l_set1.make_empty
			create l_set2.make_empty

			Result :=
				# l_set1 = 0
				and then
				# l_set2 = 0
				and then
				l_set1 |<: l_set2
				and then
				l_set2 |<: l_set1
				and then
				l_set1 ~ l_set2
			check Result end

			l_set1.extend (p1)
			l_set2 := l_set2.extended (p1)
			Result :=
				# l_set1 = 1
				and then
				# l_set2 = 1
				and then
				l_set1 |<: l_set2
				and then
				l_set2 |<: l_set1
				and then
				l_set1 ~ l_set2
			check Result end

			l_set1.extend (p2)
			l_set2 := l_set2.extended (p2)
			Result :=
				# l_set1 = 2
				and then
				# l_set2 = 2
				and then
				l_set1 |<: l_set2
				and then
				l_set2 |<: l_set1
				and then
				l_set1 ~ l_set2
			check Result end

			l_set1.extend (p3)
			Result :=
				# l_set1 = 3
				and then
				# l_set2 = 2
				and then
				not (l_set1 |<: l_set2)
				and then
				l_set2 |<: l_set1
				and then
				not (l_set1 ~ l_set2)
			check Result end
		end

	t4: BOOLEAN
		local
			s1, s2: SET[PERSON]
			r, r1, r2, r3, r4, es: SET[PERSON]
		do
			comment ("t4: unioned, intersected, and differenced")

			create s1.make_empty
			create s2.make_empty
			create es.make_empty

			-- case: both s1 and s2 are empty
			Result :=
				s1 |\/| s2 ~ es
				and then
				s1 |/\| s2 ~ es
				and then
				s1 |\   s2 ~ es
				and then
				s2 |\   s1 ~ es
			check Result end

			-- case: s1 is non-empty and s2 is empty
			s1.extend (p1)

			Result :=
				s1 |\/| s2 ~ s1
				and then
				s1 |/\| s2 ~ es
				and then
				s1 |\   s2 ~ s1
				and then
				s2 |\   s1 ~ es
			check Result end

			-- case: s1 and s2 are disjoint
			s2.extend (p2)
			create r.make_empty
			r.extend (p1)
			r.extend (p2)
			Result :=
				s1 |\/| s2 ~ r
				and then
				s1 |/\| s2 ~ es
				and then
				s1 |\   s2 ~ s1
				and then
				s2 |\   s1 ~ s2
			check Result end

			-- case: s1 and s2 are overlapping
			s1.extend (p3)
			s2.extend (p3)
			create r1.make_empty
			r1.extend (p1)
			r1.extend (p2)
			r1.extend (p3)
			create r2.make_empty
			r2.extend (p3)
			r3 := (r1 - p2) - p3
			r4 := (r1 - p1) - p3
			Result :=
				s1 |\/| s2 ~ r1
				and then
				s1 |/\| s2 ~ r2
				and then
				s1 |\   s2 ~ r3
				and then
				s2 |\   s1 ~ r4
			check Result end
		end

	t5: BOOLEAN
		local
			s1, s2: SET[PERSON]
			r, r1, r2, r3, r4, es: SET[PERSON]
		do
			comment ("t5: union, intersect, and difference")

			create s1.make_empty
			create s2.make_empty
			create es.make_empty

			s1.union (s2)
			Result := s1 ~ es
			check Result end

			s1.intersect (s2)
			Result := s1 ~ es
			check Result end

			s1.difference (s2)
			Result := s1 ~ es
			check Result end

			s2.difference (s1)
			Result := s2 ~ es
			check Result end

			-- case: s1 is non-empty and s2 is empty
			s1.extend (p1)

			s1.union (s2)
			Result := s1 ~ create {SET[PERSON]}.make_from_array (<<p1>>)
			check Result end

			s1.intersect (s2)
			Result := s1 ~ create {SET[PERSON]}.make_from_array ({ARRAY [PERSON]} <<>>)
			check Result end

			s1.extend (p1)
			s1.difference (s2)
			Result := s1 ~ create {SET[PERSON]}.make_from_array (<<p1>>)
			check Result end

			-- case: s1 and s2 are disjoint
			s2.extend (p2)
			create r.make_empty
			r.extend (p1)
			r.extend (p2)

			s1.union (s2)
			Result := s1 ~ r
			check Result end

			s1.difference (s2)
			s1.intersect (s2)
			Result := s1 ~ es
			check Result end

			s1.extend (p1)
			s1.difference (s2)
			Result := s1 ~ create {SET[PERSON]}.make_from_array (<<p1>>)
			check Result end

			s2.difference (s1)
			Result := s2 ~ create {SET[PERSON]}.make_from_array (<<p2>>)
			check Result end

			-- case: s1 and s2 are overlapping
			s1.extend (p3)
			s2.extend (p3)
			create r1.make_empty
			r1.extend (p1)
			r1.extend (p2)
			r1.extend (p3)
			create r2.make_empty
			r2.extend (p3)
			r3 := (r1 - p2) - p3
			r4 := (r1 - p1) - p3

			s1.union (s2)
			Result := s1 ~ r1
			check Result end

			s1.subtract (p2)
			s1.intersect (s2)
			Result := s1 ~ r2
			check Result end

			s1.extend (p1)
			s1.difference (s2)
			Result := s1 ~ r3
			check Result end

			s1.extend (p3)
			s2.difference (s1)
			Result := s2 ~ r4
			check Result end
		end

	t6 : BOOLEAN
		local
			s, s_: SET[PERSON]
		do
			comment ("t6: item and remove")
			create s.make_from_array (<<p1, p2, p3>>)
			s.choose_item
			Result := s.item ~ p3
			check Result end

			s.remove_item
			s.choose_item
			create s_.make_from_array (<<p1, p2>>)
			Result :=
				s ~ s_
				and then
				s.item ~ p2
			check Result end

			s.extend (p4)
			s.choose_item
			create s_.make_from_array (<<p4, p1, p2>>)
			Result :=
				s ~ s_
				and then
				s.item ~ p4
			check Result end

			s.subtract (p2)
			s.choose_item
			create s_.make_from_array (<<p4, p1>>)
			Result :=
				s ~ s_
				and then
				s.item ~ p4
			check Result end
		end

	t7: BOOLEAN
		local
			s: SET[PERSON]
			a, b: ARRAY[PERSON]
		do
			comment ("t7: as_array")
			b := <<p1, p2, p3>>
			b.compare_objects
			create s.make_empty
			Result := s.as_array.is_empty
			check Result end

			create s.make_from_array (<<p1, p2, p3>>)
			a := s.as_array
--			Result := s.as_array ~ <<p1, p2, p3>>
			Result := s.as_array ~ b
			check Result end
		end

	t8: BOOLEAN
		local
			s: SET[PERSON]
			a: ARRAY[PERSON]
		do
			comment ("t8: as_array")
			a := <<p1, p2, p3>>
			a.compare_objects
			create s.make_empty
			Result := s.as_array.is_empty
			check Result end

			s := <<p1, p2, p3>>
--			Result := s.as_array ~ <<p1, p2, p3>>
			Result := s.as_array ~ a
			check Result end
		end

	t9: BOOLEAN
		local
			s1, s2: SET[INTEGER]
--			a: ARRAY[INTEGER]
			s3: SET[STRING]
		do
			comment("t9: test make_one")
			create s1.make_one (23)
			Result := s1.count = 1 and s1.has (23)
			check Result end
			create s2.make_from_array (<<23>>)
			assert_equal ("test make_one", s1, s2)
			create s3.make_one ("Amin")
			Result := s3.has("Amin")
		end
end
