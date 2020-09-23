note
	description: "Summary description for {TEST_BIRTHDAY_BOOK}."
	author: "Krishaanth"
	date: "2020-09-19"
	revision: "$Revision$"

class
	TEST_BIRTHDAY_BOOK

inherit
	ES_TEST

create
	make

feature -- Add tests
	make
		do
			-- Boolean Tests
			add_boolean_case (agent t_add)
			add_boolean_case (agent t_get)
--			add_boolean_case (agent t_celebrate1)

			-- Violation tests
			add_violation_case_with_tag ("non_existing_name", agent t_precond_add)
			add_violation_case_with_tag ("name_added_to_end", agent t_postcond_add)
--			add_violation_case_with_tag ("every_name_in_result_is_an_existing_name", agent t_postcond_celebrate1)
--			add_violation_case_with_tag ("every_name_in_result_has_birthday_today", agent t_postcond_celebrate2)
		end

feature -- Boolean Tests

	t_add: BOOLEAN
		local
			bb: BIRTHDAY_BOOK
			bd1, bd2, bd3: BIRTHDAY
		do
			comment("t_add: test additions to birthday book")
			create bb.make_empty
			Result := bb.count = 0 and bb.names.count = 0 and bb.birthdays.count = 0
			check Result end -- checking if empty birthday book works

			create bd1.make (9, 14)
			create bd2.make (3, 31)
			create bd3.make (7, 2)
			bb.add ("alan", bd1)
			bb.add ("mark", bd2)
			bb.add ("tom", bd3)
			Result := bb.count = 3 and bb.names[1] ~ "alan" and bb.birthdays[1] ~ (create {BIRTHDAY}.make (9, 14))
			check Result end
		end

------------------------------------
	t_get: BOOLEAN
		local
			bb: BIRTHDAY_BOOK
			bd1, bd2, bd3: BIRTHDAY
		do
			comment("t_get: test getting birthdays from birthday book")
			create bb.make_empty
			Result := bb.count = 0 and bb.names.count = 0 and bb.birthdays.count = 0
			check Result end -- checking if empty birthday book works

			create bd1.make (9, 14)
			create bd2.make (3, 31)
			create bd3.make (7, 2)
			bb.add ("alan", bd1)
			bb.add ("mark", bd2)
			bb.add ("tom", bd3)

			Result :=
				bb.get_birthday ("mark").month = 3 and bb.get_birthday ("mark").day = 31-- attached version
				and
				bb.get_birthday ("mark") ~ (create {BIRTHDAY}.make (3, 31))
			check Result end

			-- **** CANNOT DO THIS B/C during compile time eiffel will give error
			-- stating that the target of the Object_call might be void.
			-- so we need to check first if its not void (null) by doing the lines below
--			Result :=
--						bb.get_detachable_birthday ("mark").month = 3 and bb.get_detachable_birthday ("mark").day = 31-- attached version

			Result := bb.get_detachable_birthday ("mark") ~ (create {BIRTHDAY}.make (3, 31))
			check Result end

			-- this was the line i was mentioning above, both of these segments work!
			-- the above works cuz we don't use it as a context object. so no null exception
			check attached bb.get_detachable_birthday ("mark") as mark_bd then -- ****
				Result := mark_bd.month = 3 and mark_bd.day = 31
			end
			check Result end

			-- attached bb.get_detachable_birthday ("alan") is a boolean expression
			-- if its true then it sets that as a dummy variable
			check
				attached bb.get_detachable_birthday ("alan") as alan_bd
				and
				attached bb.get_detachable_birthday ("tom") as tom_bd
			then
				Result :=
					alan_bd.month = 9 and alan_bd.day = 14
					and
					tom_bd.month = 7 and tom_bd.day = 2
			end
		end

--	t_celebrate1: BOOLEAN
--		local
--			bb: BIRTHDAY_BOOK
--			bd1, bd2, bd3, bd4, bd5: BIRTHDAY
--			n1: ARRAY[STRING]
--		do
--			comment("t_celebrate1: checking whether given a date it will return the names that have a bday on that date")
--			create bb.make_empty
--			Result := bb.count = 0 and bb.names.count = 0 and bb.birthdays.count = 0
--			check Result end -- checking if empty birthday book works

--			create bd1.make (9, 14)
--			create bd2.make (3, 31)
--			create bd3.make (7, 2)
--			create bd4.make (5, 24)
--			create bd5.make (5, 24)
--			bb.add ("alan", bd1)
--			bb.add ("mark", bd2)
--			bb.add ("tom", bd3)
--			bb.add ("krish", bd4)
--			bb.add ("joemama", bd5)

--			n1 := bb.celebrate (create {BIRTHDAY}.make (5, 24)) -- this bday is found twice
--			Result :=
--				n1.count = 2
--				and
--				n1[1] ~ "krish" and n1[2] ~ "joemama"
--			check Result end

--			n1 := bb.celebrate (create {BIRTHDAY}.make (1, 1)) -- this bday is non-existant
--			Result :=
--				n1.count = 0
--				and
--				not n1.valid_index (0) and not n1.valid_index (1)
--		end

feature -- Violation Tests

	t_precond_add
		local
			bb: BIRTHDAY_BOOK
--			bd: BIRTHDAY
		do
			comment("t_precond_add: test the precondition of add with an existing name")
			create bb.make_empty
--			create bd.make (9, 14)
			bb.add ("alan", create {BIRTHDAY}.make (9, 14)) -- precondition not expected here b/c "alan" doesn't exist in the empty book
			bb.add ("alan", create {BIRTHDAY}.make (4, 23))
		end

	t_postcond_add
		local
			bd: BIRTHDAY_BOOK_VIOLATING_NAME_ADDED_TO_END
		do
			comment("t_postcond_add: test the postcondition of add with tag name_added_to_end by a wrong implementation")
			create bd.make_empty
			bd.add ("alan", create {BIRTHDAY}.make (7, 2)) -- postcondition violation not expected
			bd.add ("mark", create {BIRTHDAY}.make (8, 15)) -- the wrong implementation will replace bd.names[2] with bd.names[1]
		end

--	t_postcond_celebrate1
--		local
--			bb: BIRTHDAY_BOOK_VIOLATING_CELEBRATE
--			n1: ARRAY[STRING]
--		do
--			comment("t_postcond_celebrate1: violates tag `every_name_in_result_is_an_existing_name`")
--			create bb.make_empty
--			bb.add ("alan", create {BIRTHDAY}.make (7, 2))
--			bb.add ("mark", create {BIRTHDAY}.make (8, 15))
--			bb.add ("john", create {BIRTHDAY}.make (8, 15))
--			bb.add ("jojo", create {BIRTHDAY}.make (5, 4))

--			n1 := bb.celebrate ( create {BIRTHDAY}.make (8, 15)) -- post condition violation
--		end

--	t_postcond_celebrate2
--		local
--			bb: BIRTHDAY_BOOK_VIOLATING_CELEBRATE2
--			n1: ARRAY[STRING]
--		do
--			comment("t_postcond_celebrate2: violates tag `every_name_in_result_has_birthday_today`")
--			create bb.make_empty
--			bb.add ("alan", create {BIRTHDAY}.make (7, 2))
--			bb.add ("mark", create {BIRTHDAY}.make (8, 15))
--			bb.add ("john", create {BIRTHDAY}.make (8, 15))
--			bb.add ("jojo", create {BIRTHDAY}.make (5, 4))

--			n1 := bb.celebrate ( create {BIRTHDAY}.make (8, 15)) -- post condition violation
--		end
end
