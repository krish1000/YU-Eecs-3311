note
	description: "[
		Not immutable yet.
		Implemented with SORTED_TWO_WAY_LIST
	]"
	author: "JSO and JW"
	date: "$Date$"
	revision: "$Revision$"

class
	UTIL_PRIORITY_QUEUE[G -> COMPARABLE]

inherit

	DEBUG_OUTPUT -- for debugger view
		redefine
			is_equal,
			out
		end

create
	make_empty, make_one, make_from_array

convert
	make_from_array ({ ARRAY[G]})

feature {UTIL_PRIORITY_QUEUE} -- Initialization

	implementation: SORTED_TWO_WAY_LIST [G]

	make_empty
			-- create empty queue
		do
			create implementation.make
			implementation.compare_objects
		ensure
			is_empty
		end

	make_one (g: G)
			-- create queue with one element `g'
		do
			create implementation.make
			implementation.compare_objects
			enqueue (g)
		ensure
			count = 1
			has (g)
		end

	make_from_array (a: ARRAY[G])
		do
			create implementation.make_from_iterable (a)
			implementation.compare_objects
		end

feature -- queries

	minimum: G
			-- element at the front
		require
			not is_empty
		do
			Result := implementation.first
		end

	maximum: G
			-- element at the back of the queue
		do
			Result := implementation.last
		end

	is_empty: BOOLEAN
			-- is queue empty?
		do
			Result := count = 0
		end

	count: INTEGER
			-- number of elements in the queue
		do
			Result := implementation.count
		end

	is_equal (other: like Current): BOOLEAN
			-- is this queue equal to `other`
		do
			Result := implementation ~ other.implementation
		end

	has (g: G): BOOLEAN
			-- does this queue have element `g`
		do
			Result := implementation.has (g)
		end

feature -- commands

	enqueue (g: G)
			-- add element `g` to the queue in comparable order
		do
			implementation.extend (g)
		ensure
			count = old count + 1
			has (g)
		end

	dequeue
			-- remove minimum from queue
		do
			implementation.start
			implementation.remove
		ensure
			count = old count - 1
--			not has (old first.deep_twin)
		end

	prune (g: G)
			-- Remove first occurrence of `v', if any.
		do
			implementation.start
			implementation.prune (g)
		end

feature -- out

	out: STRING
		local
			l_started: BOOLEAN
		do
			Result := ""
			across
				implementation as l_g
			loop
				if not l_started then
					Result := l_g.item.out
					l_started := True
				else
					Result := Result + "," + l_g.item.out
				end
			end
		end

	debug_output: STRING
		do
			Result := out
		end

end
