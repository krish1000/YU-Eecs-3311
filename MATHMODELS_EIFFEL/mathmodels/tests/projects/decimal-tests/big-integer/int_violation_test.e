note
	description: "[
					Testing suite for the BIG_INTEGER Class testing preconditions.
				  ]"
	author: "JSO, CD"
	date: "June 13 2019"
	revision: "1.00"

class
	INT_VIOLATION_TEST
inherit
	ES_TEST

create
	make

feature {NONE} -- Initialization

	make
		do
			add_violation_case_with_tag ("power_non_zero", agent t1)
			add_violation_case_with_tag ("has_correct_format", agent t2)
			add_violation_case_with_tag ("denominator_non_zero", agent t3)
			add_violation_case_with_tag ("both_not_zero", agent t4)
			add_violation_case_with_tag ("has_correct_format", agent t100)
			add_violation_case_with_tag ("has_correct_format", agent t101)
			add_violation_case_with_tag ("has_correct_format", agent t102)
			add_violation_case_with_tag ("has_correct_format", agent t103)
			add_violation_case_with_tag ("has_correct_format", agent t104)
			add_violation_case_with_tag ("has_correct_format", agent t105)
			add_violation_case_with_tag ("has_correct_format", agent t106)
			add_violation_case_with_tag ("has_correct_format", agent t107)
			add_violation_case_with_tag ("has_correct_format", agent t108)
			add_violation_case_with_tag ("has_correct_format", agent t109)
		end

feature -- Precondition testing

	t1
		local -- power - Negative Power Precondition
			i1,answer: BIG_INTEGER
		do
			comment ("t1: Power - Negative Power Precondition Check")
			i1 := "40"
			answer :=  i1.power (-1)
		end

	t2 -- is_integer Precondition Violation
		local
			i1: BIG_INTEGER
		do
			comment("t2: is_integer - Test against 14.42")
			i1 := "14.42"
		end

	t3
		local
			i1, zero, answer: BIG_INTEGER
		do
			comment ("t3: Division - Divide By Zero Precondition Check")

			i1 := "23"
			create zero

			answer := i1 // zero
		end

	t4
		local
			i1, zero, answer: BIG_INTEGER
		do
			comment ("t4: GCD - Both Zero Precondition Check")

			i1 := "0"
			create zero

			answer := i1.gcd (zero)
		end

	t5
		local
			i1: BIG_INTEGER
			i64: INTEGER_64
		do
			comment ("t5: as_integer64 - valid_int64 Precondition Check")

			i1 := "9223372036854775808"
			i64 := i1.as_integer64
		end

	t6
		local
			i1: BIG_INTEGER
			i32: INTEGER_32
		do
			comment ("t4: as_integer32 - valid_int32 Precondition Check")

			i1 := "2147483648"
			i32 := i1.as_integer32
		end
feature -- violation cases for creation preconditions

	t100
		local
			i1: BIG_INTEGER
		do
			comment ("t100: make_from_string violation case with 0/0")
			i1 := "0/0"
		end

	t101
		local
			i1: BIG_INTEGER
		do
			comment ("t101: make_from_string violation case with 000/000")
			i1 := "000/000"
		end

	t102
		local
			i1: BIG_INTEGER
		do
			comment ("t102: make_from_string violation case with 00/00000")
			i1 := "00/00000"
		end

	t103
		local
			i1: BIG_INTEGER
		do
			comment ("t103: make_from_string violation case with -55/")
			i1 := "-55/"
		end

	t104
		local
			i1: BIG_INTEGER
		do
			comment ("t104: make_from_string violation case with /1")
			i1 := "/1"
		end

	t105
		local
			i1: BIG_INTEGER
		do
			comment ("t105: make_from_string violation case with 1.1.")
			i1 := "1.1."
		end

	t106
		local
			i1: BIG_INTEGER
		do
			comment ("t106: make_from_string violation case with 111111111111.")
			i1 := "111111111111."
		end

	t107
		local
			i1: BIG_INTEGER
		do
			comment ("t107: make_from_string violation case with 1.0/")
			i1 := "1.0/"
		end

	t108
		local
			i1: BIG_INTEGER
		do
			comment ("t108: make_from_string violation case with 1.1/2.2")
			i1 := "1.1/2.2"
		end

	t109
		local
			i1: BIG_INTEGER
		do
			comment ("t109: make_from_string violation case with 1/2.0")
			i1 := "1/2.0"
		end

end
