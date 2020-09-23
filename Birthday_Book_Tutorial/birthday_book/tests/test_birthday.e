note
	description: "Summary description for {TEST_BIRTHDAY}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_BIRTHDAY

inherit

	ES_TEST

create
	make

feature {NONE} -- Initialization

	make
			-- initialize tests
		do
			--boolean tests
			add_boolean_case (agent t_always_passes)
			add_boolean_case (agent t_static_query)
--			add_boolean_case (agent t_static_query2)
			add_boolean_case (agent t_create_new_birthday)
--			add_boolean_case (agent t_create_invalid_birthday) -- commented out because we need a violation test instead
			add_boolean_case (agent t_birthday_equality)

			-- violation tests
			add_violation_case_with_tag ("valid_combination", agent t_precond_birthday_make)
			add_violation_case_with_tag ("day_set", agent t_postcond_birthday_make)
		end

feature -- boolean tests

	t_always_passes: BOOLEAN
		do
			comment("t_always: a test always passing") -- Need to always add the semicolon, errors happen in terminal(Cmd)
			Result := true
			-- return Result
		end
	t_static_query: BOOLEAN
		do
			comment("t_static_query: test is_month_with_31_days")
			-- For a boolean test query to pass,
			-- 1. No contract violations from anywhere
			-- 2. Last re-assigned value of Result must be true.
			Result := {BIRTHDAY}.is_month_with_31_days (1)
			check Result end
			Result := not {BIRTHDAY}.is_month_with_31_days (4)
		end
--	t_static_query2: BOOLEAN -- boolean test query to check months with 30 days
--		do
--			comment("t_static_query2: test is_month_with_30_days")
--			Result := not {BIRTHDAY}.is_month_with_30_days (1)
--			check Result end
--			Result := {BIRTHDAY}.is_month_with_30_days (4)
--		end

	t_create_new_birthday: BOOLEAN
		local
			bd: BIRTHDAY -- declaring birthday obj
		do
			comment("t_create_new_bithday: create a valid instance of birthday")
			create bd.make (10, 15) -- command used as a constructor*
			Result := bd.month = 10 and bd.day = 15
			check Result end
			create bd.make (9, 14) -- command used as a constructor*
			Result := bd.month = 9 and bd.day = 14
			check Result end
			bd.make (7, 15) -- modified previous object***
			Result := bd.month = 7 and bd.day = 15
--			check Result end  -- CLASS INVARIANT VIOLATED
--			bd.make (13, 1)
--			Result := bd.month = 13 and bd.day = 1
		end

--	t_create_invalid_birthday: BOOLEAN
--		local
--			bd: BIRTHDAY
--		do
--			comment("t_create_invalid_birthday: create an invalid instance of birthday")
--			-- **input values (11,31) is going to cause
--			-- a precondition violation, preventing the implementation
--			-- of make from being called.
--			-- Even though a precondition violation happens in this case,
--			-- it is expected and properly protects the supplier.**
--			create bd.make (11, 31)
--			-- boolean test query would not be suitable for this case,
--			-- because it fails either because Result is false or
--			-- when some violation occurs (regardless of it being expected or not).

--			-- We need to write another kind of test, in which
--			-- we expect a particular tagged violation should occur.
--		end

	t_birthday_equality: BOOLEAN
		local
			bd1, bd2: BIRTHDAY
		do
			comment("t_birthday_equality: test ref and obj equality of birthdays")
			create bd1.make (10, 15)
			create bd2.make (10, 15)
			-- Different objects: (should be false)
			Result := bd1 /= bd2 -- /= MEANS NOT***, reference comparison
			check Result end

			Result := bd1.is_equal (bd2) -- True, int values are the same
			check Result end

			Result := bd1 ~ bd2 -- bd1.is_equal(bd2) Both are the same!**
		end

feature -- violation tests

	t_precond_birthday_make
		local
			bd: BIRTHDAY
		do
			comment ("t_precond_birthday_make: test that the precondition with tag valid_combination is violated as expected")
			-- Since we are expecting a violation to occur,
			-- you only have to write lines of code that will lead t othat particular vioaltion.
			create bd.make (11, 31)
		end

	t_postcond_birthday_make
		local
			bd: BAD_BIRTHDAY_VIOLATING_DAY_SET
		do
			comment("t_postcond_birthday_make: test that the postcondition with tag `day_set` is violated as expected")
			create bd.make (10, 14) -- the wrong implementation in `BAD_BIRTHDAY_VIOLATING_DAY_SET`
									-- should trigger the post condition with the tag `day_set`
		end
end


