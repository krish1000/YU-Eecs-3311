note
	description: "Patients."
	author: "Jackie Wang"

class
	PATIENT
	inherit
		ANY
		redefine
			is_equal,
			out
		end
create
	make

feature -- queries

	name : STRING

feature -- constructor

	make (n: STRING)
			-- Initialize a new patient identified through 'n'.
		require
			n /= Void
		do
			name := n
		ensure
			name ~ n
		end

feature -- equality

	is_equal (other: like Current): BOOLEAN
			-- Is current patient equal to 'other'?
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
