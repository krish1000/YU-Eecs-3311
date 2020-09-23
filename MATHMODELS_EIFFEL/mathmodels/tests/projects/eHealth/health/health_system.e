note
	description: "An electronic health (e-Health) system."
	author: "Jackie Wang"

class
	HEALTH_SYSTEM
create
	make

feature -- Constructor

	make
			-- Initialize an empty system.
		do
			create patients.make_empty
			create medications.make_empty
			create pr.make_empty
			create di.make_empty
			create dpr.make_empty
			warn := FALSE
		ensure
			patients.is_empty
			medications.is_empty
			pr.is_empty
			di.is_empty
			dpr.is_empty
			not warn
		end

feature -- State Attributes

	patients: SET[PATIENT]
		-- set of patients

	medications: SET[MEDICATION]
		-- set of medications

	pr: REL[PATIENT, MEDICATION]
		-- prescriptions

	di:REL[MEDICATION, MEDICATION]
		-- dangerous interactions

	dpr: REL[PATIENT, INTERACTION]
		-- dangerous prescriptions report

	warn: BOOLEAN
		-- warning signal for the system supervisor

feature -- Commands

	add_patient (p: PATIENT)
			-- Add patient 'p' into the system.
		require
			p /= Void and then not patients.has (p)
		do
			patients.extend (p)
		ensure
			patients.count = old patients.count + 1
			patients ~ (old patients.deep_twin).extended (p)
		end

	add_medication (m: MEDICATION)
			-- Add medication 'm' into the system.
		require
			m /= Void and then not medications.has (m)
		do
			medications.extend (m)
		ensure
			medications.count = old medications.count + 1
			medications ~ (old medications.deep_twin).extended (m)
		end

	add_interaction (m1, m2: MEDICATION)
			-- Add an interaction between 'm1' and 'm2'.
		require
			m1 /= Void and then m2 /= Void
			m1 /= m2
		local
			rs: SET[MEDICATION]
			p: PATIENT
		do
			-- update to di
			di.extend (mm ([m1, m2]))
			di.extend (mm ([m2, m1]))

			-- update to dpr
			across
				pr as c
			loop
				p := c.item.first
				rs := pr.image (p)

				if rs.has (m1) and rs.has (m2) then
					dpr.extend (pi ([p, m1 |-> m2]))
					dpr.extend (pi ([p, m2 |-> m1]))

					-- update to warn
					warn := true
				end
			end
		ensure
			dangerous_interactions_extended:
				di ~ (old di.deep_twin).extended (mm ([m1, m2])).extended (mm ([m2, m1]))
		end

	add_to_prescription (p1: PATIENT; m1: MEDICATION)
			-- Add a prescription of 'm1' to 'p1'.
		require
			p1 /= Void and m1 /= Void
		local
			p: PATIENT
			m2: MEDICATION
		do
			-- update to pr
			pr.extend (pm ([p1, m1]))

			-- update to dpr
			across
				pr as c
			loop
				p := c.item.first
				m2 := c.item.second

				if di.has (mm ([m1, m2])) then
					dpr.extend (pi ([p, m1 |-> m2]))
					dpr.extend (pi ([p, m2 |-> m1]))

					-- update to warn
					warn := true
				end
			end
		ensure
			interactions_stay_intact:
				di ~ old di.deep_twin

			prescriptions_extended:
				pr ~ (old pr.deep_twin).extended (pm ([p1, m1]))

			dangerous_prescriptions_report_updated:
				across patients as patient 	all
				across medications as med_1 all
				across medications as med_2 all
					dpr.has (pi ([patient.item, med_1.item |-> med_2.item]))
					=
					((old dpr.deep_twin).has (pi ([patient.item, med_1.item |-> med_2.item])) or else

						(p1 ~ patient.item and
						 across medications as med some
							di.has (mm ([med.item, m1])) and
							pr.has (pm ([p1, med.item])) and
							pr.has (pm ([p1, m1])) and

							( m1 |-> med.item ~
								med_1.item |-> med_2.item OR ELSE
							  m1 |-> med.item ~
							    med_2.item |-> med_1.item
							)
						 end))
				end
				end
				end

			warning_for_supervisor_reset:
				warn =
				across (old pr.deep_twin).domain as patient some
					across (old pr.deep_twin).image (patient.item) as med some
						di.has (mm ([med.item, m1]))
					end
				end or else
				(old warn)
		end

	remove_from_prescription (p1: PATIENT; m1: MEDICATION)
			-- Remove prescription of 'm1' to 'p1'.
		require
			p1 /= Void and m1 /= Void
		local
			m: MEDICATION
		do
			pr.subtract (pm ([p1, m1]))

			across
				pr as c
			loop
				m := c.item.second
				if dpr.has (pi ([p1, m1 |-> m])) then
					dpr.subtract (pi ([p1, m1 |-> m ]))
					dpr.subtract (pi ([p1,  m |-> m1]))
				end
			end
		ensure
			prescription_removed:
				pr ~ (old pr.deep_twin).subtracted (pm ([p1, m1]))

			dangerous_prescriptions_report_updated:
				across
					medications as med
				all
					not ( dpr.has (pi ([p1, med.item |-> m1])) OR ELSE
							dpr.has (pi ([p1, m1 |-> med.item])))
				end
		end

feature {NONE} -- Workaround to avoid using convert
	pm (t: TUPLE[PATIENT, MEDICATION]): PAIR[PATIENT, MEDICATION]
		do
			create Result.make_from_tuple (t)
		end

	pi (t: TUPLE[PATIENT, INTERACTION]): PAIR[PATIENT, INTERACTION]
		do
			create Result.make_from_tuple (t)
		end

	mm (t: TUPLE[MEDICATION, MEDICATION]): PAIR[MEDICATION, MEDICATION]
		do
			create Result.make_from_tuple (t)
		end

invariant

	symmetry: across
		medications as m1
	all
		across
			medications as m2
		all
			di.has (mm ([m1.item, m2.item])) = di.has (mm ([m2.item, m1.item]))
		end
	end

	irreflexivity: across
		medications as m1
	all
		not di.has (mm ([m1.item, m1.item]))
	end

	dangerous_prescriptions_reported: across
		medications as m1
	all
		across
			medications as m2
		all
			across
				patients as p1
			all
				(di.has (mm ([m1.item, m2.item])) and
				 pr.has (pm ([p1.item, m1.item])) and
				 pr.has (pm ([p1.item, m2.item])))
				=
				dpr.image (p1.item).has (
					m1.item |-> m2.item)
			end
		end
	end
end
