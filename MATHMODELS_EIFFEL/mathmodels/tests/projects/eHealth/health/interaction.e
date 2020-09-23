note
	description: "Interaction of two medications."
	author: "Jackie Wang"

class
	INTERACTION
inherit
	ANY
	redefine
		is_equal
	end
create
	make

feature -- Queries

	first: MEDICATION

	second: MEDICATION

feature -- Constructor

	make (fst, snd: MEDICATION)
			-- Initialize an interaction between 'fst' and 'snd'.
		do
			first := fst
			second := snd
		ensure
			first ~ fst
			second ~ snd
		end

feature -- Equality

	is_equal (other: like Current): BOOLEAN
			-- Are current interaction equal to 'other'?
		do
			if other /= Void then
				Result := (first ~ other.first and
							second ~ other.second)
				-- since when two medications 'm1' and 'm2' interact,
				-- we extend 'dpr' with both (m1, m2) and (m2, m1),
				-- both interactions should be considred as not equal.
			end
		end

end
