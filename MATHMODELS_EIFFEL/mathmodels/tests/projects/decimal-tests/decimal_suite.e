note
	description: "[
					ROOT class for DECIMAL, RATIONAL, and BIG_INTEGER testing suites.
				  ]"
	date: "June 2019"
	revision: "1.00"

class
	DECIMAL_SUITE

inherit
	ES_SUITE

create
	make

feature {NONE} -- Initialization

	total: BOOLEAN = true

	make
			-- Run application.
		do
			if not total then
				add_test (create {DECIMAL_LONG_TEST}.make)
				add_test (create {DECIMAL_ADVANCED_TEST}.make)
			else
				-- BIG_INT TESTS
				add_test (create {INT_FUNCTION_TEST}.make)
				add_test (create {INT_PREDICATE_TEST}.make)
				add_test (create {INT_PRIMARY_OPERATION_TEST}.make)
				add_test (create {INT_SECONDARY_OPERATION_TEST}.make)
				add_test (create {INT_ADVANCED_TEST}.make)
				--

				-- RATIONAL TESTS
				add_test (create {RATIONAL_FUNCTION_TEST}.make)
				add_test (create {RATIONAL_PREDICATE_TEST}.make)
				add_test (create {RATIONAL_PRIMARY_OPERATION_TEST}.make)
				add_test (create {RATIONAL_SECONDARY_OPERATION_TEST}.make)
				add_test (create {RATIONAL_ADVANCED_TEST}.make)
				--

				-- DECIMAL TESTS
				add_test (create {DECIMAL_PRIMARY_OPERATION_TEST}.make)
				add_test (create {DECIMAL_FUNCTION_TEST}.make)
				add_test (create {DECIMAL_PREDICATE_TEST}.make)
				add_test (create {DECIMAL_SECONDARY_OPERATION_TEST}.make)
				add_test (create {DECIMAL_ADVANCED_TEST}.make)
				--

				-- LONG TESTS --
				add_test (create {INT_LONG_TEST}.make)
				add_test (create {RATIONAL_LONG_TEST}.make)
				add_test (create {DECIMAL_LONG_TEST}.make)
				--

				-- VIOLATION TESTS --
				add_test (create {INT_VIOLATION_TEST}.make)
				add_test (create {RATIONAL_VIOLATION_TEST}.make)
				add_test (create {DECIMAL_VIOLATION_TEST}.make)
				--
			end

		end

end
