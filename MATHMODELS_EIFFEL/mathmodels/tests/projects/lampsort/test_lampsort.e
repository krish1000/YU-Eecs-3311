note
	description : "lampsort application root class"
	date        : "$Date$"
	revision    : "$Revision$"

class
	TEST_LAMPSORT

inherit
	ES_TEST

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		do
			add_boolean_case (agent t1)
			add_boolean_case (agent t2)
		end

feature -- tests
	t1: BOOLEAN
		local
			s1, s2, s3: SET[STRING]
		do
			comment("t1: test set equality and subset")
			create s1.make_from_array (<<"one", "two", "two">>)
			create s2.make_from_array (<<"two", "one">>)
			Result := s1 ~ s2 and s1.count =2

			create s3.make_empty
			check Result end
			Result := s1 /~ s3
			create s3.make_from_array (<<"three", "two", "one">>)
			Result := s1 /~ s3 and s1 |<: s2
		end

	t2: BOOLEAN
		local
			a1, a2, a3: ARRAY[INTEGER]
			ls: LAMPSORT[INTEGER]
		do
			comment("t2: test partition(i,j) and recursive sort")
			a1 := <<10, 5, 12, 7, 14, 11>>
			a2 := <<5, 7, 10, 14, 11, 12>>
			create ls.make (a1)
			ls.partition (1,6)
			Result := ls.pivot2 = 4 and a1 ~ a2
			check Result end

			-- recursive
			create ls.make (a1)
			a3 := <<5, 7, 10, 11, 12, 14>>
			ls.sort2
			Result := ls.a ~ a3
			check Result end

			-- non-recursive, Lampsort
			create ls.make (a1)
			ls.sort
			Result := ls.a ~ a3
			check Result end
		end

end
