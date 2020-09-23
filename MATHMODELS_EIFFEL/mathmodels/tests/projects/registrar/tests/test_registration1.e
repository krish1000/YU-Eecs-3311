note
	description: "Summary description for {TEST_REGISTRATION2}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_REGISTRATION1
inherit
	ES_TEST
create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		do
			add_boolean_case (agent t1)
			add_boolean_case (agent t4)
			add_violation_case_with_tag ("no_conflicting_registrations", agent t5)
		end

feature -- tests
registrations: STRING =
"[
	{ s1 -> EECS3311:MON, 16:00 -- 17:30, 
	  s2 -> EECS3342:TUE, 11:30 -- 13:00, 
	  s3 -> EECS3101:FRI, 19:00 -- 22:00, 
	  s3 -> EECS2011:FRI, 13:00 -- 14:30 }
]"
	pair (s: STUDENT; c: COURSE): PAIR[STUDENT, COURSE]
		do
			create Result.make (s, c)
		end

	t1: BOOLEAN
		local
			c1, c2, c3, c4, c5: COURSE
			s1, s2, s3: STUDENT
			a: ARRAY[TUPLE[s:STUDENT; c:COURSE]]
			r : REGISTRATION
			dom: SET[STUDENT]
			ran: SET[COURSE]
			r_conflicted: REL[STUDENT, COURSE]
		do
			comment ("t1: basic features of registrations")

			create c1.make ("EECS3311", 1, "16:00", "17:30")
			create c2.make ("EECS3342", 2, "11:30", "13:00")
			create c3.make ("EECS3101", 5, "19:00", "22:00")
			create c4.make ("EECS2011", 5, "13:00", "14:30")

			create s1.make ("s1")
			create s2.make ("s2")
			create s3.make ("s3")

			a := <<	[s1, c1],
					[s2, c2],
					[s3, c3],
					[s3, c4]
				 >>

			create r
			r.extend_by_array (a)

			Result :=
				r.registrations.out ~ "{ s1 -> EECS3311:MON, 16:00 -- 17:30, s2 -> EECS3342:TUE, 11:30 -- 13:00, s3 -> EECS3101:FRI, 19:00 -- 22:00, s3 -> EECS2011:FRI, 13:00 -- 14:30 }"
			check Result end

			create dom.make_from_array (<<s1, s2, s3>>)


			create ran.make_from_array (<<c1, c2, c3, c4>>)

			Result := r.registrations.domain ~ dom and r.registrations.range ~ ran
			check Result end

			-- course5 and course4 conflict
			create c5.make ("EECS2031", 5, "14:00", "15:30")
			Result := r.conflict (c4, c5)
			check Result end

			r_conflicted := r.registrations.deep_twin
			r_conflicted.extend (pair(s3,c5))
			Result := not r.no_conflicts (r_conflicted)
		end



	t4: BOOLEAN
		local
			c1, c2, c3, c4, c5: COURSE
			s1, s2, s3: STUDENT
			a: ARRAY[TUPLE[s:STUDENT; c:COURSE]]
			r, old_r: REGISTRATION
			dom, dom12, dom3: SET[STUDENT]
			ran1, ran2, ran3: SET[COURSE]
			new_r, new_r2: REL[STUDENT, COURSE]
		do
			comment ("t4: basic features of registrations")

			create c1.make ("EECS3311", 1, "16:00", "17:30")
			create c2.make ("EECS3342", 2, "11:30", "13:00")
			create c3.make ("EECS3101", 5, "19:00", "22:00")
			create c4.make ("EECS2011", 5, "13:00", "14:30")

			create s1.make ("s1")
			create s2.make ("s2")
			create s3.make ("s3")

			a := <<	[s1, c1],
					[s2, c2],
					[s3, c3],
					[s3, c4]
				 >>

			create r
			r.extend_by_array (a)

			create dom.make_from_array (<<s1, s2, s3>>)
			create dom3.make_from_array (<<s3>>)
			dom12 := dom |\ dom3

			create ran1.make_from_array (<<c1>>)
			create ran2.make_from_array (<<c2>>)
			create ran3.make_from_array (<<c3, c4>>)

			Result :=
				r.registrations.out ~ "{ s1 -> EECS3311:MON, 16:00 -- 17:30, s2 -> EECS3342:TUE, 11:30 -- 13:00, s3 -> EECS3101:FRI, 19:00 -- 22:00, s3 -> EECS2011:FRI, 13:00 -- 14:30 }"
			check Result end

			Result :=
				# r.registrations = 4 and
				r.registrations.domain ~ dom and
				r.registrations.range ~ ran1 |\/| ran2 |\/| ran3 and

				r.registrations.image (s1) ~ ran1 and
				r.registrations.image (s2) ~ ran2 and

				r.registrations.image (s3) ~ ran3 and
				# r.registrations.image (s3) = 2 and
				(r.registrations @<  s3   ).range ~ ran3 and
				(r.registrations |<  dom3 ).range ~ ran3 and
				(r.registrations |<< dom12).range ~ ran3
			check Result end

			create new_r.make_from_tuple_array (<<[s3, c2]>>)
			old_r := r.deep_twin
			r.registrations.override (new_r)
			Result :=
				r.registrations ~ (old_r.registrations @<+ [s3, c2]) and then
				r.registrations ~ (old_r.registrations @<< s3) |\/| new_r and then
				# r.registrations = 3 and then
				# r.registrations.image (s3) = 1 and then
				-- notice that after the override, 'c3' and 'c4' are no longered registered for 's3'
				r.registrations.image (s3).has (c2)
			check Result end

			-- course5 and course4 conflict
			create c5.make ("EECS2031", 5, "14:00", "15:30")
			Result := r.conflict (c4, c5)
			check Result end

			-- an empty registration list has no conflicts
			create new_r2.make_empty
			Result := r.no_conflicts (new_r2)
			check Result end

			-- case of different students registering for conflicting courses
			create new_r2.make_from_tuple_array (<<[s1, c4], [s2, c5]>>)
			Result := r.no_conflicts (new_r2)
			check Result end

			-- case of the same student registering for conflicting courses
			create new_r2.make_from_tuple_array (<<[s1, c4], [s1, c5]>>)
			Result := NOT r.no_conflicts (new_r2)
			check Result end
		end

	t5
		local
			c1, c2, c3, c4, c5: COURSE
			s1, s2: STUDENT
			a1: ARRAY[TUPLE[STUDENT, COURSE]]
			r1, r2: REGISTRATION
		do
			comment ("t5: extend by conflicting registrations")

			create s1.make ("s1")
			create s2.make ("s2")

			create c1.make ("EECS3311", 1, "16:00", "17:30")
			create c2.make ("EECS3342", 2, "11:30", "13:00")
			create c3.make ("EECS3101", 5, "19:00", "22:00")
			-- course5 and course4 conflict
			create c4.make ("EECS2011", 5, "13:00", "14:30")
			create c5.make ("EECS2031", 5, "14:00", "15:30")

			a1 := << [s1, c1],
					 [s2, c2],
					 [s1, c3],
					 [s2, c4],
					 [s1, c5]
				  >>
			create r1
			-- this is ok
			r1.extend_by_array (a1)
			check
				r1.registrations ~
					create {REL[STUDENT, COURSE]}.make_from_tuple_array (
						-- the order of pairs does NOT matter for REL equality
						<<	[s2, c4],
					 		[s2, c2],
					 		[s1, c3],
					 		[s1, c1],
					 		[s1, c5]
						>>)
			end

			a1 := << [s1, c1],
					 [s2, c2],
					 [s1, c3],
					 [s2, c4],
					 [s2, c5]
				  >>
			create r2
			-- this is NOT ok
			r2.extend_by_array (a1)
		end
end
