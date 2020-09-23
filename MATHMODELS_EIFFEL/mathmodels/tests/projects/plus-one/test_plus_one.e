note
	description: "Summary description for {TESTS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_PLUS_ONE
inherit
	ES_TEST

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
		do
			add_boolean_case (agent t0)
		end

feature -- tests
	t0: BOOLEAN
		local
			p: PLUS_ONE
			a: ARRAY[INTEGER]
		do
			comment("t0: Test sum array of iterable arithmetic")
			a := <<2, 4, 5>>
			create p.make(a)
			Result := p.val = 246

		end

end
