note
	description: "Summary description for {SCORE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	SCORE

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
		do
			create scorelist.make
		end

feature -- Attributes
	scorelist : LINKED_LIST[ANY]

feature -- Commands

	add_score(score : ANY)
		do
			if scorelist.count = 0 then
				scorelist.extend (score)

			elseif attached {INTEGER} scorelist[scorelist.count] then
				-- add to end
				scorelist.extend (score)

			elseif attached {FOCUS} scorelist[scorelist.count] as focus then
				-- go inside focus
				if attached {FOCUS} helper(focus) as returnedfocus then
					returnedfocus.list.extend(score)
				else -- focuses are full, add to end of score list
					scorelist.extend (score)
				end
			end
		end

	helper(focus : FOCUS) : DETACHABLE focus
		do
			if focus.size = focus.list.count then -- focus is full

				if attached {INTEGER} focus.list[focus.size] then -- exit, add focus to end of scorelist
					-- return nothing
				elseif attached {FOCUS} focus.list[focus.size] as newfocus then
					Result := helper(newfocus) -- recursive
				end
			else -- return this focus
				Result := focus
			end
		end

	getscore : INTEGER
		do
			across
				scorelist is item
			loop
				if attached {INTEGER} item as l_i then
					Result := l_i + result
				elseif attached {FOCUS} item as l_f then
					if l_f.size = l_f.list.count then
						Result := result + (l_f.get_score)*l_f.multiplier
					else
						Result := result + l_f.get_score
					end

				end
			end
		end


end
