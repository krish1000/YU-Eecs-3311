note
	description : "project application root class"
	date        : "$Date$"
	revision    : "$Revision$"

class
	ROOT

inherit
	ARGUMENTS
	ES_SUITE

create
	make

feature {NONE} -- Initialization

	make
			-- Run application
		do
			add_test (create {TEST_NUMERIC_ITERABLE}.make)
			add_test (create {TEST_VALUE1}.make)
			add_test (create {TEST_FUN}.make)
			add_test (create {TEST_REL}.make)
			add_test (create {TEST_SET}.make)

			add_test (create {SLOW_VALUE_TESTS}.make)
			-- this test causes a segmentation error
			-- fixed in 18.11

			add_test (create {TEST_VALUE1}.make)
			add_test (create {TEST_VALUE2}.make)
			add_test (create {TEST_VALUE2_A}.make)

			add_test (create {TEST_FLOAT1}.make)
			add_test (create {TEST_FLOAT2}.make)

			add_test (create {TEST_SET}.make)
			add_test (create {TEST_REL}.make)
			add_test (create {TEST_FUN}.make)
			add_test (create {TEST_SEQ}.make)
			add_test (create {TEST_BAG}.make)

			add_test (create {TEST_LAMPSORT}.make)
			add_test (create {TEST_REGISTRATION1}.make)
			add_test (create {TEST_REGISTRATION2}.make)
			add_test (create {TEST_EHEALTH_SYSTEM}.make)

			-- iterable aritmetic
			add_test (create {TEST_PLUS_ONE}.make)

			-- decimal
			add_suite (create {DECIMAL_SUITE}.make)

			-- graph
			add_suite (create {GRAPH_SUITE}.make)

			-- structures
			add_test (create {TEST_STRUCTURES}.make)
			show_browser
			run_espec
		end

end
