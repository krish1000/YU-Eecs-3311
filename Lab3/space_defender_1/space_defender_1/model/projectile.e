note
	description: "Summary description for {PROJECTILE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	PROJECTILE

create
	make

feature {NONE} -- Initialization

	make(row: INTEGER; column: INTEGER)
			-- Initialization for `Current'.
		do
			location := [row, column]
			states_alive_counter := 0 -- at initalized state when 0
		end

feature -- Attributes
	location: TUPLE[cx : INTEGER; cy: INTEGER]
	states_alive_counter: INTEGER

feature -- Commands
	states_alive_add(value: INTEGER)
		do
			states_alive_counter := states_alive_counter + value
		end


end
