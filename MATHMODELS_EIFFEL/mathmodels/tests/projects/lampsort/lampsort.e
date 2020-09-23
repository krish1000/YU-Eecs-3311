note
	description: "[
		Quicksort according to Lamport/Meyer.
		The Lampsort algorithm is a simple loop; it does not use recursion, 
		but relies on an interesting data structure, a set of intervals. 
		It is hardly more difficult to understand, 
		and hardly shorter, than the traditional recursive version.
		the recursive version, and its parallelized variants, 
		are only examples of possible implementations
		]"
	author: "JSO"
	date: "$Date$"
	revision: "$Revision$"

class
	LAMPSORT[G->COMPARABLE]
create
	make
feature
	make(l_a: like a)
		do
			a := l_a
			create picked.make (0, -1)
		ensure
			a = l_a
		end

feature
	a: ARRAY[G]
	pivot1,pivot2: INTEGER
	picked: INTEGER_INTERVAL

	partition(i,j:INTEGER)
		require
			a.lower <= i
			i       <= j
			j       <= a.upper
		local
			m,n,k: INTEGER
			x: G
		do
			from
				-- choose as pivot x left element of slice i..j
				x := a[i]
				n := j+1
				m := i
				k := m
			invariant
				i <= m and m <= k and k <= n and n <= j+1
				across i |..| (m-1) as it all a[it.item] < x end
				across m |..| (k-1) as kt all a[kt.item] = x end
				across n |..| j as jt all x < a[jt.item] end
			until
				k = n
			loop
				if a[k] = x then
					k := k + 1
				elseif a[k] < x then
					swap (m,k)
					m := m + 1
					k := k + 1
				else
					check x < a[k] end
					swap (k,n-1)
					n := n - 1
				end
--				m := m + 1
--				n := n - 1
--				-- find candidate a[n] from the right to swap
--				from
--				invariant
--					across (n+1) |..| j as jt all x <= a[jt.item] end
--					i <= n and n <= j+1
--				until
--					a[n] <= x
--				loop
--					n := n -1
--				variant
--					n - i
--				end

--				-- find candidate from the left a[m] to swap
--				from
--				invariant
--					across i |..| (m-1) as it all a[it.item] <= x end
--					i-1 <= m and m <= j
--				until
--					a[m] >= x
--				loop
--					m := m + 1
--				variant
--					j - m
--				end

--				-- swap a[m] and a[n]
--				if m < n then
--					swap(m,n)
--				else -- m=n and a[m] = x = a[n]

--				end
			variant
				n - k
			end
			pivot1 := m-1
			pivot2 := n
		ensure
			i-1 <= pivot1 and pivot1 <= j
			i <= pivot2 and pivot2 <= j+1
			permutation (a, a.deep_twin)
			across i |..| pivot1 as it all
				across (pivot1+1) |..| j as jt all
					a [it.item] <= a [jt.item]
				end
			end
			across i |..| (pivot2-1) as it all
				across pivot2 |..| j as jt all
					a [it.item] <= a [jt.item]
				end
			end
--			a [i..j] has been reshuffled so that elements in i..pivot are less than
--			or equal to those in pivot+1 .. j.
		end

	swap(m,n:INTEGER)
		require
			a.lower <= m
			m       <= n
			n       <= a.upper
		local
			temp: G
		do
			temp := a[m]
			a[m] := a[n]
			a[n] := temp
		ensure
			a[m] ~ old a[n] and a[n] ~ old a[m]
		end


	lampsort(i,j:INTEGER)
		require
			a.lower <= i
			i<=j
			j <= a.upper
		local
			l_intvl: INTEGER_INTERVAL
			intervals: SET[INTEGER_INTERVAL]
		do
			from
				--Initialize interval set to contain a single interval
				-- the array’s entire index range
				create l_intvl.make (a.lower, a.upper)
				create intervals.make_empty
				intervals.extend (l_intvl)
			invariant
				true
			until
				-- stop when there are no more intervals in set
				intervals.is_empty
			loop
					-- pick an interval from (non-empty) set
				intervals.choose_item
				picked := intervals.item
					-- remove interval that was just picked for partitioning
				intervals.remove_item
				if picked.count > 1 then
					-- precondition of partition holds

					-- split the array, moving small elements before
					-- and large elements after pivot
					partition (picked.lower, picked.upper)

					-- insert new intervals into set
					intervals.extend(picked.lower |..| pivot1)
					intervals.extend(pivot2 |..| picked.upper)
				end
--			variant
--				i
				-- sum of size of the intervals + interals.count
				-- because some intervals may be empty
			end
		end

	sort
			-- Lampsort version of quicksort for array `a'
		do
			lampsort (a.lower, a.upper)
		ensure
			across a.lower |..| (a.upper-1) as k all
				a[k.item] <= a[k.item+1]
			end
			permutation(old a.deep_twin, a)
		end

	sort2
			-- recursive quicksort
		do
			sort_recursive (a.lower, a.upper)
		ensure
			across a.lower |..| (a.upper-1) as k all
				a[k.item] <= a[k.item+1]
			end
			permutation(old a.deep_twin, a)
		end

	sort_recursive(i,j:INTEGER)
		require
			a.lower <= i
			i<=j+1
			j <= a.upper
		do
			if i < j then
				partition(i,j)
				sort_recursive(i,pivot1)
				sort_recursive(pivot2,j)
			end
		end

feature -- array queries
	permutation(a1,a2: like a): BOOLEAN
		do
			if a1.count = a2.count then
				Result := across a1 as it all
					a1.occurrences (it.item) = a2.occurrences (it.item) end
			else
				Result := false
			end
		ensure
			Result implies a1.count = a2.count and then
				across a1 as it all
					a1.occurrences (it.item) = a2.occurrences (it.item)
				end
			not Result implies
					a1.count /= a2.count
				or else  (across a1 as it some
					a1.occurrences (it.item) /= a2.occurrences (it.item)
				    end)
		end



end
