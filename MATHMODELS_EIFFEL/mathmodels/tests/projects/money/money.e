note
	description: "[
	Efficient value type for handling money objects
		in dollars and cents, with precision 
		and safety in plus and minus operators.
	See end of class for specification.
	]"
	author: "JSO"
	date: "$Date$"
	revision: "$Revision$"

expanded class
	MONEY
inherit
	COMPARABLE
		redefine
			out, is_equal
		end
	INTEGER_OVERFLOW
		redefine is_equal,out end
	DEBUG_OUTPUT
		rename
			debug_output as out
		undefine
			is_equal
		redefine
			out
		end
create
	make,
	make_with_float,
	make_from_int,
	default_create

feature -- public

	cents: INTEGER_64


	amount: FLOAT
			-- float value of `cents'
		do
			Result := cents / 100
		ensure
			Result = cents / 100
		end


feature {NONE} -- Initialization
	make(a_dollars: INTEGER_64; a_cents: INTEGER_64)
			-- make a money object with dollars and cents
		do
			cents := a_dollars*100 + a_cents
		ensure
			cents = a_dollars*100 + a_cents
		end

	make_with_float (a_amount: FLOAT)
			-- make money from a real amount of dollars
			-- rounded to two decimal places
		local
			r: FLOAT
		do
			r := a_amount * 100
			cents := r.rounded
		end

	make_from_int (a_amount: INTEGER_64)
			-- make from an integer amount of cents
		do
			cents := a_amount
		end
feature --compare
	is_equal(other: like Current): BOOLEAN
		do
			Result := cents = other.cents
		end

	is_less alias "<" (other: MONEY): BOOLEAN
			-- Is current money less than `other'?
		do
			Result := cents < other.cents
		end

feature -- effect numeric
	plus alias "+" (other: MONEY): MONEY
			-- Sum with `other' safely
		require
			safe_to_do_plus:
				safe_plus (cents, other.cents)
		local
			l_amount_imp: INTEGER_64
		do
			l_amount_imp := cents + other.cents
			create Result.make_from_int (l_amount_imp)
		ensure
			correct: Result = (create{MONEY}.make_from_int(cents + other.cents))
		end

	minus alias "-" (other: MONEY): MONEY
			-- minus with other safely
		require
			safe_to_do_minus:
				safe_minus (cents, other.cents)
		do
			create Result.make_from_int (- other.cents)
			Result := Current + Result
		ensure
			correct:
				Result = (create{MONEY}.make_from_int(cents - other.cents))
		end

	product alias "*" (arg: FLOAT): MONEY
			-- Product by `arg'
		do
			create Result.make_with_float (amount * arg)
		ensure then
			Result = (create{MONEY}.make_with_float((amount*arg)))
		end

	one: like Current
			-- Neutral element for "*" and "/"
		do
			create Result.make_from_int(1)
		end

	zero: like Current
			-- Neutral element for "+" and "-"
		do
			create Result.make_from_int(0)
		end

	divisible (other: FLOAT): BOOLEAN
			-- May current object be divided by `other'?
		do
			Result := other /= 0.0
		end


	quotient alias "/" (other: FLOAT): MONEY
			-- Division by `other'
		require else
			other /= 0.0
		do
			create Result.make_with_float(amount/other)
		end

	identity alias "+": MONEY
			-- Unary plus
		do
			create Result.make_from_int (cents)
		end

	opposite alias "-": MONEY
			-- Unary minus
		do
			create Result.make_from_int (-cents)
		end


feature -- allocation

	allocated (arg: INTEGER_32): MONEY_ARRAY
			-- Divide by `arg' into equal amounts
		require
			comment("Avoid division by zero and within range")
			arg_positive: arg > 0 and arg <= cents
		local
			base_result: INTEGER_64
			base_money: MONEY
			remainder: INTEGER_64
			one_cent: MONEY
			i: INTEGER_32
		do
			base_result := cents // arg.to_integer_64
			create base_money.make_from_int (base_result)
			create Result.make_filled (base_money, 1, arg)
			remainder := cents - base_result * arg.to_integer_64
			from
				i := 1
				create one_cent.make_from_int (1)
			until
				i.to_integer_64 > remainder
			loop
				Result [i] := Result [i] + one_cent
				i := i + 1
			end
		ensure
			Result.count = arg
			Result.sum = Current
			result_correct:
			across
				1 |..| arg as j
			all
					(j.item <= cents \\ arg implies
						Result [j.item].cents = (cents // arg) + 1)
				and
					(j.item > cents \\ arg implies
						Result [j.item].cents = (cents // arg))
			end
		end

	allocated_by_ratios (ratios: NUM_ARRAY [INTEGER_32]):MONEY_ARRAY
			-- Divide according to `ratios'
		require
			ratios /= Void and then ratios.sum /= ratios.sum.zero
		local
			total: INTEGER_32
			i: INTEGER_32
			remainder: INTEGER_64
			m: MONEY
		do
			total := ratios.sum

			-- distribute current value of `cents' according to `ratios'
			-- while keeping track of remainder to be distributed
			from
				remainder := cents
				create Result.make_filled (m.zero, 1, ratios.count)
				i := ratios.lower
			until
				i > ratios.upper
			loop
				create m.make_from_int (((cents * ratios [i]) / total).floor)
				Result [i] := m
				remainder := remainder - m.cents
				i := i + 1
			end

			-- distribute the remainder from left to right
			from
				i := 1
			until
				i.to_integer_64 > remainder
			loop
				Result [i] := Result [i] + m.one
				i := i + 1
			end
			Result.compare_objects
		ensure
			Result.count = ratios.count
			Result.sum = Current
			result_correct:
			across
					1 |..| ratios.count as j
				all
					Result[j.item].cents = ((cents * ratios [j.item]) / ratios.sum).floor
				  or
				    Result[j.item].cents = ((cents * ratios [j.item]) / ratios.sum).floor + 1
				end
		end

feature -- out

	out: STRING_8
			-- New string containing terse printable representation
			-- of current object
		do
			Result := amount.formatted (2)
		end

	comment(s: STRING): BOOLEAN
		do
			Result := true
		end

invariant
	min: cents.min_value = -9223372036854775808
	max: cents.max_value = 9223372036854775807
	consistent_amount: amount = cents / 100

note
	specification: "[
	Efficient value type for handling money in dollars and cents.
	The class stores money as an INTEGER_64.
		MONEY values are within about 92,000 trillion dollars:
		$92,233,720,368,547,758.07
		Min_value: INTEGER_64 = -9223372036854775808
    	Max_value: INTEGER_64 = 9223372036854775807
    But the API works in terms of dollars and cents.
    Thus create {MONEY}.make(10,966)creates $10.966.
    Addition and subtraction are meaningful with type MONEY x MONEY -> MONEY.
    Addition and subtraction are precise within the stated range,
    	and are protected with preconditions to stay 
    	safely within range without overflows.
    For product, we have only one choice: MONEY x SCALAR -> MONEY
		where scalar can be float or int; we have float.
	For quotient we have MONEY x SCALAR -> MONEY
    	which tells us amount / number_of_people
    	i.e. approximately the amount that each person gets 
    	dividing equally.Protected so that there is no division by zero.
    These signatures satisfy dimensional analysis constraints.
    As an alternative to the imprecise quotient (which can loose pennies),
    	there are pecise allocation queries to divide money
    	into equal amounts without loss.
    Class MONEY uses a new type FLOAT
    	with approximately equal operators.
    	Division and multiplication using float is imprecise.
    Feature 'out' displays money rounded to two decimal points.
	]"
end -- class MONEY

