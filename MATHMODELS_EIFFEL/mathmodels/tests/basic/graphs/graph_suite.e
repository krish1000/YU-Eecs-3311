note
	description: "[
					ROOT class for mathematical graph testing suites.
				  ]"
	date: "June 2019"
	revision: "1.00"

class
	GRAPH_SUITE

inherit
	ES_SUITE

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		do
			add_test (create {TEST_GRAPH}.make)
			add_test (create {TEST_GRAPH_BASIC}.make) --suite of tests
			add_test (create {TEST_GRAPH_CONNOR}.make)
		end

end
