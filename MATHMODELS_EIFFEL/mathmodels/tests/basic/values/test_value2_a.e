note
	description: "Summary description for {TEST_VALUE2}."
	author: ""
	date: "$Date: 2010-12-13 16:07:07 -0500 (Mon, 13 Dec 2010) $"
	revision: "$Revision$"

class
	TEST_VALUE2_A
inherit
	ES_TEST
		redefine
			teardown
		end

create
	make

feature {NONE} -- Initialization

	teardown
		local
			v: VALUE
		do
			v := "0.0"
			v.set_epsilon("0.0")
		end

	make
			-- Initialization for `Current'.
		do
			add_boolean_case (agent t1)
			add_boolean_case (agent t2)
			add_boolean_case (agent t3)
			add_boolean_case (agent t4)
		end

feature -- Tests

	t1: BOOLEAN
		local v1,v2,v3: VALUE
		do
			comment("t1: test addition and equality for default VALUE2")
			create v1.make_from_string ("0.00")
			check v1.epsilon_singleton.epsilon = "0.0" end
			v1 := "2.0"
			v2 := "2.1"
			v3 := "4.1"
			Result := v1 = "2.0"
			check Result end
			Result := (v1 + v2) |~ v3 and v1.epsilon_singleton.epsilon = "0.0"
		end

	t2: BOOLEAN
		local v1,v2,v3,v4, v5: VALUE
		do
			comment("t2: test equality and inequality with epsilon 0.001")
			v1 := "2.0";
			v1.set_epsilon ("0.001")
			check v1.epsilon_singleton.epsilon = "0.001" end
			v2 := "2.1"
			v3 := "4.1"
			v4 := "4.11"
			v5 := "4.101"
			Result := (v1 + v2) |~ v3 and v1.epsilon_singleton.epsilon /= "0.0"
			check Result end
			Result :=   (v1 + v2) |/~ v4
			check Result end
			Result := (v1 + v2) |~ v5
			check Result end
			Result := (v1 |< v2) and not (v1 |< v1) and (v5 |< v4)
		end

	t3: BOOLEAN
		local v1,v2,v3,v4, v5: VALUE
		do
			comment("t3: same as t2 but with epsilon at default 0.0")
			v1 := "2.0"; v1.set_epsilon ("0.001")
			v2 := "2.1"
			v3 := "4.1"
			v4 := "4.11"
			v5 := "4.101"
			Result := (v1 + v2) |~ v3 and v1.epsilon_singleton.epsilon /= "0.0"
			check Result end
			Result :=   (v1 + v2) |/~ v4
			check Result end
			Result := (v1 + v2) |~ v5
			check Result end
			Result := (v1 |< v2) and not (v1 |< v1) and (v5 |< v4)
		end

	t4: BOOLEAN
		local
			v1, v3 : VALUE
		do
			comment("t4: 0.1+.1+.1 = 0.3")
			v1 := "0.1"
			v3 := "0.3"
			Result := v1 + v1 + v1 = v3
		end
end
