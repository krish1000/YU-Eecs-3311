note
	description: "[
				An arbitrary precision library for decimal numbers. 
				Following the 'General Decimal Arithmetic Specification' of gobo MA_DECIMAL.
				
				Creation
					make_from_string
					make_from_decimal
					make_from_int
					make_from_big_int
					make_from_rational
		
				Queries
					as_big_int: BIG_INTEGER
					as_rational: RATIONAL
					as_real32: REAL_32
					as_real64: REAL_64
					exp alias "^" (power: DECIMAL): DECIMAL
					identity alias "+": DECIMAL
					is_equal (other: DECIMAL): BOOLEAN
					is_greater alias ">" (other: DECIMAL): BOOLEAN
					is_greater_equal alias ">=" (other: DECIMAL): BOOLEAN
					is_integer: BOOLEAN
					is_less alias "<" (other: DECIMAL): BOOLEAN
					is_less_equal alias "<=" (other: DECIMAL): BOOLEAN
					is_natural: BOOLEAN
					is_natural1: BOOLEAN
					is_negative: BOOLEAN
					is_real32: BOOLEAN
					is_real64: BOOLEAN
					max (other: DECIMAL): DECIMAL
					min (other: DECIMAL): DECIMAL
					minus alias "-" (other: DECIMAL): DECIMAL
					one: DECIMAL
					opposite alias "-": DECIMAL
					out: STRING
					plus alias "+" (other: DECIMAL): DECIMAL
					precise_out: STRING
					precise_out_to (digits: INTEGER): STRING
					product alias "*" (other: DECIMAL): DECIMAL
					quotient alias "/" (other: DECIMAL): DECIMAL
					sqrt: DECIMAL
					round_to (digits: INTEGER): DECIMAL
					zero: DECIMAL
		
				Commands
					round (digits: INTEGER)
					set_precision (precision: INTEGER)
	]"
	author: "JSO, DC, and CD"
	date: "$Date$"
	revision: "$Revision$"

class
	DECIMAL

inherit

	COMPARABLE
		redefine
			is_equal,
			default_create,
			out
		end

	DEBUG_OUTPUT
		redefine
			is_equal,
			default_create,
			out
		end

create
	make_from_string, make_from_decimal, make_from_int, default_create, make_from_string_ctx, make_with_precision, make_from_big_int, make_from_rational

convert
	make_from_string ({STRING}),
	make_from_big_int ({BIG_INTEGER}),
	make_from_rational ({RATIONAL}),
	as_real64: {REAL_64},
	as_big_int: {BIG_INTEGER},
	as_rational: {RATIONAL},
	out: {STRING}

feature {NONE} -- constructors

	make_with_precision (a_value: STRING; a_precision: INTEGER)
			-- Make a new decimal from `a_value' with `a_precision
		require
			positive_precision: a_precision > 0
		local
			l_ma_decimal_ctx: MA_DECIMAL_CONTEXT
		do
			create l_ma_decimal_ctx.make (a_precision, 4)
			create ma_decimal.make_from_string_ctx (a_value, l_ma_decimal_ctx)
			ma_decimal_ctx := l_ma_decimal_ctx
			item := decimal_2_value_string
		end

	default_create
			-- create an empty object (it's equivalent to 0)
		local
			empty: STRING
		do
			empty := "0"
			item := empty.twin
			ma_decimal := decimal_setup (item, default_precision + 1)
		ensure then
			item.is_equal ("0")
		end

	make_from_string (s: STRING)
			-- create an object from string 's'
		require
			non_void: s /= void
			non_empty: not s.is_empty
			has_correct_format: ensureValid (s)
		local
			precision: INTEGER
			value: LIST [STRING]
		do
			value := s.split (exponent_char)
			precision := value [1].count
			if precision < (default_precision + value [1].split (decimal_char) [1].count) then
				precision := default_precision + value [1].split (decimal_char) [1].count
			end
			ma_decimal := decimal_setup (s.twin, precision)
			item := decimal_2_value_string
		end

	make_from_int (int: INTEGER)
			-- create a DECIMAL object from integer `m'
		do
			item := int.out
			ma_decimal_ctx := decimal_ctx_for_value
			ma_decimal_ctx.set_digits (item.count + default_precision)
			create ma_decimal.make_from_integer (int)
				--		ma_decimal.set_shared_decimal_context (ma_decimal_ctx)	-- this seems dangerous
		end

	make_from_big_int (big_int: BIG_INTEGER)
			-- Create from `BIG_INTEGER`
		do
			make_from_string (big_int.out)
		end

	make_from_rational (rational: RATIONAL)
			-- Create from `RATIONAL`
		do
			make_from_string (rational.out)
		end

feature -- comparison

	is_equal (other: DECIMAL): BOOLEAN
			-- check whether other is equal to current or not
		do
			Result := ma_decimal.is_equal (other.ma_decimal)
		end

	is_less alias "<" (other: DECIMAL): BOOLEAN
			-- whether current is less than other
		do
			Result := ma_decimal < other.ma_decimal
		end

feature -- operations

	plus alias "+", add (other: DECIMAL): DECIMAL
			-- adds current to other and returns a new object
			-- The new `DECIMAL` will have a precision based on the criteria in `calculate_new_precision`
		local
			l_decimal: MA_DECIMAL
			new_context: MA_DECIMAL_CONTEXT
			digits: INTEGER
		do
			digits := calculate_new_precision (other)
			create new_context.make (digits, default_rounding)
			create l_decimal.make_zero
			l_decimal.set_shared_decimal_context (new_context)
			l_decimal := current.ma_decimal.add (other.ma_decimal, l_decimal.shared_decimal_context)
			create result.make_from_decimal (l_decimal)
		end

	minus alias "-", subtract (other: DECIMAL): DECIMAL
			-- subtracts other from current and returns a new object
			-- The new `DECIMAL` will have a precision based on the criteria in `calculate_new_precision`
		local
			l_decimal: MA_DECIMAL
			new_context: MA_DECIMAL_CONTEXT
			digits: INTEGER
		do
			digits := calculate_new_precision (other)
			create new_context.make (digits, default_rounding)
			create l_decimal.make_zero
			l_decimal.set_shared_decimal_context (new_context)
			l_decimal := current.ma_decimal.subtract (other.ma_decimal, l_decimal.shared_decimal_context)
			create result.make_from_decimal (l_decimal)
		end

	product alias "*", multiply (other: DECIMAL): DECIMAL
			-- multiplies current by other and returns a new object
			-- The new `DECIMAL` will have a precision based on the criteria in `calculate_new_precision`
		local
			l_decimal: MA_DECIMAL
			new_context: MA_DECIMAL_CONTEXT
			digits: INTEGER
		do
			digits := calculate_new_precision (other)
			create new_context.make (digits, default_rounding)
			create l_decimal.make_zero
			l_decimal.set_shared_decimal_context (new_context)
			l_decimal := current.ma_decimal.multiply (other.ma_decimal, l_decimal.shared_decimal_context)
			create result.make_from_decimal (l_decimal)
		end

	quotient alias "/", divide (other: DECIMAL): DECIMAL
			-- divides current by other and returns a new object
			-- The new `DECIMAL` will have a precision based on the criteria in `calculate_new_precision`
		require
			other_non_zero: other /~ zero
		local
			l_decimal: MA_DECIMAL
			new_context: MA_DECIMAL_CONTEXT
			digits: INTEGER
		do
			digits := calculate_new_precision (other)
			create new_context.make (digits, default_rounding)
			create l_decimal.make_zero
			l_decimal.set_shared_decimal_context (new_context)
			l_decimal := current.ma_decimal.divide (other.ma_decimal, l_decimal.shared_decimal_context)
			create result.make_from_decimal (l_decimal)
		end

	sqrt: DECIMAL
			-- calculates square root for this instance
		require
			non_negative: not is_negative
		local
			l_epsilon: DECIMAL
			l_root: DECIMAL
		do
			l_epsilon := epsilon
			if out ~ zero.out then
				result := zero -- handle zero case separately
			else
				from
					l_root := clone_me
				until
					((l_root - (current / l_root)).absolute <= epsilon * l_root)
				loop
					l_root := ((current / l_root) + l_root) / create {DECIMAL}.make_from_string ("2.0")
				end
				result := l_root
			end
		end

	exp alias "^", exponent, power (p: DECIMAL): DECIMAL
			-- calculates the value of current instance raised to 'power' (capped to 500 digits of precision)
		require
			is_exponentiable: exponentiable (p)
		do
			if p.is_integer then -- use either real_exp or integer_exp
				result := integer_exp (current, p.ma_decimal.to_integer.abs)
			else
				result := real_exp (current, p.absolute)
			end
			if p.is_negative then
				result := one / result
			end
		end

	negate
			-- negates `Current`
		local
			l_decimal: MA_DECIMAL
		do
			l_decimal := ma_decimal.opposite
			current.make_from_decimal (l_decimal)
		end

	absolute: DECIMAL
			-- returns the absoulte value of `Current`
		do
			create result.make_from_decimal (ma_decimal.abs)
		end

	floor: DECIMAL
			-- Returns the greatest integer less than or equal to `Current`
		local
			curr_abs: DECIMAL
			floored_absolute: DECIMAL
		do
			curr_abs := Current.absolute
			create floored_absolute.make_from_string (curr_abs.value_precise_out.split (decimal_char) [1])
			if is_integer then
				Result := Current.twin
			else
				if is_negative then
					floored_absolute.negate
					Result := floored_absolute - "1"
				else
					Result := floored_absolute
				end
			end
		end

	ceiling: DECIMAL
			-- Returns the smallest integer greater than or equal to `Current`
		local
			curr_abs: DECIMAL
			floored_absolute: DECIMAL
		do
			curr_abs := Current.absolute
			create floored_absolute.make_from_string (curr_abs.value_precise_out.split (decimal_char) [1])
			if is_integer then
				Result := Current.twin
			else
				if is_negative then
					floored_absolute.negate
					Result := floored_absolute
				else
					Result := floored_absolute + "1"
				end
			end
		end

feature -- conversion

	as_real32: REAL_32
			-- represent as a `REAL_32`
		require
			valid_real32: is_real32
		do
			result := item.to_real_32
		end

	as_real64: REAL_64
			-- represent as a `REAL_64`
		require
			valid_real64: is_real64
		do
			result := ma_decimal.to_double
		end

	as_big_int: BIG_INTEGER
			-- Represent as BIG_INTEGER
		require
			is_integer: is_integer
		do
			create Result.make_from_string (item)
		end

	as_rational: RATIONAL
			-- Represent as RATIONAL
		do
			create Result.make_from_string (item)
		end

feature -- queries

	opposite alias "-": DECIMAL
			-- unary minus
		do
			create result.make_from_decimal (ma_decimal.opposite)
		end

	identity alias "+": DECIMAL
			-- unary plus
		do
			create result.make_from_decimal (ma_decimal)
		end

	is_natural: BOOLEAN
			-- Is `Current` an Natural number?
		do
			result := is_integer and current >= zero
		end

	is_natural1: BOOLEAN
			-- Is `Current` an Natural1 number?
		do
			result := is_integer and current >= one
		end

	is_integer: BOOLEAN
			-- Is `Current` an integer number?
		do
			result := ma_decimal.is_integer
		end

	is_real32: BOOLEAN
		local
			correct_length, in_range: BOOLEAN
			upper, lower: DECIMAL
		do
			create upper.make_from_string ("-3.4")
			create lower.make_from_string ("3.4")
			upper := upper * (create {DECIMAL}.make_from_string ("10")).exp ("38")
			lower := lower * (create {DECIMAL}.make_from_string ("10")).exp ("38")
			correct_length := item.count <= 7
			in_range := Current > create {DECIMAL}.make_from_string ("-3.4")
		end

	is_real64: BOOLEAN
			-- Is `Current` a double?
		do
			result := ma_decimal.is_double
		end

	is_negative: BOOLEAN
			-- Is `Current` less than or equal to zero?
		do
			result := ma_decimal.is_negative and current /~ zero
		end

	debug_output: STRING
		do
			Result := out
		end

	out: STRING
			-- return a representation of the number rounded to two decimal places
		do
			Result := value_out
		end

	precise_out: STRING
			-- return precise representation of the number
		do
			Result := value_precise_out
		end

	zero: DECIMAL
			-- neutral element for "+" and "-"
		do
			create result.make_from_string ("0")
		end

	one: DECIMAL
			-- neutral element for "*" and "/"
		do
			create result.make_from_string ("1")
		end

	divisible (other: DECIMAL): BOOLEAN
			-- may current object be divided by `other'?
		do
			result := not other.is_equal (zero)
		end

	exponentiable (other: DECIMAL): BOOLEAN
			-- may current object be elevated to the power `other'?
		do
			result := true
		end

feature -- rounding

	round_to (digits: INTEGER): DECIMAL
			-- Returns a decimal that is the current value rounded to the specified 'digits' number of decimal places
			-- Uses default strategy as set in ma_decimal_ctx (half up)
		require
			positive_digits: digits >= 0
		local
			l_decimal_ctx: MA_DECIMAL_CONTEXT
			decimal_left: INTEGER
			decimal_left_int: BIG_INTEGER
		do
			decimal_left := value_precise_out.split (decimal_char) [1].count
				-- Don't count negative sign as a digit
			if is_negative then
				decimal_left := decimal_left - 1
			end
				--			-- Don't count left padded zero as a digit
			decimal_left_int := value_precise_out.split (decimal_char) [1]
			if decimal_left_int ~ "0" then
				decimal_left := 0
			end
			if digits + decimal_left <= 0 then
				decimal_left := 1
			end
			create l_decimal_ctx.make (decimal_left + digits, ma_decimal_ctx.rounding_mode)
			create result.make_from_decimal (create {MA_DECIMAL}.make_from_string_ctx (item, l_decimal_ctx))
		end

	round (digits: INTEGER)
			-- rounds this instance to the specified `digits` number of decimal places
		require
			positive_digits: digits >= 0
		local
			l_decimal_ctx: MA_DECIMAL_CONTEXT
			decimal_left: INTEGER
		do
			decimal_left := value_precise_out.split (decimal_char) [1].count
			if is_negative then
				decimal_left := decimal_left - 1
			end
			if (value_precise_out.split (decimal_char) [1] [1]).out ~ "0" or (is_negative and then (value_precise_out.split (decimal_char) [1] [2]).out ~ "0") then
				decimal_left := decimal_left - 1
			end
			create l_decimal_ctx.make (decimal_left + digits, ma_decimal_ctx.rounding_mode)
			current.make_from_decimal (create {MA_DECIMAL}.make_from_string_ctx (item, l_decimal_ctx))
		end

	precise_out_to (digits: INTEGER): STRING
			-- returns the precise string representation to rounded to the specified 'digits' number of decimal places
		require
			positive_digits: digits >= 0
		local
			digit_list: LIST [STRING]
			decimal_left: STRING
			decimal_right: STRING
			rounded_up: INTEGER
			l_decimal, unrounded_dec, rounded_dec, carry_dec: DECIMAL
			zero_pad: STRING
		do
			create result.make_empty
			l_decimal := round_to (digits)
			digit_list := l_decimal.precise_out.split (decimal_char)
			decimal_left := digit_list [1]
			result.append (decimal_left)
			result.append (create {STRING}.make_filled (decimal_char, 1))
			if digit_list.count > 1 then
				decimal_right := digit_list [2]
				if decimal_right.count < digits then
					create zero_pad.make_filled ('0', digits - decimal_right.count)
					result.append (decimal_right)
					result.append (zero_pad)
				else
					result.append (decimal_right.substring (1, digits)) -- add on the rest of the digits
						-- now check if we need to do an additional round (Standard half-up rounding)
					if decimal_right.count > digits and then decimal_right.substring (digits + 1, digits + 1).to_integer >= 5 then
						rounded_up := decimal_right.substring (digits, digits).to_integer + 1
						if rounded_up < 10 then
							result.remove_tail (1)
							result.append_integer (rounded_up)
						else
								-- need to perform decimal addition to account for carry
							unrounded_dec := result
							create zero_pad.make_filled ('0', digits - 1)
							zero_pad.prepend ("0.")
							zero_pad.append ("1")
							carry_dec := zero_pad
							rounded_dec := unrounded_dec + carry_dec
							create result.make_from_string (rounded_dec.out)
						end
					end
				end
			else
				create zero_pad.make_filled ('0', digits)
				result.append (zero_pad)
			end
		end

	set_precision (precision: INTEGER)
			-- sets the precision of `Current` for future operations
		require
			precision_positive: precision > 0
		local
			l_decimal_ctx: MA_DECIMAL_CONTEXT
		do
			create l_decimal_ctx.make (precision, ma_decimal_ctx.rounding_mode)
			create ma_decimal.make_from_string_ctx (item, l_decimal_ctx)
			ma_decimal_ctx := l_decimal_ctx
			ma_decimal.set_shared_decimal_context (l_decimal_ctx)
			item := decimal_2_value_string
		end

	reset_precision
			-- resets the precision of `Current` for future operations to `default_precision`
		local
			l_decimal_ctx: MA_DECIMAL_CONTEXT
		do
			create l_decimal_ctx.make (default_precision, ma_decimal_ctx.rounding_mode)
			create ma_decimal.make_from_string_ctx (item, l_decimal_ctx)
			ma_decimal_ctx := l_decimal_ctx
			ma_decimal.set_shared_decimal_context (l_decimal_ctx)
			item := decimal_2_value_string
		end

	get_precision: INTEGER
			-- returns the current number of digits being kept by the number
		do
			Result := ma_decimal_ctx.digits.twin
		end

feature {DECIMAL} -- private fields

	item: STRING -- String representation of the number

	default_precision: INTEGER = 36
			-- the minimum accuracy of division results;
			-- division results will be accurate to AT LEAST this many digits.

	default_rounding: INTEGER = 4
			-- Use half-round-up rounding

	epsilon: STRING = "0.000000000000001"
			-- for root computation

	decimal_char: CHARACTER = '.'

	exponent_char: CHARACTER = 'E'

	ma_decimal_ctx: MA_DECIMAL_CONTEXT -- underlying implementation

	ma_decimal: MA_DECIMAL -- ma_decimal is the underlying implementation

	make_from_decimal (decimal: MA_DECIMAL)
			-- create DECIMAL_WRAPPER from MA_DECIMAL
		do
			create ma_decimal.make_copy (decimal)
			ma_decimal_ctx := ma_decimal.shared_decimal_context
			item := decimal_2_value_string
		end

	decimal_ctx_for_value: MA_DECIMAL_CONTEXT
			-- create MA_DECIMAL_CONTEXT configured according to VALUE
		do
			create result.make (default_precision, default_rounding)
		end

	decimal_setup (s: STRING; dv: INTEGER): MA_DECIMAL
			-- create new MA_DECIMAL object from value "s" with precision "dv"
		require
			non_void: s /= void
			non_empty: not s.is_empty
			has_correct_format: ensureValid (s)
		do
			ma_decimal_ctx := decimal_ctx_for_value
			ma_decimal_ctx.set_digits (dv)
			create result.make_from_string_ctx (s, ma_decimal_ctx)
			result.set_shared_decimal_context (ma_decimal_ctx) -- This seems dangerous
		end

	clone_me: DECIMAL
		local
			l_s: STRING
		do
			create l_s.make_from_string (item)
			create result.make_from_decimal (ma_decimal)
		end

	decimal_2_value_string: STRING
			-- converts scientific_notation to value.precise_out
			-- *should be deprecated once MA_DECIMAL allows precise string representation
		local
			str_list: LIST [STRING]
			coefficient_list: LIST [STRING]
			decimal_left: STRING
			decimal_right: STRING
			coefficients: STRING
			zero_pad: STRING
			l_exponent: STRING
			pad_count: INTEGER
			int_exponent: INTEGER
			decimal_count: INTEGER
			index: INTEGER
		do
			if ma_decimal.is_zero then
				result := "0"
			else
				str_list := ma_decimal.to_scientific_string.split (exponent_char)
				coefficients := str_list [1]
				create result.make_empty
				if str_list.count > 1 then
					l_exponent := str_list [2]
					int_exponent := l_exponent.to_integer
					coefficient_list := coefficients.split (decimal_char)
					if coefficient_list.count > 1 then
						decimal_count := coefficient_list [2].count
					else
						decimal_count := 0
					end
					if int_exponent.abs >= decimal_count then
						result.append (coefficient_list [1])
						if decimal_count > 0 then
							result.append (coefficient_list [2])
						end
						create zero_pad.make_empty
						if int_exponent > 0 then
							zero_pad.make_filled ('0', int_exponent - decimal_count)
							result.append (zero_pad)
						else
							zero_pad.make_filled ('0', int_exponent.abs - 1)
							result.prepend (zero_pad)
							result.prepend ("0.")
						end
							-- Need to add in an additional case for negative exponents
					elseif int_exponent < 0 then
						result.append ("0")
						result.append (create {STRING}.make_filled (decimal_char, 1))
						pad_count := int_exponent.abs - coefficient_list [1].count
						create zero_pad.make_filled ('0', pad_count)
						result.append (zero_pad)
						result.append (coefficient_list [1])
						result.append (coefficient_list [2])
					else
						if int_exponent = 0 then
							result := coefficients
						else
							decimal_left := coefficient_list [2].substring (1, int_exponent)
							decimal_right := coefficient_list [2].substring (int_exponent, decimal_count)
							result.append (coefficient_list [1])
							result.append (decimal_left)
							result.append (create {STRING}.make_filled (decimal_char, 1))
							result.append (decimal_right)
						end
					end
				else
					coefficient_list := coefficients.split (decimal_char) -- to_scientific_string from MA_DECIMAL is not always accurate
					if coefficient_list.count > 1 and then zero.is_equal (create {DECIMAL}.make_from_string (coefficient_list [2])) then
						result := coefficient_list [1]
					else
						result := coefficients
					end
				end
				if result.has (decimal_char) then -- remove unnecessary zeros at the end (if decimal exists)
					from
						index := result.count
					until
						not (result.at (index) ~ '0')
					loop
						index := index - 1
						result := result.substring (1, index)
					end
				end
			end
		end

	value_precise_out: STRING
			-- Precise string representation of object
		do
			result := item.twin
		end

	value_out: STRING
			-- String representation of object upto 2 decimal places
		do
			result := precise_out_to (2)
		end

	ensureValid (s: STRING): BOOLEAN
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
				elseif s.item (i) = decimal_char then
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

	integer_exp (val: DECIMAL; p: INTEGER): DECIMAL
			-- recursively calculate 'val' to positive integer power 'power'
			-- Fast exponentiation, capped to 500 digits of precision
		local
			square: DECIMAL
		do
			if p = 0 then
				result := "1"
			else
				square := val * val
				square.set_precision (500)
				result := integer_exp (square, p // 2)
				if p \\ 2 = 1 then
					result := result * val
				end
			end
			Result.set_precision (500)
		end

	real_exp (val: DECIMAL; p: DECIMAL): DECIMAL
			-- recursively calculate 'val' to real power 'power'
			-- Fast exponentiation until power < 1. Then binary search on fractional exponent
			-- Capped to 500 decimals of precision
		local
			temp: DECIMAL
			low: DECIMAL
			high: DECIMAL
			mid: DECIMAL
			l_root: DECIMAL
			acc: DECIMAL
			two: DECIMAL
		do
			two := create {DECIMAL}.make_from_string ("2.0")
			if p >= one then
				temp := real_exp (val, p / two)
				temp.set_precision (500)
				result := temp * temp
			else
				from
					low := zero
					high := one
					l_root := val.sqrt
					acc := l_root
					mid := high / two;
				until
					((mid - p).absolute <= epsilon)
				loop
					l_root := l_root.sqrt
					if mid <= p then
						low := mid
						acc := acc * l_root
					else
						high := mid
						acc := acc * (one / l_root)
					end
					mid := (low + high) / two
				end
				result := acc
			end
			result.set_precision (500)
		end

	make_from_string_ctx (value_string: STRING; ctx: MA_DECIMAL_CONTEXT)
			-- Make a new decimal from `value_string' relative to `ctx'
		do
			create ma_decimal.make_from_string_ctx (value_string, ctx)
			ma_decimal_ctx := ctx
			item := decimal_2_value_string
		end

	calculate_new_precision (other: DECIMAL): INTEGER
			-- Used in primary operations to calculate new precision
			-- The new precision is the largest value of: `Current`, `other`, `default_precision`,
			-- or the sum of `Current`'s precision + `other`'s precision.
		local
			curr_dig, other_dig, str_digs, digits: INTEGER
			curr_string, other_string: STRING
		do
			curr_string := current.precise_out
			other_string := other.precise_out
			curr_dig := curr_string.count
			other_dig := other_string.count
			str_digs := curr_dig + other_dig
			digits := default_precision
			if digits < ma_decimal_ctx.digits then
				digits := ma_decimal_ctx.digits
			end
			if digits < other.ma_decimal_ctx.digits then
				digits := other.ma_decimal_ctx.digits
			end
			if digits < str_digs then
				digits := str_digs
			end
			Result := digits
		end

invariant
	consistent_rounding: default_rounding = {MA_DECIMAL_CONTEXT}.round_half_up

note
	info: "[
		 For an oracle see http://delaneyrm.com/MPCalcRB.html.
		 
		 test: BOOLEAN
			local
				d1, d2, d3, d4, d5, d6: DECIMAL
				r64: REAL_64
				i: INTEGER
				r: RATIONAL
			do
				comment ("test: Mortgage Calculation in `REAL_64` vs `DECIMAL`")
				-- floating point arithmetic cannot distinguish
				-- between 0.4 and 0.40000000000000002
				r64 := 0.1 + 0.3
				Result := r64 = 0.4 and r64 = 0.40000000000000002
				check Result end
				-- decimal arithmetic can
				d1 := "0.1" ; d2 := "0.3"
				d3 := d1 + d2
				Result := d3 ~ "0.4"and d3 /~ "0.40000000000000002"
				check Result end
				assert_equal ("precise_out test", "0.4", d3.precise_out)
				assert_equal ("out test1", "0.40", d3.out)
				r64 := 100000*(1+0.05/12)^360
				Result := r64 = 446774.43140061089
				check Result end
				d1 := "100000" d2 := "0.05"; d3 := "12"; d4 := "360"
				d2.set_precision(120)
				d5 := d1 * (d1.one + d2/d3)^d4
				Result := d5.precise_out.starts_with ("446774.431400613221242807011041301589597772674487270698002439224547330881614835011308578390042190134313238565062087470576")
				check Result end
				assert_equal ("out test2", "446774.43", d5.out)
				d6 := d5 - "446774.43140061089"
				Result := d6.precise_out.starts_with ("0.000000002331242807011041301589597772674487270698002439224547330881614835011308578390042190134313238565062087470576")
				check
					 Result
				end
			end
	]"

end
