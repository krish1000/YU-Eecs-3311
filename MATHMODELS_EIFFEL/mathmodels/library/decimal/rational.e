note
	description: "[
				An arbitrary precision library for Rational numbers.
		
				Creation
					make,
					make_from_ints,
					make_from_string,
					make_from_real32,
					make_from_real64,
		
				Queries
					absolute: RATIONAL
					add (other: RATIONAL): RATIONAL
					as_real32: REAL_32
					as_real64: REAL_64
					divide alias "//" (other: RATIONAL): RATIONAL
					is_equal (other: RATIONAL): BOOLEAN
					is_greater alias ">" (other: RATIONAL): BOOLEAN
					is_greater_equal alias ">=" (other: RATIONAL): BOOLEAN
					is_less alias "<" (other: RATIONAL): BOOLEAN
					is_less_equal alias "<=" (other: RATIONAL): BOOLEAN
					is_valid_real_32: BOOLEAN
					is_valid_real_64: BOOLEAN
					max (other: [like Current] RATIONAL): RATIONAL
					min (other: [like Current] RATIONAL): RATIONAL
					minus alias "-" (other: RATIONAL): RATIONAL
					multiply (other: RATIONAL): RATIONAL
					negate: RATIONAL
					opposite alias "-": RATIONAL
					out: STRING_8
					plus alias "+" (other: RATIONAL): RATIONAL
					power alias "^" (other: INTEGER): RATIONAL
					product alias "*" (other: RATIONAL): RATIONAL
					quotient alias "/" (other: RATIONAL): RATIONAL
					reciprocal: RATIONAL
					round_to (digits: INTEGER): STRING
					square: RATIONAL
					string_is_float (s: STRING): BOOLEAN
					string_is_fraction (s: STRING): BOOLEAN
					string_is_rational (s: STRING): BOOLEAN
					subtract (other: RATIONAL): RATIONAL
		
				Commands
					canonicalize
	]"
	author: "JSO and AB"
	date: "$Date$"
	revision: "$Revision$"

class
	RATIONAL

inherit

	ANY
		undefine
			is_equal
		redefine
			default_create,
			out
		end

	COMPARABLE
		undefine
			out
		redefine
			is_equal,
			default_create
		end

	DEBUG_OUTPUT
		undefine
			out
		redefine
			is_equal,
			default_create
		end

create
	make, make_from_ints, make_from_string, make_from_real32, make_from_real64, default_create

convert
	make_from_string ({STRING}),
	make_from_real32 ({REAL_32}),
	make_from_real64 ({REAL_64}),
	as_real32: {REAL_32},
	as_real64: {REAL_64},
	out: {STRING}

feature {NONE} -- Constructors

	default_create
		do
			p := "1"
			q := "1"
		end

	make (a_p, a_q: INTEGER_64)
			-- Initialization for `Current'.
		require
				--			a_p /= 0 or a_q /= 0
			q_non_zero: a_q /= 0
		do
			create p.make_from_integer64 (a_p)
			create q.make_from_integer64 (a_q)
			canonicalize
		end

	make_from_ints (a_p, a_q: BIG_INTEGER)
			-- Create by specifying the `p`and `q` values
		require
				--			a_p /~ a_p.zero or a_q /~ a_q.zero
			q_non_zero: a_q /~ a_q.zero
		do
			p := a_p
			q := a_q
			canonicalize
		end

	make_from_string (s: STRING)
			-- Create from string `s`
		require
			has_correct_format: string_is_rational (s)
		local
			p_q: like get_p_q
			i: INTEGER -- index of '.'
			p_, q_: STRING
		do
			if string_is_fraction (s) then
				p_q := get_p_q (s)
				make_from_ints (p_q.a_p, p_q.a_q)
			else
				check
					string_is_float (s)
				end
				i := s.index_of ('.', 1) -- index of '.'

				create p_.make_from_string (s)
				p_.remove (i)
				check
					p_.index_of ('.', 1) = 0
				end
				q_ := "1"
				across
					1 |..| (s.count - i) as i_
				loop
					q_.append_character ('0')
				end
				make_from_ints (p_, q_)
			end
		end

	make_from_real32 (r: REAL_32)
			-- Create from a `REAL_32`, `r`
		do
			make_from_string (r.out)
		end

	make_from_real64 (r: REAL_64)
			-- Create from a `REAL_64`
		do
			make_from_string (r.out)
		end

feature {RATIONAL} -- Internal attributes

	p, q: BIG_INTEGER -- Numerator and Denominator

feature -- Operations

	product alias "*", multiply (other: like Current): like Current
			-- Return the result of multiplying `Current' by `other'
		do
			create Result.make_from_ints (p * other.p, q * other.q)
		end

	plus alias "+", add (other: like Current): like Current
			-- Return the result of adding `Current' to `other'
		do
			create Result.make_from_ints ((p * other.q) + (q * other.p), q * other.q)
		end

	opposite alias "-", negate: like Current
			-- Negate `Current`
		do
			create Result.make_from_ints (- p, q)
		end

	minus alias "-", subtract (other: like Current): like Current
			-- Return the result of subtracting `other` from `Current`
		do
			Result := Current + (- other)
		end

	reciprocal: like Current
			-- Return 1 / `Current'
		do
			create Result.make_from_ints (q, p)
		end

	quotient alias "/", divide alias "//" (other: like Current): like Current
			-- Return the result of dividing `Curent' by `other'
		require
			denominator_non_zero: other /~ zero
		do
			Result := Current * other.reciprocal
		end

	abs, absolute: like Current
			-- Absolute value of `Current'
		do
			if Current >= zero then
				Result := identity
			else
				Result := opposite
			end
		end

	square: RATIONAL
			-- Return the value of `Current` * `Current`
		do
			Result := Current * Current
		end

	power alias "^", exp (other: INTEGER): RATIONAL
			-- Return the value of `Current` raised to the power `other`
		do
			if other = 0 then
				Result := one
			else
				Result := Current
				across
					1 |..| (other.abs - 1) as i
				loop
					Result := Result * Current
				end
				if other < 0 then
					Result := Result.reciprocal
				end
			end
		end

feature -- rounding

	round_to (digits: INTEGER): STRING
			-- Round `Current` to `digits` number of digits. Uses half-up rounding.
		local
			d: DECIMAL
		do
			d := p.real_division (q)
			Result := d.round_to (digits).precise_out
		end

feature -- Queries

	out: STRING
			-- Return a string representation of `Current`
		do
			if q ~ q.one then
				Result := p.out
			else
				Result := p.out + "/" + q.out
			end
		end

	debug_output: STRING
			-- Debut output for `Current`
		do
			Result := out
		end

	is_canonical: BOOLEAN
			-- Is `Current` in canonical form?
		do
			Result := p.gcd (q) ~ p.one
		end

	is_equal (other: like Current): BOOLEAN
			-- Is `other' value equal to current
		do
			Result := p * other.q ~ q * other.p
		end

	is_less alias "<" (other: like Current): BOOLEAN
			-- Is current object less than `other'?
		do
				--			Result := p * other.q < q * other.p
				-- fix
			if Current ~ "0" then
				Result := Current.p < other.p * other.q
			elseif other ~ "0" then
				Result := Current.p * Current.q < other.p
			else
				Result := p * other.q < q * other.p
			end
		end

	divisible (other: like Current): BOOLEAN
			-- May current object be divided by `other'?
		do
			Result := other /~ zero
		end

	exponentiable (other: NUMERIC): BOOLEAN
			-- May current object be elevated to the power `other'?
		do
			Result := False -- Why always false?
		end

	int_zero: BIG_INTEGER
			-- Returns an Integer with value 0 for creation
		do
			Result := "0"
		end

	one: like Current
			-- Neutral element for "*" and "/"
		do
			create Result.make (1, 1)
		end

	zero: like Current
			-- Neutral element for "+" and "-"
		do
			create Result.make (0, 1)
		end

	identity alias "+": like Current
			-- Unary plus
		do
			create Result.make_from_ints (p, q)
		end

	string_is_fraction (s: STRING): BOOLEAN
			-- Does `s' represent a valid and well-defined fraction?
			-- It must contain at most one '/', which separates the numerator
			-- from the denominator (no whitespace allowed). Also, either
			-- the numerator or denominator must be non-zero. Further, if '/'
			-- is present, what comes before and after it must be valid INTs.
			-- If `s' doesn't contain a '/', a denominator of 1 is assumed.
		local
			i: INTEGER -- index of '/'
			p_s, q_s: STRING
			i1, i2: BIG_INTEGER
		do
			i := s.index_of ('/', 1)
			i1 := "0"
			if i > 0 then -- if there is a / in the string
				if s.last_index_of ('/', s.count) = i and then s.count >= 3 then -- BUGGY! doesn't work if negative is included or a two digit number before /
					p_s := s.substring (1, i - 1)
					q_s := s.substring (i + 1, s.count)
					if p_s.count > 0 and q_s.count > 0 then -- We can't call is_string_int without checking that they are non-empty first
						if i1.is_string_int (p_s) and i1.is_string_int (q_s) then
							i1 := p_s
							i2 := q_s
							Result := not (i1 ~ i1.zero and i2 ~ i2.zero)
						end
					else
						Result := False
					end
				end
			else
				Result := (not s.is_empty) and then i1.is_string_int (s)
			end
			if i2 ~ int_zero then
				Result := False
			end
		end

	string_is_float (s: STRING): BOOLEAN
			-- Does `s' represent a valid and well-defined decimal number
			-- with potentially a floating point? This function was copied
			-- from `{INT}.ensureValid', which came from mathmodels' VALUE.
		require
			non_void: s /= void
			non_empty: not s.is_empty
		local
			seenDot: BOOLEAN
			i: INTEGER
		do
				-- valid patterns are: [-]?[0-9]+.[0-9]+ or .[0-9]+ or [-]?[0-9]+

			seenDot := false
			result := true
			from
				i := 1
			until
				i > s.count
			loop
				if s.item (i) = '-' then
					if i > 1 then
						result := false
						i := s.count + 1 -- stop looping
					end
				elseif s.item (i) = '.' then
					if i = s.count or seenDot then
						result := false
						i := s.count + 1 -- stop looping
					end
					seenDot := true
				elseif not s.item (i).is_digit then
					result := false
					i := s.count + 1 -- stop looping
				end
				i := i + 1
			end
		end

	string_is_rational (s: STRING): BOOLEAN
			-- Does `s' represent a fraction or a decimal with a floating
			-- point?
		do
			Result := string_is_fraction (s) or else string_is_float (s)
		end

	is_valid_real_64: BOOLEAN
			-- Is `Current` a valid `REAL_64`?
		do
			Result := p.out.is_integer_64 and then q.out.is_integer_64 and then p.real_division (q).out.is_real_64
		end

	is_valid_real_32: BOOLEAN
			-- Is `Current` a valid `REAL_32`?
		do
			Result := p.out.is_integer_32 and then q.out.is_integer_32 and then p.real_division (q).out.is_real_32
		end

	as_real64: REAL_64
			-- Represent `Current` as a `REAL_64`
		require
			is_valid_real_64
		do
			Result := p.real_division (q).precise_out.to_real_64
		end

	as_real32: REAL_32
			-- Represent `Current` as a `REAL_32`
		require
			is_valid_real_32
		do
			Result := p.real_division (q).precise_out.to_real_32
		end

feature -- Internal queries

	get_p_q (s: STRING): TUPLE [a_p, a_q: like s]
			-- Returns the numerator and denominator parsed from `s'.
		require
			string_is_rational (s)
		local
			i: INTEGER -- index of '/'
		do
			i := s.index_of ('/', 1)
			create Result
			if i > 0 then
				Result.a_p := s.substring (1, i - 1)
				Result.a_q := s.substring (i + 1, s.count)
			else
				Result.a_p := s
				Result.a_q := "1"
			end
		end

feature -- Commands

	canonicalize
			-- Canonicalize the current rational by dividing its numerator
			-- and denominator by their GCD.
		local
			g: BIG_INTEGER
		do
			g := p.gcd (q)
			p := p.divide (g)
			q := q.divide (g)
		end

invariant
	well_defined: q /~ q.zero

end
