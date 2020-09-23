note
	description: "[
				An arbitrary precision library for integer numbers.
				
				Creation
					make_from_string,
					make_from_integer64,
					make_from_integer32,
		
				Queries
					absolute: BIG_INTEGER
					as_integer32: INTEGER
					as_integer64: INTEGER
					divide (other: BIG_INTEGER): BIG_INTEGER
					gcd (other: BIG_INTEGER): BIG_INTEGER
					is_equal (other: BIG_INTEGER): BOOLEAN
					is_greater alias ">" (other: [like Current] BIG_INTEGER): BOOLEAN
					is_greater_equal alias ">=" (other: [like Current] BIG_INTEGER): BOOLEAN
					is_less alias "<" (other: BIG_INTEGER): BOOLEAN
					is_less_equal alias "<=" (other: [like Current] BIG_INTEGER): BOOLEAN
					max (other: [like Current] BIG_INTEGER): [like Current] BIG_INTEGER
					min (other: [like Current] BIG_INTEGER): [like Current] BIG_INTEGER
					minus alias "-" (other: BIG_INTEGER): BIG_INTEGER
					opposite alias "-": BIG_INTEGER
					out: STRING
					plus alias "+" (other: BIG_INTEGER): BIG_INTEGER
					power alias "^" (other: INTEGER): BIG_INTEGER
					product alias "*" (other: BIG_INTEGER): BIG_INTEGER
					quotient alias "//" (other: BIG_INTEGER): BIG_INTEGER
					remainder alias "\\" (other: BIG_INTEGER): BIG_INTEGER
					square: BIG_INTEGER
	]"
	author: "JSO"
	date: "$17 July, 2018$"
	revision: "$0.91$"

class
	BIG_INTEGER

inherit

	COMPARABLE
		redefine
			is_equal,
			default_create,
			out
		end

create
	make_from_string, make_from_integer64, make_from_integer32, default_create

convert
	make_from_string ({STRING}),
	make_from_integer64 ({INTEGER_64}),
	make_from_integer32 ({INTEGER_32}),
	as_integer64: {INTEGER_64},
	as_integer32: {INTEGER_32},
	out: {STRING}

feature {NONE} -- constructors

	default_create
			-- Create `BIG_INTEGER` 0
		local
			empty: STRING
		do
			empty := "0"
			item := "0"
		ensure then
			item.is_equal ("0")
		end

	make_from_string (s: STRING)
			-- Create a `BIG_INTEGER` from string `s'
		require
			non_empty: not s.is_empty
			has_correct_format: is_string_int (s)
		do
			item := s.twin
			normalize
		end

	make_from_integer32 (int: INTEGER_32)
			-- Create a `BIG_INTEGER` from `int`
		do
			make_from_string (int.out)
		end

	make_from_integer64 (int: INTEGER_64)
			-- Create a `BIG_INTEGER` from `int`
		do
			make_from_string (int.out)
		end

feature -- comparison

	is_equal (other: BIG_INTEGER): BOOLEAN
			-- Is `other` equal to `Current`?
		do
			Result := item_fix.is_equal (other.item_fix)
		end

	is_less alias "<" (other: BIG_INTEGER): BOOLEAN
			-- Is `Current` less than `other`?
		local
			r1i, r2i, d1, d2: INTEGER
			r1, r2: BIG_INTEGER
		do
			r1 := current.clone_me
			r2 := other.clone_me
			if r1.item.item (1) = '-' and r2.item.item (1) /= '-' then
				result := true
			elseif r1.item.item (1) /= '-' and r2.item.item (1) = '-' then
				result := false
			elseif r1.item.item (1) = '-' and r2.item.item (1) = '-' then
				r1.negate
				r2.negate
				result := r2 < r1
			else
				r1.align_decimal (r2)
				r1.align_whole (r2)
				result := false
				from
					r1i := 1
					r2i := 1
				until
					r1i > r1.item.count or r2i > r2.item.count
				loop
					d1 := to_digit (r1.item.item (r1i))
					d2 := to_digit (r2.item.item (r2i))
					if d1 < d2 then
						result := true
						r1i := r1.item.count + 1 -- stop looping
					elseif d1 > d2 then
						result := false
						r1i := r1.item.count + 1 -- stop looping
					end
					r1i := r1i + 1
					r2i := r2i + 1
				end
			end
		end

feature -- operations

	plus alias "+" (other: BIG_INTEGER): BIG_INTEGER
			-- Returns the result of adding `other` to `Current`
		local
			d1, d2, answer: DECIMAL
		do
			create d1.make_from_big_int (Current)
			create d2.make_from_big_int (other)
			answer := d1 + d2
			Result := answer.as_big_int
		end

	minus alias "-", subtract (other: BIG_INTEGER): BIG_INTEGER
			-- Returns the result of subtracting `other` from `Current`
		local
			d1, d2, answer: DECIMAL
		do
			create d1.make_from_big_int (Current)
			create d2.make_from_big_int (other)
			answer := d1 - d2
			Result := answer.as_big_int
		end

	product alias "*" (other: BIG_INTEGER): BIG_INTEGER
			-- Returns the result of multiplying `Current` with `other`
		local
			d1, d2, answer: DECIMAL
		do
			create d1.make_from_big_int (Current)
			create d2.make_from_big_int (other)
			d1.set_precision (d1.get_precision + d2.get_precision) -- we want full precision

			answer := d1 * d2
			Result := answer.as_big_int
		end

	quotient alias "//", divide (other: BIG_INTEGER): BIG_INTEGER
			-- Returns the result of dividing `Current` from `other`
		require
			denominator_non_zero: other /~ zero
		local
			d1, d2, answer: DECIMAL
		do
			create d1.make_from_big_int (Current)
			create d2.make_from_big_int (other)
			answer := d1 / d2
			answer := answer.floor
			Result := answer.as_big_int
		end

	square: BIG_INTEGER
			-- Returns the result of `Current` * `Current`
		do
			Result := Current * Current
		end

	power alias "^", exp(other: INTEGER): BIG_INTEGER
			-- Returns the result of raising `Current` to the power `other`
		require
			power_non_zero: other >= 0
		do
			if other = 0 then
				Result := one
			else
				Result := Current
				across
					1 |..| (other - 1) as i
				loop
					Result := Result * Current
				end
			end
		end

	remainder alias "\\" (other: BIG_INTEGER): BIG_INTEGER
			-- Return the result of `Current' mod `other' (Consistent with WolframAlpha's mod)
		require
			non_zero: other /~ zero
		local
			tmp: BIG_INTEGER
		do
			if Current < zero and other > zero then
				tmp := Current.absolute \\ other
				Result := other - tmp
			elseif Current > zero and other < zero then
				tmp := Current \\ other.absolute
				Result := other + tmp
			else
				Result := Current - ((Current // other) * other)
			end
		end

	gcd (other: BIG_INTEGER): BIG_INTEGER
			-- Return the positive greatest common divisor of `Current' and `other'
		require
			both_not_zero: current /~ zero or other /~ zero
		local
			a, b: BIG_INTEGER
		do
			a := absolute
			b := other.absolute
			if b ~ zero then
				Result := a
			elseif a ~ zero then
				Result := b
			elseif a > b then
				Result := b.gcd (a \\ b)
			else
				Result := gcd (b \\ a)
			end
		end

	negate
			-- negates the number
		local
			tmp: STRING
		do
			if item.item (1) = '-' then
				tmp := item.substring (2, item.count)
				item := tmp.twin
			else
				item.insert_character ('-', 1)
			end
		end

	absolute: BIG_INTEGER
			-- Returns the absolute value of `Current`
		do
			if Current >= Current.zero then
				Result := Current.clone_me
			else
				Result := opposite.clone_me
			end
		ensure
			Result >= Result.zero
		end

feature -- conversion

	as_integer64: INTEGER_64
			-- represent as a integer 64
		require
			valid_int64: out.is_integer_64
		do
			Result := item.to_integer_64
		end

	as_integer32: INTEGER_32
			-- represent as a integer 32
		require
			valid_int32: out.is_integer_32
		do
			Result := item.to_integer_32
		end

feature -- queries

	out: STRING
		do
			Result := item.twin
		end

	opposite alias "-": BIG_INTEGER
			-- unary minus
		do
			create result.make_from_string (item)
			result.negate
		end

	identity alias "+": BIG_INTEGER
			-- unary plus
		do
			create result.make_from_string (item)
		end

	zero: BIG_INTEGER
			-- neutral element for "+" and "-"
		do
			create result.make_from_string ("0")
		end

	one: BIG_INTEGER
			-- neutral element for "*" and "/"
		do
			create result.make_from_string ("1")
		end

	divisible (other: BIG_INTEGER): BOOLEAN
			-- may current object be divided by `other'?
		do
			result := not other.is_equal (zero)
		end

	is_natural: BOOLEAN
			-- Is `Current` a natural number?
		do
			result := is_integer and current >= zero
		end

	is_natural1: BOOLEAN
			-- Is `Current a Natural1 number?
		do
			result := is_integer and current >= one
		end

	is_integer: BOOLEAN
			-- Is string representation `item' an int?
		do
			result := item.index_of ('.', 1) = 0
		end

feature {BIG_INTEGER} -- private fields

	item: STRING
			-- string representation

	clone_me: BIG_INTEGER
		local
			l_s: STRING
		do
			create l_s.make_from_string (item)
			create Result.make_from_string (item.twin)
		end

feature {BIG_INTEGER} -- private methods

	item_fix: STRING
			-- Fix for negative zero
		do
			if item ~ "-0" then
				Result := "0"
			else
				Result := item
			end
		end

	is_valid_string (s: STRING): BOOLEAN
			-- check if the given string is of the correct format
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

	normalize
			-- standardizes the format of the number
		require
			non_empty: not item.is_empty
		local
			i, insPos, dotPos, firstNonZeroPos, lastNonZeroPos: INTEGER
			seenMinus, prependZero, hasDot: BOOLEAN
			whole, fraction, empty, tmp, zeroStr: STRING
		do
			empty := ""
			zeroStr := "0"
			seenMinus := false
			prependZero := false
			from
				i := 1
			until
				i > item.count
			loop
				if item.item (i) = '-' then
					seenMinus := true
				elseif item.item (i) = '.' then
					if i = 1 or seenMinus then
						prependZero := true
					end
				end
				i := i + 1
			end
			if prependZero then
				insPos := 1
				if seenMinus then
					insPos := 2
				end
				item.insert_character ('0', insPos)
			end
			if (seenMinus) then
				negate
			end
			dotPos := item.index_of ('.', 1)
			if dotPos = 0 then -- no '.' in the string
				hasDot := false
				whole := item.twin
				fraction := empty.twin
			else -- '.' exists in the string
				hasDot := true
				tmp := item.substring (1, dotPos - 1)
				whole := tmp.twin
				tmp := item.substring (dotPos + 1, item.count)
				fraction := tmp.twin
			end
			if not whole.is_empty then
				firstNonZeroPos := whole.count + 1
				from
					i := 1
				until
					i > whole.count
				loop
					if whole.item (i) /= '0' then
						firstNonZeroPos := i
						i := whole.count + 1 -- stop looping
					end
					i := i + 1
				end
				if firstNonZeroPos = whole.count + 1 then
					whole := zeroStr.twin
				else
					tmp := whole.substring (firstNonZeroPos, whole.count)
					whole := tmp.twin
				end
			end
			if not fraction.is_empty then
				lastNonZeroPos := -1
				from
					i := fraction.count
				until
					i < 1
				loop
					if fraction.item (i) /= '0' then
						lastNonZeroPos := i
						i := 0 -- stop looping
					end
					i := i - 1
				end
				if lastNonZeroPos = -1 then
					fraction := empty.twin
				else
					tmp := fraction.substring (1, lastNonZeroPos)
					fraction := tmp.twin
				end
			end
			item := whole.twin
			if hasDot and not fraction.is_empty then
				item.append (".")
				item.append (fraction)
			end
			if seenMinus and not item.is_equal ("0") then
				item.insert_character ('-', 1)
			end
		end

	to_digit (ch: CHARACTER): INTEGER
			-- converts a character to a digit
		local
			chZero: CHARACTER
		do
			chZero := '0'
			result := ch.code - chZero.code
		end

	to_char (d: INTEGER_64): CHARACTER
			-- converts a digit to a character
		local
			chZero: CHARACTER
		do
			chZero := '0'
			result := (chZero.code + d).to_character_8
		end

	align_decimal (other: BIG_INTEGER)
			-- used to align the fractional parts of the given parameters
		local
			myDotPos, otherDotPos, myPrec, otherPrec, numToPad, i: INTEGER
			pad: detachable STRING
		do
			myDotPos := item.index_of ('.', 1)
			otherDotPos := other.item.index_of ('.', 1)
			if myDotPos /= 0 and otherDotPos /= 0 then
				myPrec := item.count - myDotPos
				otherPrec := other.item.count - otherDotPos
				if myPrec /= otherPrec then
					pad := void
					if myPrec < otherPrec then
						pad := item
					else
						pad := other.item
					end
					numToPad := (myPrec - otherPrec).abs
					from
						i := 1
					until
						i > numToPad
					loop
						pad.append_character ('0')
						i := i + 1
					end
				end
			elseif myDotPos /= 0 or otherDotPos /= 0 then
				if myDotPos /= 0 then
					myPrec := item.count - myDotPos
				else
					myPrec := 0
				end
				if otherDotPos /= 0 then
					otherPrec := other.item.count - otherDotPos
				else
					otherPrec := 0
				end
				pad := void
				if myPrec < otherPrec then
					pad := item
				else
					pad := other.item
				end
				numToPad := (myPrec - otherPrec).abs
				pad.append_character ('.')
				from
					i := 1
				until
					i > numToPad
				loop
					pad.append_character ('0')
					i := i + 1
				end
			end
		end

	align_whole (other: BIG_INTEGER)
			-- used to align the integer parts of the given parameters
		local
			myDotPos, otherDotPos, myWholeLength, otherWholeLength, meNegOffset, otherNegOffset, insPos, numToPad, i: INTEGER
			meNeg, otherNeg: BOOLEAN
			pad: detachable STRING
		do
			myDotPos := item.index_of ('.', 1)
			otherDotPos := other.item.index_of ('.', 1)
			meNeg := item.item (1) = '-'
			otherNeg := other.item.item (1) = '-'
			if myDotPos /= 0 then
				if meNeg then
					meNegOffset := 1
				else
					meNegOffset := 0
				end
				myWholeLength := myDotPos - meNegOffset - 1
			else
				myWholeLength := item.count
			end
			if otherDotPos /= 0 then
				if otherNeg then
					otherNegOffset := 1
				else
					otherNegOffset := 0
				end
				otherWholeLength := otherDotPos - otherNegOffset - 1
			else
				otherWholeLength := other.item.count
			end
			if myWholeLength /= otherWholeLength then
				pad := void
				if myWholeLength < otherWholeLength then
					pad := item
				else
					pad := other.item
				end
				insPos := 1
				if pad.item (1) = '-' then
					insPos := insPos + 1
				end
				numToPad := (myWholeLength - otherWholeLength).abs
				from
					i := 1
				until
					i > numToPad
				loop
					pad.insert_character ('0', insPos)
					i := i + 1
				end
			end
		end

		--	quotient_div alias "/", divide (other: INT): INT

feature {RATIONAL, ES_TEST} -- export to rational

	default_precision: INTEGER = 0
			-- inherited from VALUE

	real_division (other: BIG_INTEGER): DECIMAL
		require
			other_non_zero: other /~ zero
		local
			curr_dec, other_dec, res: DECIMAL
		do
			create curr_dec.make_from_string (out)
			create other_dec.make_from_string (other.out)
			res := curr_dec / other_dec
			Result := res
		end
feature {ANY} -- is_string_int
	is_string_int (s: STRING): BOOLEAN
			-- Is the given string a representation of big integer?
		require
			non_empty: not s.is_empty
		local
			seenDot: BOOLEAN
			i: INTEGER
		do
				-- valid patterns are: [-]?[0-9]+

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
						--					if i = s.count or seenDot then
						--						result := false
						--						i := s.count + 1 -- stop looping
						--					end
						--					seenDot := true
					Result := False
				elseif not s.item (i).is_digit then
					result := false
					i := s.count + 1 -- stop looping
				end
				i := i + 1
			end
		end

invariant
	default_precision = 0
	is_integer

note
	copyright: "Copyright (c) SEL, York University"
	license: "MIT"
	todo: "[
		integer division \\ is veru ineficient. Fpr js algorithm see:
		www.javascripter.net/math/calculators/100digitbigintcalculator.htm
		and {TEST_INT_JSO}t51.
		To generate large random numbers:
		python3
		import random
		random.getrandbits(128) -- 128 bits
	]"

end
