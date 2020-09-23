note
	description: "Summary description for {TEST_LIBRARY}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_LIBRARY

inherit
	ES_TEST
--	ARGUMENTS_32

create
	make

feature -- Constructor
	make
		do
			add_boolean_case (agent test_arrays)
			add_boolean_case (agent test_lists)
			add_boolean_case (agent test_across_loops)
			add_boolean_case (agent test_quantifications)
		end

feature -- boolean tests
	test_arrays: BOOLEAN
		local
			s1, s2: ARRAY[STRING]
			i: INTEGER
		do
			comment("test_arrays: test basic operations of arrays")
			create s1.make_empty
			Result :=
				-- size of array: uppper - lower + 1 ***
				s1.lower = 1 and s1.upper = 0 and s1.count = 0 and s1.is_empty
				and
				not s1.valid_index (0) and not s1.valid_index (1)
			check Result end

			s1.force ("alan", s1.count + 1) -- 0 + 1 (cuz array is currently empty)
			s1.force ("mark", s1.count + 1) -- 1 + 1
			s1.force ("tom", s1.count + 1) -- 2 + 1
			Result :=
				s1.lower = 1 and s1.upper = 3 and s1.count = 3 and not s1.is_empty
				and
				not s1.valid_index (0) and s1.valid_index (1) and s1.valid_index (2) and s1.valid_index (3)
				and -- apparently 0 is never a valid index?
				s1[1] ~ "alan" and s1[2] ~ "mark" and s1[3].is_equal("tom") -- remember ~ is the same as .is_equal
			check Result end

			Result :=
				s1.object_comparison = false -- ***
				and
				s1.has ("alan") = false
				and
				s1.occurrences ("alan") = 0
			check Result end

			s1.compare_objects -- ***compares objects sets to true
							   -- if you want to set back do compare_references
			Result :=
				s1.object_comparison = true -- ***
				and
				s1.has ("alan") = true
				and
				s1.occurrences ("alan") = 1
			check Result end

			create s2.make_empty -- initializing s2 array
			--Loop:
			from
				i := 1 -- assuming that s1.lower is 1
			until
				i > s1.count -- exit condition
							 -- equivalent to stay condition: for(...; i <= s1.count;...)
			loop
				s2.force (s1[i], s2.count + 1)
--				print(i)
--				print(": " + s1[i] + "%N")
				i := i + 1
			end
			Result :=
				s2.lower = 1 and s2.upper = 3 and s2.count = 3 and not s2.is_empty
				and
				not s2.valid_index (0) and s2.valid_index (1) and s2.valid_index (2) and s2.valid_index (3)
				and -- apparently 0 is never a valid index?
				s2[1] ~ "alan" and s2[2] ~ "mark" and s2[3].is_equal("tom") -- remember ~ is the same as .is_equal
			check Result end

			Result := s1 /= s2 --they are not the same b/c different array obj's
			check Result end

			Result := s1 /~ s2 -- s1.object_comparison is true, but s2.object_comparison is false
			check Result end

			s2.compare_objects -- tutorial 13
			Result := s1 ~ s2
			check Result end

			s2[2] := "jim"
			s2.put("jeremy", 3)
--			s2.force("jeremy", 3) -- this still works tho, but apparnetly its mainly used to put at the end
			Result :=
				s2.count = 3 and s2[1] ~ "alan" and s2[2] ~ "jim" and s2[3] ~ "jeremy"
		end

------------------------------------------------------------
	test_lists: BOOLEAN
		local
			s1, s2, s3: LINKED_LIST[STRING]
			i: INTEGER
		do
			comment("test_lists: test basic operations of linked lists")
			create s1.make -- CHANGED FROM ARRAY
			Result :=
				s1.count = 0 and s1.is_empty -- CHANGED FROM ARRAY NO UPPER NO LOWER
				and
				not s1.valid_index (0) and not s1.valid_index (1)
			check Result end

			s1.extend ("alan") -- CHANGED FROM ARRAY s1.force to s1.extend
			s1.extend ("mark") -- NO NEED FOR INDEX
			s1.extend ("tom")
			Result :=
				s1.count = 3 and not s1.is_empty -- CHANGED FROM ARRAY NO UPPER NO LOWER
				and
				not s1.valid_index (0) and s1.valid_index (1) and s1.valid_index (2) and s1.valid_index (3)
				and -- apparently 0 is never a valid index?
				s1[1] ~ "alan" and s1[2] ~ "mark" and s1[3].is_equal("tom") -- remember ~ is the same as .is_equal
			check Result end

			Result :=
				s1.object_comparison = false -- ***
				and
				s1.has ("alan") = false
				and
				s1.occurrences ("alan") = 0
			check Result end

			s1.compare_objects -- ***compares objects sets to true
							   -- if you want to set back do compare_references
			Result :=
				s1.object_comparison = true -- ***
				and
				s1.has ("alan") = true
				and
				s1.occurrences ("alan") = 1
			check Result end

			create s2.make -- CHANGED FROM ARRAY
			--Loop:
			from
				i := 1
			until
				i > s1.count -- exit condition
							 -- equivalent to stay condition: for(...; i <= s1.count;...)
			loop
				s2.extend (s1[i]) -- CHANGED FROM ARRAY s2.force to s2.extend
--				print(i)
--				print(": " + s1[i] + "%N")
				i := i + 1
			end
			Result :=
				s2.count = 3 and not s2.is_empty -- CHANGED FROM ARRAY NO UPPER NO LOWER
				and
				not s2.valid_index (0) and s2.valid_index (1) and s2.valid_index (2) and s2.valid_index (3)
				and -- apparently 0 is never a valid index?
				s2[1] ~ "alan" and s2[2] ~ "mark" and s2[3].is_equal("tom") -- remember ~ is the same as .is_equal
			check Result end

			Result := s1 /= s2 --they are not the same b/c different array obj's
			check Result end

			Result := s1 /~ s2 -- s1.object_comparison is true, but s2.object_comparison is false
			check Result end

			s2.compare_objects -- tutorial 13
			Result := s1 ~ s2
			check Result end

			-- another way of looping via linkedlist specific commands/queries
			-- cuz indexing is inefficient
			create s3.make
			from
				s1.start -- move the cursor(pointer) to the 1st position
			until
				s1.after -- exit when the cursor position is beyond the list
			loop -- NOTE*** If you have an infinite loop, the running never ends, and it doesn't show any error, poopy ide
				s3.extend (s1.item) -- extend s3 by where s1's cursor is pointing to
				s1.forth -- moves cursor(pointer) forward
			end
			Result :=
				s3.count = 3 and not s3.is_empty -- CHANGED FROM ARRAY NO UPPER NO LOWER
				and
				not s3.valid_index (0) and s3.valid_index (1) and s3.valid_index (2) and s3.valid_index (3)
				and -- apparently 0 is never a valid index?
				s3[1] ~ "alan" and s3[2] ~ "mark" and s3[3].is_equal("tom") -- remember ~ is the same as .is_equal
			check Result end

			Result :=
				s1 /= s3 and s2 /= s3
				and
				s1 /~ s3 and s2 /~ s3 -- because s3.object_comparison is false
			check Result end

			s3.compare_objects
			Result :=
				s1 /= s3 and s2 /= s3
				and
				s1 ~ s3 and s2 ~ s3 -- because s3.object_comparison is false
			check Result end

			s2[2] := "jim"
			--list doesn't have put()
			Result :=
				s2.count = 3 and s2[1] ~ "alan" and s2[2] ~ "jim" and s2[3] ~ "tom"
		end

	test_across_loops: BOOLEAN
		local
			a : ARRAY[STRING]
			list1, list2, list3 : LINKED_LIST[STRING]
		do
			comment("test_across_loops: use of across as loop instructions")

			create list1.make
			a := <<"alan", "mark", "tom">>
			across
				1 |..| a.count as l_i -- l_i denotes a cursor pointing to an integer
			loop
				list1.extend (a[l_i.item]) -- NEED TO INCLUDE .item
			end
			Result := list1.count = 3 and list1[1] ~ "alan" and list1[2] ~ "mark" and list1[3] ~ "tom"
			check Result end
			--------------------------------------------------------------------------
			-- USING IS INSIDE ACROSS LOOP
			create list2.make
			a := <<"alan", "mark", "tom">>
			across
				1 |..| a.count is l_i -- l_i denotes a integer (member of the interval)
			loop
				list2.extend (a[l_i]) -- NO NEED TO INCLUDE .item
			end
			Result := list2.count = 3 and list2[1] ~ "alan" and list2[2] ~ "mark" and list2[3] ~ "tom"
			---------------------------------------------------------------------------
			-- USING ACROSS IS shorter way via collection
			create list3.make
			across
				a is l_name -- `a` being an array is iterable;
							-- `l_name` denotes a member string of the array
			loop
				list3.extend(l_name)
			end
			Result := list3.count = 3 and list3[1] ~ "alan" and list3[2] ~ "mark" and list3[3] ~ "tom"
		end

	test_quantifications: BOOLEAN
		local
			a: ARRAY[STRING]
	-- ***IMPORTANT ERROR, if you forget to surround across with `do & end`
	-- compile time will show syntax error
	-- if you forget result it will just show syntax error and show `l_i > 5`
	-- if you use loop instead of all it will show syntax error
		do
			comment("test_quantifications: use of across as boolean expressions")
			Result :=
				not (across
					1 |..| 10 is l_i -- l_i denotes a member of the interval 1 .. 10
				all
					l_i > 5
				end)

				AND

				(across
					1 |..| 10 is l_i -- l_i denotes a member of the interval 1 .. 10
				some -- CHANGED FROM ALL TO SOME since some of those numbers are less thus true
					l_i > 5
				end)
				check Result end

				a := <<"yuna", "suyeon", "heeyeon">>
				Result :=
					not (across 1 |..| a.count is l_i all a[l_i].count > 4 end) -- false cuz yuna is 4
					and
					(across 1 |..| a.count is l_i some a[l_i].count > 4 end)
				check Result end

				Result :=
					not (across a is l_s all l_s.count > 4 end) -- false cuz yuna is 4
					and
					(across a is l_s some l_s.count > 4 end)
				check Result end

				Result :=
					across 1 |..| (a.count - 1) is l_index all a[l_index].count <= a[l_index + 1].count end

		end
end
