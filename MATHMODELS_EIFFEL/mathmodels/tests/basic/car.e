note
	description: "Cars"
	author: "JSO"
	date        : "$Date$"
	revision    : "$Revision$"

class
	CAR

inherit

	ANY
		redefine
			is_equal,
			out
		end

create
	make

feature -- Queries

	name: STRING

feature {NONE} -- Constructor

	make (n: STRING)
			-- create car `n'
		do
			name := n
		ensure
			name ~ n
		end

feature -- Equality

	is_equal (other: like Current): BOOLEAN
			-- Is current car equal to 'other'?
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
