note
	description: "Summary description for {ROOT_CONSOLE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ROOT_CONSOLE

inherit

	ARGUMENTS_32 -- console output

create
	make

feature {NONE} -- Initialization

	make
			-- Run app
		do
			print ("Hello EECS: void safe Eiffel project for 19.05!%N")
		end

end
