note
	description: "[
					Testing suite for the DECIMAL Class testing preconditions.
				  ]"
	author: "JSO, CD"
	date: "June 13 2019"
	revision: "1.00"

class
	DECIMAL_VIOLATION_TEST
inherit
	ES_TEST

create
	make

feature {NONE} -- Initialization

	make
		do
			add_violation_case_with_tag ("has_correct_format", agent t100)
			add_violation_case_with_tag ("has_correct_format", agent t101)
			add_violation_case_with_tag ("has_correct_format", agent t102)
			add_violation_case_with_tag ("has_correct_format", agent t103)
			add_violation_case_with_tag ("has_correct_format", agent t104)
			add_violation_case_with_tag ("has_correct_format", agent t105)
			add_violation_case_with_tag ("non_empty", agent t106)
			add_violation_case_with_tag ("other_non_zero", agent t107)
			add_violation_case_with_tag ("non_negative", agent t108)
			add_violation_case_with_tag ("positive_digits", agent t109)
			add_violation_case_with_tag ("precision_positive", agent t110)
			add_violation_case_with_tag ("positive_digits", agent t111)
			add_violation_case_with_tag ("positive_digits", agent t112)
			add_violation_case_with_tag ("is_integer", agent t113)
			add_violation_case_with_tag ("valid_real32", agent t114)
		end

feature -- Tests

	t100
		local
			d1: DECIMAL
		do
			comment ("t100: make_from_string - has_correct_format violation case 0.01.01")
			create d1.make_from_string("0.01.01")
		end

	t101
		local
			d1: DECIMAL
		do
			comment ("t101: make_from_string - has_correct_format violation case 0.01-01")
			create d1.make_from_string("0.01-01")
		end

	t102
		local
			d1: DECIMAL
		do
			comment ("t102: make_from_string - has_correct_format violation case 0.-0101")
			create d1.make_from_string("0.-0101")
		end

	t103
		local
			d1: DECIMAL
		do
			comment ("t103: make_from_string - has_correct_format violation case -001.001-")
			create d1.make_from_string("-001.001-")
		end

	t104
		local
			d1: DECIMAL
		do
			comment ("t104: make_from_string - has_correct_format violation case --1.102")
			create d1.make_from_string("--1.102")
		end

	t105
		local
			d1:DECIMAL
		do
			comment("t105: make_from_string - has_correct_format violation case .1.1")
			create d1.make_from_string(".1.1")
		end

	t106
		local
			d1: DECIMAL
		do
			comment ("t106: make_from_string - non_empty violation case")
			create d1.make_from_string("")
		end

	t107
		local
			d1: DECIMAL
		do
			comment ("t107: quotient - other_non_zero violation case")
			create d1.make_from_string("15.2")
			d1 := d1.quotient("0.0")
		end

	t108
		local
			d1: DECIMAL
		do
			comment ("t108: root - non-negative violation case")
			d1 := "-44.2"
			d1 := d1.sqrt
		end

	t109
		local
			d1: DECIMAL
		do
			comment ("t109: round - positive_digits violation case")
			d1 := "92148.52"
			d1.round(-2)
		end

	t110
		local
			d1: DECIMAL
		do
			comment ("t110: set_precision - precision_positive violation case")
			d1 := "1245.251"
			d1.set_precision(-2)
		end

	t111
		local
			d1: DECIMAL
		do
			comment ("t111: round_to - positive_digits violation case")
			d1 := "521.23"
			d1 := d1.round_to(-3)
		end

	t112
		local
			d1: DECIMAL
			s1: STRING
		do
			comment ("t112: precise_out_to - positive_digits violation case")
			d1 := "15532"
			s1 := d1.precise_out_to (-24)
		end

	t113
		local
			d1: DECIMAL
			i1: BIG_INTEGER
		do
			comment ("t113: as_big_integer - is_integer violation case")
			d1 := "15532.24"
			i1 := d1.as_big_int
		end

	t114
		local
			d1: DECIMAL
			r1: REAL_32
		do
			comment ("t114: as_real - valid_real32 violation case")
			d1 := "340282346634028234660000000000340282346634028234660000000000340282346634028234660000000000340282346634028234660000000000"
			r1 := d1.as_real32
		end


end
