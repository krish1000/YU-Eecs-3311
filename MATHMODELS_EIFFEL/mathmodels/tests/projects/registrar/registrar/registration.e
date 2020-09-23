note
	description: "Summary description for {REGISTRATION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	REGISTRATION

inherit

	ANY
		redefine
			default_create
		end

feature -- Attributes

	registrations: REL [STUDENT, COURSE]

feature -- Constructor

	default_create
		do
			create registrations.make_empty
		end

feature -- Queries

	MAX_COURSE_LOAD: INTEGER = 3

feature -- Commands for registrations

	extend (s: STUDENT; c: COURSE)
			-- Register student 's' for course 'c'.
		require
			not_registered_yet:
				not registrations.has (pair(s, c))
			no_conflicting_registrations:
				no_conflicts (registrations + pair(s, c))
		do
			registrations.extend (pair(s, c))
		ensure
			registrations ~ old registrations.deep_twin.extended (pair(s, c))
		end

	extend_by_array (a: ARRAY[TUPLE[s: STUDENT; c: COURSE]])
			-- Register the list of students and courses.
		require
			not_registered_yet:
				across a as it all
					not registrations.has (pair(it.item.s, it.item.c))
				end
			no_conflicting_registrations:
				no_conflicts (
					registrations.unioned (
						create {REL[STUDENT, COURSE]}.make_from_tuple_array (a)))
		do
			across
				a as it
			loop
				extend (it.item.s, it.item.c)
			end
		ensure
			registrations ~ old registrations.deep_twin.unioned (
				create {REL[STUDENT, COURSE]}.make_from_tuple_array (a))
		end

	remove (s: STUDENT; c: COURSE)
			-- Unregister student 's' for course 'c'.
		require
			registrations.has (pair(s, c))
		do
			registrations.subtract (pair(s, c))
		ensure
			registrations ~ old registrations.deep_twin.subtracted (pair(s, c))
		end

feature -- Auxiliary functions

	conflict (c1, c2: COURSE): BOOLEAN
			-- Do courses 'c1' and 'c2' conflict with each other?
		do
			Result :=
				    	 (c1.day = c2.day)
				and then (  (c1.start ~ c2.start
				         OR (          c1.start < c2.start
				              and then c1.start + c1.duration >= c2.start)
				         OR (          c2.start < c1.start
				              and then c2.start + c2.duration >= c1.start)) )
		ensure
			Result =
			   (    (c1.day = c2.day)
				and (   (c1.start ~ c2.start
				     OR (     c1.start < c2.start
				          and c1.start + c1.duration >= c2.start)
				     OR (     c2.start < c1.start
				          and c2.start + c2.duration >= c1.start)) ))
		end

	no_conflicts (regs: REL[STUDENT, COURSE]): BOOLEAN
			-- ∀ (s1, c1), (s2, c2) ∈ regs :
			--       c1 ≠ c2 ⋀ s1 = s2 ⇒ ¬(conflict (c1, c2))

		local
			it1, it2: ITERATION_CURSOR[PAIR[STUDENT, COURSE]]
			c1, c2: COURSE
			s1, s2: STUDENT
		do
			Result := TRUE
			from
				it1 := regs.new_cursor
			until
				not Result OR ELSE it1.after
			loop
				from
					it2 := regs.new_cursor
				until
					not Result OR ELSE it2.after
				loop
					s1 := it1.item.first
					c1 := it1.item.second
					s2 := it2.item.first
					c2 := it2.item.second
					if 			 c1 /~ c2
						and then s1 ~ s2
						and then conflict (c1, c2)
					then
						Result := FALSE
					end
					it2.forth
				end
				it1.forth
			end
		ensure
			Result =
				across regs as r1 all
				across regs as r2 all
					      r1.item /~ r2.item
					  and r1.item.first ~ r2.item.first
					IMPLIES
						NOT (conflict (r1.item.second, r2.item.second))
				end end
		end

feature -- Auxiliary functions for contracts

	pair (s: STUDENT; c: COURSE): PAIR[STUDENT, COURSE]
		do
			create Result.make (s, c)
		end

invariant
	max_course_load:
		across registrations as r all
			# registrations.image (r.item.first) <= MAX_COURSE_LOAD
		end
-- ∀ (s1, c1), (s2, c2) ∈ registrations : c1 ≠ c2 ⋀ s1 = s2 ⇒ ¬(conflict (c1, c2))
	no_conflicting_registrations:
		no_conflicts (registrations)
end
