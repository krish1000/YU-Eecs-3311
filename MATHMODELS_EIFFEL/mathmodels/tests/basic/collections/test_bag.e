note
	description: "Summary description for {TEST_BAG}."
	author: "Jackie Wang"
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_BAG
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
		end

	setup
		do
			common_setup
		end

feature -- tests

	t1: BOOLEAN
		local
			b1, b2, b3: BAG[PERSON]
		do
			comment ("t1: empty bags")

			create b1.make_empty
			Result :=
				# b1 = 0 and then
				b1.is_empty and then
				b1.as_array.is_empty and then
				not b1.has (p1) and then
				b1[p1] = 0 and then
				not b1.has (p2) and then
				b1[p2] = 0
			check Result end

			create b2.make_from_array ({ARRAY[PERSON]}<<>>)
			Result :=
				# b2 = 0 and then
				b2.is_empty and then
				b2.as_array.is_empty and then
				not b2.has (p1) and then
				b2[p1] = 0 and then
				not b2.has (p2) and then
				b2[p2] = 0
			check Result end

			create b3.make_from_tuple_array ({ARRAY [TUPLE [PERSON, INTEGER_32]]}<<>>)
			Result :=
				# b3 = 0 and then
				b3.is_empty and then
				b3.as_array.is_empty and then
				not b3.has (p1) and then
				b3[p1] = 0 and then
				not b3.has (p2) and then
				b3[p2] = 0
			check Result end
		end

	t2: BOOLEAN
		local
			b1, b2, b3, b3_, b3__: BAG[PERSON]
		do
			comment ("t2: make bags from arrays, array of tuples, and extend/subtract")
			create b1.make_from_array (<<p1, p2, p3, p1, p2>>)
			Result :=
				# b1 = 5 and then
				b1[p1] = 2 and then
				b1[p2] = 2 and then
				b1[p3] = 1 and then
				b1[p4] = 0
			check Result end

			create b2.make_from_tuple_array (<<[p1, 2], [p2, 1], [p3, 1], [p2, 1]>>)
			Result :=
				# b2 = 5 and then
				b2[p1] = 2 and then
				b2[p2] = 2 and then
				b2[p3] = 1 and then
				not b2.has (p4) and then
				b2[p4] = 0
			check Result end

			create b3.make_empty
			b3.extend (p1, 1)
			b3.extend (p2, 1)
			b3.extend (p3, 1)
			b3.extend (p2, 1)
			b3.extend (p1, 1)
			b3.extend (p4, 1)
			b3.subtract (p4, 1)

			create b3_.make_empty
			b3_ := b3_.extended (p1, 2)
			b3_ := b3_.extended (p2, 2)
			b3_ := b3_.extended (p3, 1)
			b3_ := b3_.extended (p4, 1)
			b3_ := b3_.subtracted (p4, 1)

			create b3__.make_empty
			b3__ := b3__ |\/| create {BAG[PERSON]}.make_from_array (
								<<p1, p2, p3, p1, p2, p4>>)
			b3__ := b3__ |\ create {BAG[PERSON]}.make_from_array (
								<<p4>>)

			Result :=
				# b3 = 5 and
				b3[p1] = 2 and
				b3[p2] = 2 and
				b3[p3] = 1 and
				not b3.has (p4) and
				b3[p4] = 0
			check Result end

			Result :=
				b1 ~ b2 and
				b2 ~ b3 and
				b3 ~ b3_ and
				b3_ ~ b3__ and
				b3__ ~ b1
			check Result end
		end

	t3: BOOLEAN
		local
			eb, b1, b2: BAG[PERSON]
		do
			comment ("t3: is_subbag_of")

			create eb.make_empty
			create b1.make_empty
			Result := eb |<: b1 and b1 |<: eb
			check Result end

			create b1.make_from_array (<<p1, p1, p2, p2>>)
			create b2.make_from_tuple_array (<<[p1, 3]>>)
			Result :=
				eb |<: b1 and eb |<: b2 and
				not (b1 |<: b2) and not (b2 |<: b1)
			check Result end

			create b1.make_from_array (<<p1, p1, p2, p2>>)
			create b2.make_from_tuple_array (<<[p1, 3], [p2, 1]>>)
			Result :=
				eb |<: b1 and eb |<: b2 and
				not (b1 |<: b2) and not (b2 |<: b1)
			check Result end

			create b1.make_from_array (<<p1, p1, p2, p2>>)
			create b2.make_from_tuple_array (<<[p1, 3], [p2, 2]>>)
			Result :=
				eb |<: b1 and eb |<: b2 and
				b1 |<: b2 and not (b2 |<: b1)
			check Result end

			create b1.make_from_array (<<p1, p1, p2, p2>>)
			create b2.make_from_tuple_array (<<[p1, 3], [p2, 2], [p3, 4]>>)
			Result :=
				eb |<: b1 and eb |<: b2 and
				b1 |<: b2 and not (b2 |<: b1)
			check Result end
		end

	t4: BOOLEAN
		local
			b: BAG[STRING]
			i: INTEGER
		do
			comment("t4: test hold-count")
			create b.make_from_tuple_array (<<["a",2], ["b",3], ["c",4], ["", 5]>>)
			i := b.hold_count
				 (agent (p: PAIR[STRING,INTEGER]): BOOLEAN
					do
						Result := not p.first.is_empty and p.second >=3
					end
				 )
			Result := i = 2
			check Result end
		end

	t5: BOOLEAN
		local
			b, b_: BAG[STRING]
		do
			comment("t5: test bag comprehension")
			create b.make_from_tuple_array (<<["a",2], ["b",3], ["c",4], ["", 5]>>)
			b := b | (agent (p: PAIR[STRING,INTEGER]): BOOLEAN
						do
							Result := not p.first.is_empty and p.second >=3
						end
					 )
			create b_.make_from_tuple_array (<<["b",3], ["c",4]>>)
			Result := b ~ b_
			check Result end
		end

	t6: BOOLEAN
		local
			b: BAG[PERSON]
		do
			comment ("t6: override and overriden")

			create b.make_empty
			Result := not b.has (p1) and b[p1] = 0
			check Result end

			b[p1] := 5
			Result := b.has (p1) and b[p1] = 5
			check Result end
		end
end
