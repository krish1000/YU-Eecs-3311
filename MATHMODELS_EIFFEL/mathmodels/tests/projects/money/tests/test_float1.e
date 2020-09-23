note
	description: "Test MONEY and ACCOUNT classes."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class TEST_FLOAT1 inherit
	ES_TEST
create
	make

feature {NONE} -- Initialization

	make
			-- Run tests
		do

			--test numeric array
			add_boolean_case (agent ta0)

			-- show that 0.1 as a FLOAT is inexact
			add_boolean_case (agent t0)

			-- MONEY tests
			add_boolean_case (agent t1)
			add_boolean_case (agent t2)
			add_boolean_case (agent t3)
			add_boolean_case (agent t4)
			add_boolean_case (agent t5)
			add_boolean_case (agent t6)
			add_boolean_case (agent t7)
			add_boolean_case (agent t8)
			add_boolean_case (agent t9)
			add_boolean_case (agent t10)
			
			-- bank tests
			add_boolean_case (agent tb1)
			add_boolean_case (agent tb2)
			add_boolean_case (agent tb3)
		end

feature -- tests for NUM_ARRAY
	ta0: BOOLEAN
		local
			an: NUM_ARRAY[INTEGER]
		do
			comment("ta0: test numeric array creation")
			an := <<3, 5, 7>>
			Result := an.sum = 15
		end
feature -- money tests
	t0: BOOLEAN
		local
			r: FLOAT
			i: NATURAL
		do
			comment("t0: in floating point, 0.1 + 0.1 + .. /= 1.0")
			from
				i := 0
				r := 0.0
			until
				i = 10
			loop
				r := r + 0.1
				i := i + 1
			end
			Result := r /= 1.0
		end

	t1: BOOLEAN
		local
			m1, m2, m3: MONEY
			amount: FLOAT
			cents: INTEGER_64
		do
			comment("t1: make $4.84 and $4.85 and former less than latter")
			create m1.make_with_float (4.84)
			amount := m1.amount
			cents := m1.cents
			Result := amount = 4.84 and cents = 484
			check Result end
			create m2.make_with_float (4.85)
			Result := m1 < m2
			check Result end
			create m3.make (4,84)
			Result := m1 = m3
		end

	t2: BOOLEAN
		local
			m1, m2, m: MONEY
		do
			comment("t2: make $4.84 and $4.85 and do arithmetic")
			create m1.make_with_float (4.84)
			create m2.make_with_float (4.85)
			create m.make_with_float (9.69)
			Result := (m1 + m2) = m
			check Result end
			create m.make_with_float (.01)
			Result := (m2 - m1) = m
			check Result end
			create m.make_with_float (24.2484)
			Result := (m1 * 5.01) = m
			check Result end
			Result := m1/5.01 = create {MONEY}.make_with_float(0.966067864)
			check Result end
			Result := m1/5.01 = create {MONEY}.make_with_float(0.97)
			check Result end
			Result := m1/5.01 > create {MONEY}.make_with_float(0.96)
			check Result end
		end

	t3: BOOLEAN
		local
			divisions: MONEY_ARRAY
			m, base, larger: MONEY
		do
			comment("t3: make $24.20 and do 6 equal allocations")
			create m.make_with_float (24.20)

			create base.make_with_float (4.03)
			create larger.make_with_float (4.04)
			divisions := <<larger, larger, base, base, base, base>>
			Result :=  m.allocated(6) ~ divisions
		end

	t4: BOOLEAN
		local
			divisions, ma: MONEY_ARRAY
			m, base, larger: MONEY
		do
			comment("t4: make $24.20 and do 6 allocations according to equal ratios")
			create m.make_with_float (24.20)

			create base.make_with_float (4.03)
			create larger.make_with_float (4.04)
			divisions := <<larger, larger, base, base, base, base>>
			ma := m.allocated_by_ratios(<<1, 1, 1, 1, 1, 1>>)
			Result := ma  ~ divisions
		end

	t5: BOOLEAN
		local
			divisions: MONEY_ARRAY
			m, base, one_cent, m1, m2, m3, m4: MONEY
		do
			comment("t5: make $24.20 and do 4 allocations according to uneven, non-zero ratios")
			create m.make_with_float (24.20)
			create one_cent.make_with_float (.01)

			create base.make_with_float (4.03)
			-- could not write m1, m2, m3, m4 directly in the manifest array expression
			m1 := base * 1 + one_cent
			m2 := base * 2 + one_cent
			m3 := base * 2
			m4 := base * 1
			divisions := <<m1, m2, m3, m4>>
			Result :=  m.allocated_by_ratios(<<1, 2, 2, 1>>) ~ divisions
		end

	t6: BOOLEAN
		local
			divisions: MONEY_ARRAY
			m, one_cent, m1, m2, m3, m4: MONEY
		do
			comment("t6: make $24.20 and do 4 allocations according to uneven, zero ratios")
			create m.make_with_float (24.20)
			create one_cent.make_with_float (.01)

			create m1.make_with_float (4.04) -- 24.20 * 1/6 + 0.01
			create m2.make_with_float (0.00) -- 24.20 * 0/6
			create m3.make_with_float (8.06) -- 24.20 * 2/6
			create m4.make_with_float (12.10)-- 24.20 * 3/6
			divisions := <<m1, m2, m3, m4>>
			Result :=  m.allocated_by_ratios(<<1, 0, 2, 3>>) ~ divisions
		end

	t7: BOOLEAN
		local
			m0, m1, m2, m3, m4: MONEY
		do
			comment("t7: test MONEY: zero, one, /, *, unary plus and minus")
			create m1.make_from_int (0)
			create m1.make_from_int (1)
			Result := m0 = m0.zero and m1 = m0.one
			check Result end
			create m2.make_with_float (1.00)
			create m3.make_with_float (.33)
			Result := m2/3 = m3
			check Result end
			create m4.make_with_float (3.37)
			Result := m3*10.2 = m4
			check Result end
			Result := -m4 = create {MONEY}.make_with_float(-3.37)
			check Result end
			Result := +m4 = create {MONEY}.make_with_float(3.37)
			check Result end
			Result := -m1.one = create {MONEY}.make_with_float(-0.01) and -m0 = m0.zero
		end

		t8: BOOLEAN
			local
				m1, m2, m3: MONEY
				ratio: MONEY_ARRAY
			do
				comment("t8: allocate_by_ratio(<<15, 85>>) on $600.01 should yield $90.01 and $510")
				create m1.make_with_float (600.01)
				create m2.make_with_float (90.01) -- 15% is $90.0015, even so round up
				create m3.make_with_float (510) -- $510.0085
				ratio := m1.allocated_by_ratios (<<15, 85>>)
				Result := ratio[1] = m2 and ratio[2] = m3
				check Result end
				Result := ratio[1] + ratio[2] = m1
				check Result end
			end

		t9: BOOLEAN
				local
					m1, m2, m3: MONEY
					ratio: MONEY_ARRAY
				do
					comment("t9: allocate_by_ratio(<<15, 85>>) on $600.01 should yield $90.01 and $510")
					create m1.make_with_float (604.91)
					create m2.make_with_float (90.74) --15% is $90.7365, round up
					--create m3.make (510.17)
					create m3.make_with_float (514.17)
					ratio := m1.allocated_by_ratios (<<15, 85>>)
					Result := ratio[1] = m2 and ratio[2] = m3
					check Result end
					Result := ratio[1] + ratio[2] = m1
					check Result end
				end

		t10: BOOLEAN
			local
				m, m1, m2, m3, m4, m5: MONEY
				allocations, divisions: MONEY_ARRAY
			do
				comment("t10: allocate_by_ratio(<<1, 0, 4, 4, 4>>) on $24.20 should yield <<1.87, 0.01. 7.44, 7.44, 7.44>>")
				create m.make_with_float (24.20)

				create m1.make_with_float (1.86 + 0.01) -- 1.86 = floor(24.20 * 1/13) i.e. floor(1.861)
				create m2.make_with_float (0.00 + 0.01) -- 0.00 = floor(24.20 * 0/13) i.e. floor(0.00)
				create m3.make_with_float (7.44)        -- 7.44 = floor(24.20 * 4/13) i.e. floor(7.446)
				create m4.make_with_float (7.44)        -- 7.44 = floor(24.20 * 4/13) i.e. floor(7.446)
				create m5.make_with_float (7.44)        -- 7.44 = floor(24.20 * 4/13) i.e. floor(7.446)

				-- there are two cents yet to be distributed after adding all 'floors' together
				-- i.e. 24.20 - (1.86 + 0.00 + 7.44 + 7.44 + 7.44) = 0.02
				-- and we ought to distribute these two cents 'from left to right', ending up
				-- distributing onen cent to m1 and one cent to m2

				divisions := <<m1, m2, m3, m4, m5>>
				allocations := m.allocated_by_ratios(<<1, 0, 4, 4, 4>>)
				Result := allocations ~ divisions
			end



feature -- bank tests
	tb1: BOOLEAN
		local
			b: BANK
			m1, m2, m3, m4, m5: MONEY
		do
			comment("tb1: test bank features: deposit, withdraw and transfer for 50%% of the balance")
			create b.make
			create m1.make_with_float(700)
			create m2.make_with_float (500)
			create m3.make_with_float (100)
			b.account1.deposit (m1)
			b.account2.deposit (m2)
			Result := b.account1.balance = m1 and b.account2.balance=m2
			check Result end
			b.account1.withdraw (m3)
			Result := b.account1.balance = (m1-m3) and b.account2.balance=m2
			check Result end
			create m4.make_with_float (300)
			create m5.make_with_float (800)
			b.account1.transfer (50, b.account2) -- transfer 50%, i.e. $300, to account2
			Result := b.account1.balance = m4 and b.account2.balance=m5
			check Result end
		end

	tb2: BOOLEAN
		local
			b: BANK
			m1, m2, m3, m4, m5, total: MONEY
			na: MONEY_ARRAY
		do
			comment("tb2: test bank transfer for 10%% of the balance where the amounts are unequal")
			create b.make
			create m1.make_with_float(600.01)
			create m2.make_with_float (500.01)
			b.account1.deposit (m1)
			total := total + m1
			b.account2.deposit (m2)
			total := total + m2
			Result := b.account1.balance = m1 and b.account2.balance=m2
			check Result end
			Result := b.account1.balance = (m1-m3) and b.account2.balance=m2
			check Result end

			-- get the 10% allocation 
			na := b.account1.balance.allocated_by_ratios (<<10, 90>>)
			create m3.make_with_float(60.01) --10% is $60.01
			check m3 = na[1] end
			-- transfer 10%
			b.account1.transfer (10, b.account2) -- transfer 10% to account2
			-- check transfer
			create m4.make_with_float (540)  -- 600.01 - 60.01 = $540 is left in account1
			create m5.make_with_float(560.02) -- 500.01 + 60.01 = $560.02 is the total of account2
			Result := b.account1.balance=m4 and b.account2.balance = m5
			check Result end
			--check that total is preserved
			Result := total = (b.account1.balance + b.account2.balance)
		end

	tb3: BOOLEAN
		local
			b: BANK
			m1, m2, m3, m4: MONEY
			ra: MONEY_ARRAY
		do
			comment("tb3: test bank features: deposit, withdraw and transfer for 15%% of the balance")
			create b.make
			create m1.make_with_float(601.02)
			create m2.make_with_float (500)
			b.account1.deposit (m1)
			b.account2.deposit (m2)
			Result := b.account1.balance = m1 and b.account2.balance=m2
			check Result end

			ra := m1.allocated_by_ratios (<<15, 85>>)
			check ra[1] = create{MONEY}.make_with_float(90.16) end -- 15%
			b.account1.transfer (15, b.account2) -- transfer 15% to account2
			create m3.make_with_float (510.86)
			create m4.make_with_float (590.16)
			Result := b.account1.balance = m3 and b.account2.balance=m4
			check Result end
		end

end
