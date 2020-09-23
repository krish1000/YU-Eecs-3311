note
	description: "A student with their administrative information."
	author: "JW and JSO"
	date: "$Date$"
	revision: "$Revision$"

class
	STUDENT

inherit
	DEBUG_OUTPUT
	redefine
--		debug_output,
		is_equal,
		out
	end

create
	make

feature -- Attributes

	name: STRING

feature -- Constructor

	make (n: STRING)
		require
			not n.is_empty
		do
			name := n
		ensure
			name ~ n
		end

feature -- Output

	debug_output: STRING
		do
			Result := out
		end

	out: STRING
		do
			Result := name
		end

feature -- Equality

	is_equal (other: like Current): BOOLEAN
		do
			Result := name ~ other.name
		ensure then
			Result = (name ~ other.name)
		end

end
