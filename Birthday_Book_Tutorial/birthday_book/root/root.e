note
	description: "[
		ROOT class for project
		See tests in TEST_EXAMPLE
		Place your own classes in cluster model (recursive).
		There is no precompile.
	]"
	author: "JSO"
	date: "$Date$"
	revision: "$Revision$"

class
	ROOT

inherit
	ES_SUITE -- Unit testing

create
	make

feature {NONE} -- Initialization

	make
			-- Run app
--		local
--			bb: BIRTHDAY_BOOK
		do
			add_test (create {TEST_LIBRARY}.make)
			add_test (create {TEST_BIRTHDAY}.make) --suite of tests
			add_test (create {TEST_BIRTHDAY_BOOK}.make)
			show_browser
			run_espec
		end

end
