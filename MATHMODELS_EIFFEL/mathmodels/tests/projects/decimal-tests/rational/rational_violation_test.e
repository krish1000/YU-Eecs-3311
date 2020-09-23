note
	description: "[
					Testing suite for the RATIONAL Class testing preconditions.
				  ]"
	author: "JSO, CD"
	date: "June 13 2019"
	revision: "1.00"

class
	RATIONAL_VIOLATION_TEST

inherit

	ES_TEST

create
	make

feature {NONE}

	make
		do
			add_violation_case_with_tag ("denominator_non_zero", agent t1)
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
			add_violation_case_with_tag ("q_non_zero", agent t110)
			add_violation_case_with_tag ("q_non_zero", agent t111)
			add_violation_case_with_tag ("has_correct_format", agent t112)
		end

feature -- violation cases for creation preconditions

	t1
		local
			r1, zero, answer: BIG_INTEGER
		do
			comment ("t1: Division - denominator_non_zero Precondition Check")

			r1 := "23"
			create zero

			answer := r1 // zero
		end

	t100
		local
			r: RATIONAL
		do
			comment ("t100: make_from_string violation case with 0/0")
			r := "0/0"
		end

	t101
		local
			r: RATIONAL
		do
			comment ("t101: make_from_string violation case with 000/000")
			r := "000/000"
		end

	t102
		local
			r: RATIONAL
		do
			comment ("t102: make_from_string violation case with 00/00000")
			r := "00/00000"
		end

	t103
		local
			r: RATIONAL
		do
			comment ("t103: make_from_string violation case with -55/")
			r := "-55/"
		end

	t104
		local
			r: RATIONAL
		do
			comment ("t104: make_from_string violation case with /1")
			r := "/1"
		end

	t105
		local
			r: RATIONAL
		do
			comment ("t105: make_from_string violation case with 1.1.")
			r := "1.1."
		end

	t106
		local
			r: RATIONAL
		do
			comment ("t106: make_from_string violation case with 111111111111.")
			r := "111111111111."
		end

	t107
		local
			r: RATIONAL
		do
			comment ("t107: make_from_string violation case with 1.0/")
			r := "1.0/"
		end

	t108
		local
			r: RATIONAL
		do
			comment ("t108: make_from_string violation case with 1.1/2.2")
			r := "1.1/2.2"
		end

	t109
		local
			r: RATIONAL
		do
			comment ("t109: make_from_string violation case with 1/2.0")
			r := "1/2.0"
		end

	t110 -- make_from_ints
		local
			i1, i2: BIG_INTEGER
			r1: RATIONAL
		do
			comment ("t110: make_from_ints - q_non_zero Precondition Check")
			i1 := "1"
			i2 := "0"
			create r1.make_from_ints (i1, i2)
		end
	t111
		local
			r1: RATIONAL
		do
			comment ("t111: make - q_non_zero Precondition Check")

			create r1.make (1, 0)
		end

	t112
		local
			r1: RATIONAL
		do
			comment ("t112: make_from_string - has_correct_format Precondition Check")

			create r1.make_from_string ("1/0")
		end



end
