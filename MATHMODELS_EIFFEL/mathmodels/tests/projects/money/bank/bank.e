note
	description: "Summary description for {BANK}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BANK

create
	make

feature {NONE}
	make
			-- two accounts
		do
			create account1.make
			create account2.make
		end

feature

	account1: ACCOUNT

	account2: ACCOUNT

invariant
	account1 /= Void
	account2 /= Void


end
