note
	description: "Summary description for {TEST_STRUCTURES}."
	author: "JSO"
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_STRUCTURES
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
			q: QUEUE[INTEGER]
		do
			comment("t1: test queue of integers")
			create q.make_empty
			q.enqueue (1)
			q.enqueue (2)
			Result := q.count = 2
				and q.first= 1 and q.last = 2
		end

	t2: BOOLEAN
		local
			q: UTIL_PRIORITY_QUEUE[INTEGER]
		do
			comment("t1: test priority queue of integers")
			create q.make_empty
			q.enqueue (1)
			q.enqueue (3)
			q.enqueue (2)
			Result := q.count=3
				and q.minimum = 1
				and q.maximum=3


		end
end
