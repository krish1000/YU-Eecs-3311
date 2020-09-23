note
	description: "Summary description for {TEST_NUMERIC_ITERABLE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_NUMERIC_ITERABLE
inherit
	ES_TEST
create
	make
feature
	make
		do
			add_boolean_case (agent t1)
		end
feature --tests
	fcount(s: STRING): INTEGER
		do
			Result := s.count
		end

	t1: BOOLEAN
		local
			sigma: NUMERIC_ITERABLE[STRING]
		do
			comment("t1: test sumf")
			Result :=
				sigma.sumf (<<"abb", "bnmm">>, agent fcount)
				= 7
		end

end
