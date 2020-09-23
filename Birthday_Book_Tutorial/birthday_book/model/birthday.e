note
	description: "Summary description for {BIRTHDAY}."
	author: "Krishaanth"
	date: "$Date$"
	revision: "$Revision$"

class
	BIRTHDAY

inherit
	ANY
		redefine
			is_equal
		end

create
	-- a list of commands that can be used as constructors
	make -- ***NEED TO HAVE THIS UNDER CREATE SO WE CAN CREATE OBJECTS VIA CONSTRUCTORS!!!

feature -- Commands
--Constructor:
make (m: INTEGER; d: INTEGER) -- no shadowing in eiffel, so cannot have same var name
	require -- Precondition: Forbid input values that will cause an invalid instance to be created
			--(i.e, the invariant to fail)
			valid_month: 1 <= m and m <= 12
			valid_day: 1 <= d and d <= 31

			valid_combination:
				(is_month_with_31_days (m) implies 1 <= d and d <= 31)
				and
				(is_month_with_30_days (m) implies 1 <= d and d <= 30)
				and
				(m = 2 implies 1 <= d and d <= 29)
	do
		month := m
		day := d
	ensure
		month_set: month = m
		day_set: day = d
	end

feature -- Attributes
-- ^Java: public void Attributes(){}

month: INTEGER -- Java: int month;
day: INTEGER
-- ^The above is expended type, similiar to Primitive type in Java

feature -- Queries

	is_month_with_31_days (m: INTEGER): BOOLEAN
			--Is `m` a month with 31 days?
			--@returns Boolean
		require -- precondition (valid input constraints)
			valid_month: 1 <= m and m <= 12
		local -- local vars, have it after require always
			months: ARRAY[INTEGER]
		do
			-- alternative 1
		--	Result := (m = 1 or m = 3 or m = 5 or m = 7 or m = 8 or m = 10 or m = 12)
			-- alternative 2
			months := <<1, 3, 5, 7, 8, 10, 12>>
			Result := months.has(m)
		ensure -- postcondition (relationship between inputs and outputs)
			class -- makes the query 'static', no need to create a context obj
				-- query belongs to the class
			-- if and only if:
			correct_result:
				(m = 1 or m = 3 or m = 5 or m = 7 or m = 8 or m = 10 or m = 12) = Result
		end

	is_month_with_30_days (m: INTEGER): BOOLEAN
			--Is `m` a month with 30 days?
			--@returns Boolean
		require -- precondition (valid input constraints)
			valid_month: 1 <= m and m <= 12
		local -- local vars, have it after require always
			months: ARRAY[INTEGER]
		do
			-- alternative 1
		--	Result := (m = 4 or m = 6 or m = 9 or m = 11)
			-- alternative 2
			months := <<4, 6, 9, 11>>
			Result := months.has(m)
		ensure -- postcondition (relationship between inputs and outputs)
			class -- makes the query 'static', no need to create a context obj
				-- query belongs to the class
			-- if and only if:
			correct_result:
				(m = 4 or m = 6 or m = 9 or m = 11) = Result
		end


feature -- Equality

	is_equal (other: like Current): BOOLEAN -- Current is like `this` in java
		-- like ... is called the anchor type
		-- Here other's type anchors the type of Current (BIRTHDAY)
		-- So it's as if we declared: other: BIRTHDAY
		do
			Result := Current.month = other.month and day = other.day
		end

feature -- String Representation

invariant -- class invariant characterizes what a valid BIRTHDAY object is.

	valid_month: 1 <= month and month <= 12
	valid_day: 1 <= day and day <= 31

	valid_combination:
--	(m = 1 or m = 3 or m = 5 or m = 7 or m = 8 or m = 10 or m = 12) implies 1 <= day and day <= 31
	--HIGHEST TO LOWEST PRESDENCE: and -> or -> implies -> =
	(is_month_with_31_days (month) implies 1 <= day and day <= 31)
	and
	(is_month_with_30_days (month) implies 1 <= day and day <= 30)
	and
	(month = 2 implies 1 <= day and day <= 29)
	-- ***MAJOR ERROR THAT HAPPENED:
	-- I forgot to place the brackets above cuz of presedence
	-- due to that I got false when I ran the test case for invalid invariant
	-- Tutorial 9 ^ testcase
	-- Fixed it by ofc placing the brackets due to order of presedence
end
