note
	description: "Summary description for {TEST_EHEALTH_SYSTEM}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_EHEALTH_SYSTEM
inherit
	ES_TEST
		redefine setup end
	COMMON_SETUP2
		undefine default_create end
create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		do
			setup
			add_boolean_case (agent t1)
		end

	setup
		do
			common_setup
		end

feature -- tests

	t1: BOOLEAN
		do
			comment ("t1: basic tests of a e-Health system")

			-- initialize an empty e-Health system
			Result :=
				system.patients.is_empty and
				system.medications.is_empty and
				system.di.is_empty and
				system.dpr.is_empty and
				not system.warn and
				system.pr.is_empty
			check Result end

			-- add patients and medications into the system
			system.add_patient (p1)
			system.add_patient (p2)
			system.add_patient (p3)
			system.add_patient (p4)
			system.add_medication (m1)
			system.add_medication (m2)
			system.add_medication (m3)
			system.add_medication (m4)

			-- add a new known interaction
			system.add_interaction (m1, m2)
			Result :=
				system.di.has (create {PAIR[MEDICATION, MEDICATION]}.make_from_tuple ([m1, m2])) and
				system.di.has (create {PAIR[MEDICATION, MEDICATION]}.make_from_tuple ([m2, m1])) and
				system.dpr.is_empty and
				not system.warn and
				system.pr.is_empty
			check Result end

			-- add a new prescription that does not cause a warning
			system.add_to_prescription (p1, m1)
			Result :=
				system.di.has (create {PAIR[MEDICATION, MEDICATION]}.make_from_tuple ([m1, m2])) and
				system.di.has (create {PAIR[MEDICATION, MEDICATION]}.make_from_tuple ([m2, m1])) and
				system.dpr.is_empty and
				not system.warn and
				system.pr.domain.has (p1) and
				system.pr.image (p1).has (m1)
			check Result end

			-- add a new prescription that will cause a warning
			system.add_to_prescription (p1, m2)
			Result :=
				system.di.has (create {PAIR[MEDICATION, MEDICATION]}.make_from_tuple ([m1, m2])) and
				system.di.has (create {PAIR[MEDICATION, MEDICATION]}.make_from_tuple ([m2, m1])) and
				not system.dpr.is_empty and
				system.dpr.domain.has (p1) and
				system.dpr.image (p1).has (create {INTERACTION}.make (m1, m2)) and
				system.dpr.image (p1).has (create {INTERACTION}.make (m2, m1)) and
				system.warn and
				system.pr.domain.has (p1) and
				system.pr.image (p1).has (m1) and
				system.pr.image (p1).has (m2)
			check Result end

			-- remove a prescription that will remove the existing warnings
			system.remove_from_prescription (p1, m1)
			Result :=
				system.di.has (create {PAIR[MEDICATION, MEDICATION]}.make_from_tuple ([m1, m2])) and
				system.di.has (create {PAIR[MEDICATION, MEDICATION]}.make_from_tuple ([m2, m1])) and
				system.dpr.is_empty and
				system.warn and -- warning stays on until the supervisor turns it off
				system.pr.domain.has (p1) and
				not system.pr.image (p1).has (m1) and
				system.pr.image (p1).has (m2)
			check Result end
		end
end
