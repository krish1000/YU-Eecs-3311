note
	description: "[
					Testing suite for the RATIONAL class covering the operation capabilities
					on very large numbers.
				  ]"
	author: "JSO & CD"
	date: "June 6 2019"
	revision: "1.00"

class
	RATIONAL_LONG_TEST
inherit
	ES_TEST

create
	make

feature {NONE} -- Initialization

	make
		do
			add_boolean_case (agent t1)
			add_boolean_case (agent t2)
			add_boolean_case (agent t3)
			add_boolean_case (agent t4)
		end
feature -- Tests

	t1: BOOLEAN
		local
			r1, r2: RATIONAL
		do
			comment ("t1: Addition - Large Integers")

			create r1.make_from_string ("123456789123456789111111.131313")
			create r2.make_from_string ("98798798798798798799879879879879879879.979797")
			Result := r1 + r2 ~ "98798798798798922256669003336668990991.11111"
			check Result end
		end

	t2: BOOLEAN
		local
			r1, r2: RATIONAL
		do
			comment ("t2: Subtraction - Large Integers")

			create r1.make_from_string ("123456789123456789111111.55555")
			create r2.make_from_string ("98798798798798798799879879879879879879.555551")
			Result := r2 - r1 ~ "98798798798798675343090756423090768768.000001"
			check Result end
		end

	t3: BOOLEAN
		local
			r1, r2: RATIONAL
		do
			comment ("t3: Multiplication - Large Integers")

			create r1.make_from_string ("123456789123456789.111111")
			create r2.make_from_string ("9879879879879879879987987.9879879879879")
			Result := r2 * r1 ~ "1219738246895413922462461364589923256469617.7539900381864235569"
			check Result end
		end

	t4: BOOLEAN
		local
			r1, r2: RATIONAL
		do
			comment ("t13: Division - Large Integers")

			create r1.make_from_string ("111111111111111111.11111")
			create r2.make_from_string ("222222222222222222.22222")
			Result := r2 // r1 ~ "2/1"
			check Result end
		end
end
