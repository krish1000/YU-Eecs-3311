note
	description: "A Course with its administrative information."
	author: "Jackie Wang"
	date: "$Date$"
	revision: "$Revision$"

class
	COURSE

inherit
	ANY
	redefine
		is_equal,
		out
	end

	DEBUG_OUTPUT
	undefine
		out, is_equal
	end
create
	make

feature -- Attributes

	name: STRING

	time: STRING
		do
			Result := day_string + ", "
				+ start.formatted_out (code)
				+ " -- "
				+ finish.formatted_out (code)
		end

feature -- Outputs

	debug_output: STRING
		do
			Result := out
		end

	out: STRING
		do
			Result := name.out + ":" +
						day_string + ", " +
							start.formatted_out (code) + " -- " + finish.formatted_out (code)
		end

feature -- Constructor

	make (n: STRING; d: INTEGER; s1, s2: STRING)
		require
			not n.is_empty
			valid_day (d)
			valid_time (s1)
			valid_time (s2)
			course_time (s2) > course_time (s1)
		do
			name := n
			day := d
			start := course_time (s1)
			finish := course_time (s2)
		ensure
			name ~ n
		end

feature -- Auxiliary functions for contracts

	valid_day (d: INTEGER): BOOLEAN
		do
			Result := 1 <= d and then d <= 7
		ensure
			Result = ( 1 <= d and then d <= 7)
		end

	valid_time (s: STRING): BOOLEAN
		local
			tool: DATE_TIME_CODE_STRING
		do
			create tool.make (code)
			Result :=
				tool.is_time (s) and then
				tool.correspond (s)
		end

	course_time (s: STRING): TIME
		require
			valid_time (s)
		do
			create Result.make_from_string (s + ":00", code + ":ss")
		end

feature {NONE} -- Auxiliary functiosn for implementation

	code: STRING
		do
			Result := "[0]hh:[0]mi"
		end

	day_string: STRING
		local
			tool: DATE_TIME_TOOLS
		do
			create tool
			Result := tool.days_text [day + 1 \\ 7]
		end

feature -- Equality

	is_equal (other: like Current): BOOLEAN
			-- Is current course equal to 'other'?
		do
			Result :=
				name ~ other.name and then
				start ~ other.start and then
				duration ~ other.duration
		end

feature {COURSE, REGISTRATION} -- Implementation

	day: INTEGER -- constrained by an invariant

	start: TIME

	finish: TIME

	duration: TIME_DURATION
		do
			Result := finish.relative_duration (start)
		end

invariant
	valid_day:
		valid_day (day)

	finish_later_than_start:
		finish > start
end
