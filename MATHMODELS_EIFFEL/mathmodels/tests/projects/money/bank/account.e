note
	description: "Summary description for {ACCOUNT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ACCOUNT
create
	make

feature{NONE} -- create
	make
		-- a new account
	do
		create balance.make_from_int (0)
	ensure
		balance = balance.zero
	end

feature -- basic operations
	balance: MONEY

	deposit(m: MONEY)
		require
			m >= m.zero
		do
			balance := balance + m
		ensure
			balance = old balance + m
		end

	withdraw(m: MONEY)
		require
			m.zero <= m and m <= balance
		do
			balance := balance - m
		ensure
			balance = old balance - m
		end

feature -- transfer

	transfer(percent: INTEGER; a: ACCOUNT)
			-- `percent' is an integer between 0 and 100
			-- transfer `percent' of current to account `a' without losing pennies
		require
			percent_between_zero_and_100: 0 <= percent and percent <= 100
		local
			na: MONEY_ARRAY-- onet to be transferred
			ratio1, ratio2: INTEGER
		do
			ratio1 := percent
			ratio2 := 100-percent
			na := balance.allocated_by_ratios (<<ratio1, ratio2>>)
			a.deposit (na[1])
			balance := balance - na[1]
		ensure
			transfer_conserves_money: balance + a.balance = old (balance + a.balance)
			correct_other_balance: a.balance = old (a.balance + allocate_by(percent))
			correct_current_balance: balance = old (balance - allocate_by(percent))
		end


	allocate_by(percent: INTEGER): MONEY
		do
			Result := balance.allocated_by_ratios (<<percent, 100-percent>>)[1]
		ensure
			Result = balance.allocated_by_ratios (<<percent, 100-percent>>)[1]
		end

invariant
	balance >= balance.zero

end
