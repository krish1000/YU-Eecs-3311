note
	description: "[
		Test examples with arrays and regular expressions.
		First test fails as Result is False by default.
		Write your own tests.
		Included libraries:
			base and extension
			Espec unit testing
			Mathmodels
			Gobo structures
			Gobo regular expressions
		]"
	author: "JSO"
	date: "$Date$"
	revision: "$Revision 19.05$"

class
	TEST_EXAMPLE

inherit

	ES_TEST

create
	make

feature {NONE} -- Initialization

	make
			-- initialize tests
		do
			add_boolean_case (agent t0)
			add_boolean_case (agent t1)
			add_boolean_case (agent t2)
			add_boolean_case (agent t3)
			add_boolean_case (agent t_checking)
		end

feature -- tests

	t_checking: BOOLEAN
		local
			imp: ARRAY[STRING]
			old_imp: ARRAY[STRING]
			s: STRING
		do
			comment("t_checking: string reeferencne")
			imp := create {ARRAY[STRING]}.make_empty
			s := "MARK"
			imp.force("John", 1)
			imp.force (s, 2)
			imp.force ("yeeeboii", 3)
--			imp[2] := s
--			imp[3] := "yeboi"

			old_imp := imp.twin -- shallow coppy

			Result := old_imp[2] = imp[2] -- true cuz `s` is same obj
			check Result end

			Result := old_imp = imp.twin
			check not Result end
			s := "JIMMMMMMMMMM"
			Result := old_imp ~ imp.twin
			Check Result end

			imp.force ("MARK", 2)
			Result := old_imp ~ imp.twin
			Check NOT Result end

			imp.compare_objects -- only imp is compare obj
			Result := old_imp ~ imp.twin
			Check NOT Result end

			old_imp.compare_objects -- both are compare objs, so string gets is_equal
			Result := old_imp ~ imp.twin
			Check Result end

			Result := imp[2] = old_imp[2] -- false cuz imp2 points to a different string obj
			Check NOT result end

			Result := imp[2] ~ old_imp[2]
			Check Result end


			--Result := False = True and s[6] = 's'
		end

--	t_asdf: BOOLEAN
--		local
--			s :
--		do
--			
--		end

	t0: BOOLEAN
		do
			comment ("t0: First test fails as Result = False")
				-- this test will fail because Result = False
		end

	t1: BOOLEAN
		local
			a: ARRAY [CHARACTER]
			b: ARRAY [INTEGER]
		do
			comment ("t1: test array of chars")
			a := <<'a', 'b', 'c'>>
				-- the domain of array `a` is 1..3
			Result := a [1] = 'a' and a.count = 3
			check
				Result
			end
			a.put ('z', 1) -- replace a[1]
			Result := a [1] = 'z' and a.count = 3
			check
				Result
			end
			a.force ('d', 4) -- extend array
			Result := a.count = 4 and a [4] = 'd'
			check
				Result
			end

				-- new notation for across using `is`
			b := <<1, 8, 9, 7>>
			Result := across b is i all 0 <= i and i <= 9 end
		end

feature -- Regular Expression tests

	t2: BOOLEAN
			-- Test feature 'compile'.
		local
			a_regexp: RX_PCRE_REGULAR_EXPRESSION
			-- Perl Compatible regular expressions, using gobo
			-- https://www.debuggex.com/cheatsheet/regex/pcre
			-- [abc]: one character of a or b or c
			-- [abc]*: zero or more repititions of [abc]
			-- ^: start of string
			-- $: end of string
		do
			comment ("t2: test regular expression ^[abc]*$")
			create a_regexp.make
			a_regexp.compile ("^[abc]*$")
			Result := a_regexp.is_compiled and a_regexp.recognizes ("aaabbbccc")
			check
				Result
			end
			Result := a_regexp.captured_substring (0) ~ "aaabbbccc"
			check
				Result
			end
			Result := not a_regexp.recognizes ("aaabbbcccddd")
		end

	t3: BOOLEAN
			-- Test feature 'compile'.
		local
			a_regexp: RX_PCRE_REGULAR_EXPRESSION
			match, replace: STRING
			-- he(ll)o eiffelians; hello ei[ff]elians
		do
			comment ("t3: test regular expression groups ((.)\2) repeated letters")
			create a_regexp.make
			a_regexp.compile ("((.)\2)") -- group with two repeated letters
			a_regexp.match ("hello eiffelians")
			match := a_regexp.captured_substring (0)
			Result := a_regexp.is_compiled and match ~ "ll"
			check
				Result
			end
			a_regexp.next_match
			match := a_regexp.captured_substring (0)
			Result := a_regexp.is_compiled and match ~ "ff"
			check
				Result
			end
				-- Put the captured substring \1 between brackets <>
			replace := a_regexp.replace ("<\1\>")
			Result := replace ~ "hello ei<ff>elians"
		end

end
