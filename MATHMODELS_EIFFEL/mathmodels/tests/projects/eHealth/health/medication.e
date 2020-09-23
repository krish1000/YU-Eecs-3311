note
	description: "Medications"
	author: "Jackie Wang"

class
	MEDICATION
	inherit
		ANY
		redefine
			is_equal,
			out
		end
create
	make

feature -- Queries

	name : STRING

feature -- Constructor

	make (n: STRING)
			-- Initialize a new medication identified through 'n'.
		require
			n /= Void
		do
			name := n
		ensure
			name ~ n
		end

feature -- Create interaction

	interacted_with alias "|->" (other: like Current): INTERACTION
		do
			create Result.make (Current, other)
		end

feature -- Equality

	is_equal (other: like Current): BOOLEAN
			-- Are current medication equal to 'other'?
		do
			if other /= Void then
				Result := name ~ other.name
			end
		end

feature -- Debug output

	debug_output: STRING
		do
			Result := out
		end

	out: STRING
		do
			Result := name
		end
end
