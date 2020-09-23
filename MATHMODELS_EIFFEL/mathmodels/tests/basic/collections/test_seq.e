note
	description: "Summary description for {TEST_SEQ}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_SEQ

inherit
	ES_TEST

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
		do
			add_boolean_case (agent t1)
			add_boolean_case (agent t2)
			add_boolean_case (agent t3)
			add_boolean_case (agent t4)
			add_boolean_case (agent t5)
			add_boolean_case (agent t6)
			add_boolean_case (agent t7)
			add_boolean_case (agent t8)
			add_boolean_case (agent t9)
			add_boolean_case (agent t10)
			add_boolean_case (agent t11)
			add_boolean_case (agent t12)
			add_boolean_case (agent t13)
			add_boolean_case (agent t14)
			add_boolean_case (agent t15)
		end

feature --tests

	t1: BOOLEAN
		local
			s1, s1_, s2, s2_, s3, sz, s4: SEQ[STRING]
		do
			comment("t1: test empty sequence, append, prepend and contiguous subsequence")
			create s1.make_empty
			Result := s1.count = 0 and s1.is_empty
			check Result end

			create s1.make_from_array (<<"a", "b", "c", "d", "e">>)
			create s2.make_from_array (<<"b", "c", "d">>)
			create s3.make_from_array (<<"a", "b", "d", "e">>)
			create sz.make_from_array (<<"z", "b", "d", "e">>)
			create s4.make_from_array (<< "b", "c", "d">>)
			Result := s1 /~ s2
			check Result end


			s2_ := s2.appended ("e").prepended ("a")
			s2.append ("e")
			s2.prepend ("a")
			Result := s2 ~ s2_ and s1 ~ s2
			check Result end

			s2_ := s2.removed (3)
			s2.remove (3)
			Result := s2 ~ s2_ and s2 ~ s3 and s2[3] ~ "d"
			check Result end

			s2_ := s2.overriden ("z", 1)
			s2[1] := "z"
			Result := s2 ~ s2_ and s2 ~ sz
			check Result end

			s1_ := s1.subsequenced (2, 4)
			s1.subsequence (2, 4)
			Result := s1 ~ s1_ and s4 ~ s1
			check Result end
		end

	t2: BOOLEAN
		local
			s: SEQ[INTEGER]
			ia: ITERABLE_ARITHMETIC[INTEGER]
		do
			comment("t2: test iterable arithmetic")
			create s.make_from_array (<<3, 4, 5>>)
			Result := ia.sum (s) = 12
			check Result end
			Result := ia.product (s) = 60
		end

	t3: BOOLEAN
		local
			s1, s2: SEQ[INTEGER]
		do
			comment ("t3: is_contiguous_subseq_of and is_subsequence_of")
			create s1.make_empty
			create s2.make_empty

			Result :=
				s1 |<: s2
				and
				s2 |<: s1
				and
				s1.is_contiguous_subseq_of (s2)
				and
				s2.is_contiguous_subseq_of (s1)
			check Result end

			create s1.make_from_array (<<1, 2, 3, 4>>)
			create s2.make_from_array ({ARRAY[INTEGER]}<<>>)

			Result :=
				s2.is_contiguous_subseq_of (s1)
				and
				s2 |<: s1
				and
				NOT s1.is_contiguous_subseq_of (s2)
				and
				NOT (s1 |<: s2)
			check Result end

			create s1.make_from_array (<<1, 2, 3, 4>>)
			create s2.make_from_array (<<2, 3>>)

			Result :=
				s2.is_contiguous_subseq_of (s1)
				and
				s2 |<: s1
				and
				NOT s1.is_contiguous_subseq_of (s2)
				and
				NOT (s1 |<: s2)
			check Result end

			create s1.make_from_array (<<1, 2, 3, 4>>)
			create s2.make_from_array (<<2, 3, 5>>)
			Result :=
				NOT s2.is_contiguous_subseq_of (s1)
				and
				NOT (s2 |<: s1)
				and
				NOT s1.is_contiguous_subseq_of (s2)
				and
				NOT (s1 |<: s2)
			check Result end

			create s1.make_from_array (<<1, 2, 3, 4, 5>>)
			create s2.make_from_array (<<1, 4, 5>>)
			Result :=
				NOT s2.is_contiguous_subseq_of (s1)
				and
				s2 |<: s1
				and
				NOT s1.is_contiguous_subseq_of (s2)
				and
				NOT (s1 |<: s2)
			check Result end

			create s1.make_from_array (<<1, 2, 3, 4, 5>>)
			create s2.make_from_array (<<1, 4, 4, 5>>)
			Result :=
				NOT s2.is_contiguous_subseq_of (s1)
				and
				NOT (s2 |<: s1)
				and
				NOT s1.is_contiguous_subseq_of (s2)
				and
				NOT (s1 |<: s2)
			check Result end

			create s1.make_from_array (<<1, 2, 2, 3, 4, 4, 4, 5, 6>>)
			create s2.make_from_array (<<1, 2, 4, 4, 5>>)
			Result :=
				NOT s2.is_contiguous_subseq_of (s1)
				and
				s2 |<: s1
				and
				NOT s1.is_contiguous_subseq_of (s2)
				and
				NOT (s1 |<: s2)
			check Result end
		end

	t4: BOOLEAN
		local
			s: SEQ[INTEGER]
		do
			comment ("t4: head, init, tail, last")

			create s.make_empty
			s.append (1)

			Result :=
				s.first = 1 and
				s.front.is_empty and
				s.tail.is_empty and
				s.last = 1
			check Result end

			s.append (2)
			s.append (3)

			Result :=
				s.first = 1 and
				s.front [1] = 1 and
				s.front [2] = 2 and
				s.tail [1] = 2 and
				s.tail [2] = 3 and
				s.last = 3
			check Result end
		end

	t5: BOOLEAN
		local
			s1, s2: SEQ[INTEGER]
		do
			comment ("t5: insert(i) and inserted(i)")
			create s1.make_empty
			s1.append (3)

			s2 := s1.inserted (1, 1)
			s1.insert (1, 1)
			Result :=
				s1[1] = 1 and
				s1[2] = 3 and
				s1 ~ s2
			check Result end

			s2 := s1.inserted (2, 2)
			s1.insert (2, 2)
			Result :=
				s1[1] = 1 and
				s1[2] = 2 and
				s1[3] = 3 and
				s1 ~ s2
			check Result end

			s2 := s1.inserted (4, 3)
			s1.insert (4, 3)
			Result :=
				s1[1] = 1 and
				s1[2] = 2 and
				s1[3] = 4 and
				s1[4] = 3 and
				s1 ~ s2
			check Result end
		end

	t6: BOOLEAN
		local
			s1, s2: SEQ[INTEGER]
		do
			comment ("t6: remove(i) and removed(i)")
			create s1.make_empty
			s1.append (3)

			s2 := s1.removed (1)
			s1.remove (1)
			Result :=
				s1.is_empty and
				s1 ~ s2
			check Result end

			s1.append (1)
			s1.append (2)
			s1.append (3)

			s2 := s1.removed (1)
			s1.remove (1)
			Result :=
				s1[1] = 2 and
				s1[2] = 3 and
				s1 ~ s2
			check Result end

			s1.insert (1, 1)

			s2 := s1.removed (2)
			s1.remove (2)
			Result :=
				s1[1] = 1 and
				s1[2] = 3 and
				s1 ~ s2
			check Result end

			s1.insert (2, 2)

			s2 := s1.removed (3)
			s1.remove (3)
			Result :=
				s1[1] = 1 and
				s1[2] = 2 and
				s1 ~ s2
			check Result end
		end

	t7: BOOLEAN
		local
			s1, s2: SEQ[INTEGER]
		do
			comment ("t6: override and overriden")
			create s1.make_empty
			s1.append (3)

			s2 := s1.overriden (1, 1)
			s1.override (1, 1)
			Result :=
				s1[1] = 1 and
				s1 ~ s2
			check Result end

			s1.append (2)
			s1.append (3)

			s2 := s1.overriden (2, 2)
			s1.override (2, 2)
			Result :=
				s1[1] = 1 and
				s1[2] = 2 and
				s1[3] = 3 and
				s1 ~ s2
			check Result end

			s2 := s1.overriden (4, 3)
			s1.override (4, 3)
			Result :=
				s1[1] = 1 and
				s1[2] = 2 and
				s1[3] = 4 and
				s1 ~ s2
			check Result end
		end

	t8: BOOLEAN
		local
			es, s1, s2, s3, s4: SEQ[INTEGER]
		do
			comment ("t8: sequence hold_count and comprehension")

			create es.make_empty

			Result :=
				es.hold_count (agent is_sorted (?, es)) = es.count and
				es.comprehension (agent is_positive).is_empty
			check Result end

			create s1.make_from_array (<<-1, 0, 1, 2, 3, 4, 5>>)
			create s2.make_from_array (<<1, 5, 3, 6, 4>>)
			create s3.make_from_array (<<1, 2, 3, 4, 5>>)

			Result :=
				s1.hold_count (agent is_sorted (?, s1)) = s1.count
				and
				s1.comprehension (agent is_positive (?)) ~ s1.tail.removed (1)
				and
				s2.hold_count (agent is_sorted (?, s2)) = 3
				and
				s2.comprehension (agent is_positive (?)) ~ s2
			check Result end

			Result := (s1 |  (agent is_positive (?))) ~ s3
			check Result end


			s4 := (s1 | (agent (p: PAIR[INTEGER, INTEGER]): BOOLEAN
								do Result := p.second > 0 end)
				  )
			Result := s4 ~ s3
		end

	t9: BOOLEAN
		local
			s1, s1_, s2, s2_: SEQ[INTEGER]
		do
			comment ("t9: concatenate and concatenated")

			create s1.make_empty
			create s2.make_empty

			s1_ := s1.concatenated (s2)
			s1.concatenate (s2)
			Result :=
				s1 ~ s1_ and s1 ~ s2
			check Result end

			s1.append (1)
			s1_ := s1.concatenated (s2) -- non-empty seq concatenates empty seq
			s2_ := s2.concatenated (s1) -- empty seq concatenates non-empty seq
			s1.concatenate (s2)

			Result :=
				s1_ ~ s2_ and s1_ ~ s1
			check Result end

			create s1.make_from_array (<<1, 2>>)
			create s2.make_from_array (<<3, 4>>)
			s1_ := s1.concatenated (s2)
			s1.concatenate (s2)
			Result :=
				s1 ~ s1_ and s2 |<: s1
			check Result end
		end

	t10: BOOLEAN
		local
			s: SEQ[INTEGER]
			a: ARRAY[INTEGER]
		do
			comment ("t10: as_array and as_function")
			a := <<4, 3, 2, 1>>
			a.compare_objects
			create s.make_empty
			Result :=
				s.as_array.is_empty and
				s.as_function.is_empty
			check Result end

			create s.make_from_array (<<4, 3, 2, 1>>)
			Result :=
--				s.as_array ~ <<4, 3, 2, 1>> and
				s.as_array ~ a and
				s.as_function ~
					create {FUN[INTEGER, INTEGER]}.make_from_array (<<[1, 4], [2, 3], [3, 2], [4, 1]>>)
			check Result end
		end

	t11: BOOLEAN
		local
			s, s1: SEQ[INTEGER]
		do
			comment ("t11: more tests on is_subseq_of (Gries p257)")

			create s.make_from_array (<<2, 3, 8, 5, 2>>)

			-- case 1: empty subsequence
			create s1.make_from_array ({ARRAY[INTEGER]}<<>>)
			Result :=
				s1 |<: s and not (s |<: s1) and
				s1.is_contiguous_subseq_of (s) and not s.is_contiguous_subseq_of (s1)
			check Result end

			-- case 2.1: singleton subsequence - beginning
			create s1.make_from_array (<<2>>)
			Result :=
				s1 |<: s and not (s |<: s1) and
				s1.is_contiguous_subseq_of (s) and not s.is_contiguous_subseq_of (s1)
			check Result end

			-- case 2.2: singleton subsequence - middle
			create s1.make_from_array (<<3>>)
			Result :=
				s1 |<: s and not (s |<: s1) and
				s1.is_contiguous_subseq_of (s) and not s.is_contiguous_subseq_of (s1)
			check Result end

			-- case 2.3: singleton subsequence - end
			create s1.make_from_array (<<5>>)
			Result :=
				s1 |<: s and not (s |<: s1) and
				s1.is_contiguous_subseq_of (s) and not s.is_contiguous_subseq_of (s1)
			check Result end

			-- case 3: singleton non-subsequence
			create s1.make_from_array (<<7>>)
			Result :=
				not (s1 |<: s) and not (s |<: s1) and
				not s1.is_contiguous_subseq_of (s) and not s.is_contiguous_subseq_of (s1)
			check Result end

			-- case 4.1: contiguous subsequence of size 2 - beginning
			create s1.make_from_array (<<2, 3>>)
			Result :=
				s1 |<: s and not (s |<: s1) and
				s1.is_contiguous_subseq_of (s) and not s.is_contiguous_subseq_of (s1)
			check Result end

			-- case 4.2: contiguous subsequence of size 2 - middle
			create s1.make_from_array (<<8, 5>>)
			Result :=
				s1 |<: s and not (s |<: s1) and
				s1.is_contiguous_subseq_of (s) and not s.is_contiguous_subseq_of (s1)
			check Result end

			-- case 4.3: contiguous subsequence of size 2 - end
			create s1.make_from_array (<<5, 2>>)
			Result :=
				s1 |<: s and not (s |<: s1) and
				s1.is_contiguous_subseq_of (s) and not s.is_contiguous_subseq_of (s1)
			check Result end

			-- case 5.1: non-contiguous subsequence of size 2 - beginning
			create s1.make_from_array (<<2, 8>>)
			Result :=
				s1 |<: s and not (s |<: s1) and
				not s1.is_contiguous_subseq_of (s) and not s.is_contiguous_subseq_of (s1)
			check Result end

			-- case 5.2: non-contiguous subsequence of size 2 - middle
			create s1.make_from_array (<<3, 5>>)
			Result :=
				s1 |<: s and not (s |<: s1) and
				not s1.is_contiguous_subseq_of (s) and not s.is_contiguous_subseq_of (s1)
			check Result end

			-- case 5.3: non-contiguous subsequence of size 2 - end
			create s1.make_from_array (<<8, 2>>)
			Result :=
				s1 |<: s and not (s |<: s1) and
				not s1.is_contiguous_subseq_of (s) and not s.is_contiguous_subseq_of (s1)
			check Result end

			-- case 6: non-subsequence of size 2
			create s1.make_from_array (<<7, 9>>)
			Result :=
				not (s1 |<: s) and not (s |<: s1) and
				not s1.is_contiguous_subseq_of (s) and not s.is_contiguous_subseq_of (s1)
			check Result end

			-- case 7.1: contiguous subsequence of size 3 - beginning
			create s1.make_from_array (<<2, 3, 8>>)
			Result :=
				s1 |<: s and not (s |<: s1) and
				s1.is_contiguous_subseq_of (s) and not s.is_contiguous_subseq_of (s1)
			check Result end

			-- case 7.2: contiguous subsequence of size 3 - middle
			create s1.make_from_array (<<3, 8, 5>>)
			Result :=
				s1 |<: s and not (s |<: s1) and
				s1.is_contiguous_subseq_of (s) and not s.is_contiguous_subseq_of (s1)
			check Result end

			-- case 7.3: contiguous subsequence of size 3 - end
			create s1.make_from_array (<<8, 5, 2>>)
			Result :=
				s1 |<: s and not (s |<: s1) and
				s1.is_contiguous_subseq_of (s) and not s.is_contiguous_subseq_of (s1)
			check Result end

			-- case 8.1: non-contiguous subsequence of size 3 - beginning
			create s1.make_from_array (<<2, 8, 5>>)
			Result :=
				s1 |<: s and not (s |<: s1) and
				not s1.is_contiguous_subseq_of (s) and not s.is_contiguous_subseq_of (s1)
			check Result end

			-- case 8.2: non-contiguous subsequence of size 3 - middle
			create s1.make_from_array (<<3, 8, 2>>)
			Result :=
				s1 |<: s and not (s |<: s1) and
				not s1.is_contiguous_subseq_of (s) and not s.is_contiguous_subseq_of (s1)
			check Result end

			-- case 8.3: non-contiguous subsequence of size 3 - end
			create s1.make_from_array (<<3, 5, 2>>)
			Result :=
				s1 |<: s and not (s |<: s1) and
				not s1.is_contiguous_subseq_of (s) and not s.is_contiguous_subseq_of (s1)
			check Result end

			-- case 9: non-subsequence of size 2
			create s1.make_from_array (<<7, 9, 1>>)
			Result :=
				not (s1 |<: s) and not (s |<: s1) and
				not s1.is_contiguous_subseq_of (s) and not s.is_contiguous_subseq_of (s1)
			check Result end

			-- case 10: subsequence of size 5
			create s1.make_from_array (<<2, 3, 8, 5, 2>>)
			Result :=
				(s1 |<: s) and (s |<: s1) and
				s1.is_contiguous_subseq_of (s) and s.is_contiguous_subseq_of (s1)
			check Result end

			-- case 11.1: non-subsequence of size 6
			create s1.make_from_array (<<2, 3, 3, 8, 5, 2>>)
			Result :=
				not (s1 |<: s) and (s |<: s1) and
				not s1.is_contiguous_subseq_of (s) and not s.is_contiguous_subseq_of (s1)
			check Result end

			-- case 11.2: non-subsequence of size 6
			create s1.make_from_array (<<2, 3, 8, 5, 2, 9>>)
			Result :=
				not (s1 |<: s) and (s |<: s1) and
				not s1.is_contiguous_subseq_of (s) and s.is_contiguous_subseq_of (s1)
			check Result end
		end

	t12: BOOLEAN
		local
			s1, s2, s1_, s2_: SEQ[INTEGER]
		do
			comment ("t12: reverse of sequences")

			create s1.make_empty
			create s2.make_empty
			Result := s1 ~ s2.reversed and s2 ~ s1.reversed
			check Result end

			create s1.make_from_array (<<1, 2, 3, 4>>)
			create s1_.make_from_array (<<1, 2, 3, 4>>)
			s1_.reverse

			create s2.make_from_array (<<4, 3, 2, 1>>)
			create s2_.make_from_array (<<4, 3, 2, 1>>)
			s2_.reverse

			Result :=
				s1 ~ s2.reversed and
				s1 ~ s2_ and
				s2 ~ s1.reversed and
				s2 ~ s1_
			check Result end

			create s1.make_from_array (<<1, 2, 3, 4>>)
			create s1_.make_from_array (<<1, 2, 3, 4>>)
			s1_.reverse
			create s2.make_from_array (<<5, 4, 3, 2, 1>>)
			create s2_.make_from_array (<<5, 4, 3, 2, 1>>)
			s2_.reverse

			Result := not (
				s1 ~ s2.reversed or
				s1 ~ s2_ or
				s2 ~ s1.reversed or
				s2 ~ s1_
				)
			check Result end
		end

	t13: BOOLEAN
		local
			s1, s2, s3: SEQ[CHARACTER]
		do
			comment("t13: test reversed")
			create s1.make_from_array (<<'a', 'b', 'c'>>)
			create s2.make_from_array (<<'c', 'b', 'a'>>)
			s3 := s1.reversed
			Result := s3 ~ s2
			check Result end
			Result := s1.reversed.reversed ~ s1

		end

	t14: BOOLEAN
		local
			s1, s2, s3, s4: SEQ[INTEGER]
		do
			comment("t3: test {SEQ}.slice")
			create s1.make_from_array (<<6, 1, 7, 8, 9, 3, 7, 2, 9, 9, 4>>)
			create s2.make_from_array (<<6, 7, 9, 7, 9, 4>>)
			Result := s1.slice (s1.lower, s1.upper,2) ~ s2
			check Result end
			create s3.make_from_array (<<4, 9, 7, 9, 7, 6>>)
			Result := s1.reversed.slice (s1.lower, s1.upper, 2) ~ s3
			check Result end
			create s4.make_from_array (<<1, 8, 3, 2, 9>>)
			Result := s1.slice (s1.lower+1, s1.upper,2) ~ s4
		end

	t15: BOOLEAN
		local
			ia: ITERABLE_ARITHMETIC[INTEGER]
			s: SEQ[INTEGER]
		do
			comment("t15: test divmod")
			create s.make_from_array (<<1,8>>)
			Result := ia.divmod (18, 10) ~ s
		end

	t16: BOOLEAN
		local
			ia: ITERABLE_ARITHMETIC[INTEGER]
			s, empty: SEQ[INTEGER]
			v: INTEGER
		do
			comment("t16: test iterable arithmetic sum and product")
			create s.make_from_array (<<1,8>>)
			Result := ia.divmod (18, 10) ~ s
			check Result end
			create s.make_from_array (<<1,8,7>>)
			v := ia.sumf (s, agent f(?))
			Result := v = 14
			check Result end
			create empty.make_empty
			v := ia.sumf (empty, agent f(?))
			Result := v = 0 and ia.sum(empty) = 0
			check Result end
			v := ia.productf (s, agent f(?))
			Result := v = 70
			check Result end
			v := ia.productf (empty, agent f(?))
			Result := v = 1 and ia.product (empty)=1
			check Result end
		end

	f(i:INTEGER): INTEGER
		local
			ia: ITERABLE_ARITHMETIC[INTEGER]
		do
			Result := ia.sum(ia.divmod(2*i,10))
		end

feature -- Agent functions

	is_sorted (pair: PAIR[INTEGER, INTEGER]; seq: SEQ[INTEGER]): BOOLEAN
		local
			pos, val: INTEGER
		do
			pos := pair.first
			val := pair.second
			if pos < seq.count then
				Result := val <= seq[pos + 1]
			else
				Result := TRUE
			end
		end

	is_positive (pair: PAIR[INTEGER, INTEGER]): BOOLEAN
		local
			pos, val: INTEGER
		do
			pos := pair.first
			val := pair.second
			Result := val > 0
		end
end
