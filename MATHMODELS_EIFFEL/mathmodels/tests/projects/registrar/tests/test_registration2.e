note
	description: "Summary description for {TEST_REGISTRATION2}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_REGISTRATION2
inherit
	ES_TEST
	redefine
			setup
		end


create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		do
			setup

			add_boolean_case (agent t0)
			add_boolean_case (agent t1)
			add_violation_case_with_tag ("max_course_load", agent t2)
			add_violation_case_with_tag ("no_conflicting_registrations", agent t3)
		end

feature -- common setup

	c1, c2, c3, c4, c5 : COURSE
	s1, s2, s3 : STUDENT
	reg : REGISTRATION

	setup
		do
			create s1.make ("s1")
			create s2.make ("s2")
			create s3.make ("s3")

			-- only c1 and c3 conflict

			-- EECS3311: 16:00 to 17:30, Monday and Wednesdays
			create c1.make ("EECS3311", 1, "16:00", "17:30")

			-- EECS3342: 11:30 to 13:00, Tuesdays and Thursdays
			create c2.make ("EECS3342", 2, "11:30", "13:00")

			-- EECS3101: 15:00 to 16:30, Mondays and Wednesdays
			create c3.make ("EECS3191", 1, "15:00", "16:30")

			-- EECS3221: 19:00 to 22:00, Mondays
			create c4.make ("EECS3221", 1, "19:00", "22:00")

			-- EECS3401: 19:00 to 22:00, Tuesdays
			create c5.make ("EECS3401", 3, "19:00", "22:00")

			create reg
		end

feature -- tests

	t0 : BOOLEAN
		do
			comment ("t0: test sessions conflict")

			-- case: sessions on different days
			Result := NOT reg.conflict (
				create {COURSE}.make ("C1", 1, "19:00", "22:00"),
				create {COURSE}.make ("C2", 2, "19:00", "22:00"))
			check Result end

			-- case: sessions on the same day but non-overlapping
			Result := NOT reg.conflict (
				create {COURSE}.make ("C1", 2, "15:59", "18:59"),
				create {COURSE}.make ("C2", 2, "19:00", "22:00"))
			check Result end

			-- case: sessions overlap, left has smaller start time
			Result := reg.conflict (
				create {COURSE}.make ("C1", 2, "16:00", "19:00"),
				create {COURSE}.make ("C2", 2, "19:00", "22:00"))
			check Result end

			-- case: sessions overlap, right has smaller start time
			Result := reg.conflict (
				create {COURSE}.make ("C1", 2, "19:00", "22:00"),
				create {COURSE}.make ("C2", 2, "16:00", "19:00"))

			-- case: sessions overlap, same start time
			Result := reg.conflict (
				create {COURSE}.make ("C1", 2, "19:00", "20:00"),
				create {COURSE}.make ("C2", 2, "19:00", "22:00"))
			check Result end
		end

	t1 : BOOLEAN
		local
			set1, set12, set23, set3: SET[COURSE]
		do
			comment ("t1: basic tests on registrar")
			reg.extend (s1, c1)
			create set1.make_from_array (<<c1>>)
			Result :=
				# reg.registrations = 1 and then
				reg.registrations.image (s1) ~ set1
			check Result end

			reg.extend (s1, c2)
			create set12.make_from_array (<<c1, c2>>)
			Result :=
				# reg.registrations = 2 and then
				reg.registrations.image (s1) ~ set12
			check Result end

			reg.extend (s2, c3)
			create set3.make_from_array (<<c3>>)
			Result :=
				# reg.registrations = 3 and then
				reg.registrations.image (s2) ~ set3
			check Result end

			reg.extend (s2, c2)
			create set23.make_from_array (<<c3, c2>>)
			Result :=
				# reg.registrations = 4 and then
				reg.registrations.image (s2) ~ set23
			check Result end
		end

	t2
		do
			comment ("t2: test max course load")
			reg.extend (s1, c1)
			reg.extend (s1, c2)
			reg.extend (s1, c4)
			reg.extend (s1, c5)
		end

	t3
		do
			comment ("t3: test conflicting courses")
			reg.extend (s1, c1)
			reg.extend (s1, c3)
		end

end
