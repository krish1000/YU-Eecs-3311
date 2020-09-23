note
	description: "Summary description for {INSTRUCTOR_TEST2}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_FLOAT2

inherit
	ES_TEST

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
		do
			add_violation_case_with_tag ("percent_between_zero_and_100", agent tbe1)
			add_violation_case_with_tag ("percent_between_zero_and_100", agent tbe2)
			add_violation_case (agent tbe1)
			add_violation_case (agent tbe2)

			-- money violation
			add_violation_case (agent v1)
			add_violation_case (agent v2)
			add_violation_case (agent v3)

		end


feature -- money violation tests
	v1
		local
			m: MONEY
			na: MONEY_ARRAY
			null: BOOLEAN
			e: EXCEPTIONS
		do
			comment("v1: zero allocation should violate contract?")
--			create m.make (10) -- do not need to create a money entity
			if not null then
				na := m.allocated(0)
			-- cannot allocate zero
			end
		rescue
			create e
			if e.exception/=3 then -- precondition violation
				null := true
				retry -- do not raise execption to cause a violation failure
			end
		end

	v2
		local
			m: MONEY
			nai: NUM_ARRAY[INTEGER]
			nam: MONEY_ARRAY
			e: EXCEPTIONS
			null: BOOLEAN
		do
			comment("v2: argument to allocate by ratio cannot be void ")
			create nai.make_empty
			if not null then
				nam := m.allocated_by_ratios (nai)
			end
		rescue
			create e
			if e.exception/=3 then -- precondition violation
				null := true
				retry -- do not raise execption to cause a violation failure
			end
		end

	v3
		local
			m: MONEY
			nai: NUM_ARRAY[INTEGER]
			nam: MONEY_ARRAY
			e: EXCEPTIONS
			null: BOOLEAN
		do
			comment("v3: argument to allocate by ratio cannot sum to zero ")
			nai := <<0>>
			if not null then
				nam := m.allocated_by_ratios (nai)
				-- cannot sum to zero
			end
		rescue
			create e
			if e.exception/=3 then -- precondition violation
				null := true
				retry -- do not raise execption to cause a violation failure
			end
		end


	tbe1
		local
			b: BANK
			m1, m2: MONEY
		do
			comment("tbe1: test transfer precondition; percent cannot be negative")
			create b.make
			create m1.make_with_float(1000)
			create m2.make_with_float (400)
			b.account1.deposit (m1)
			b.account2.deposit (m2)
			b.account1.transfer (-1, b.account2)
			-- cannot transfer zero percent

		end

	tbe2
		local
			b: BANK
			m1, m2: MONEY
		do
			comment("tbe2: test transfer precondition; percent cannot be more than 100")
			create b.make
			create m1.make_with_float(1000)
			create m2.make_with_float (400)
			b.account1.deposit (m1)
			b.account2.deposit (m2)
			b.account1.transfer (101, b.account2)
			-- cannot transfer zero percent

		end

end
