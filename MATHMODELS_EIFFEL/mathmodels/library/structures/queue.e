note
	description: "[
		Not immutable yet. 
		Adapt base ARRAYED_QUEUE[G] to usual queue ADT:
		Queries 	
			count: INTEGER	
			first: G 	
			has (g: G): BOOLEAN 	
			is_empty: BOOLEAN 	
			last: G 	
		Commands 	
			dequeue 	
			enqueue (g: G)
		Attached and object comparison is set.
		Classical contracts only
	]"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	QUEUE [G -> attached ANY]

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

feature {QUEUE} -- Initialization

	implementation: ARRAYED_QUEUE [G]

	make_empty
			-- create empty queue
		do
			create implementation.make (10)
			implementation.compare_objects
		ensure
			is_empty
		end

	make_one (g: G)
			-- create queue with one element `g'
		do
			create implementation.make (10)
			implementation.compare_objects
			enqueue (g)
		ensure
			count = 1
			has (g)
		end

	make_from_array (a: ARRAY[G])
		do
			create implementation.make (10)
			implementation.compare_objects
			across
				a as it
			loop
				enqueue (it.item)
			end
		end

feature -- queries

	first: G
			-- element at the front of the queue
		require
			not is_empty
		do
			Result := implementation.item
		end

	last: G
			-- element at the back of the queue
		do
			Result := implementation.linear_representation [count]
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

	item alias "[]" (i: INTEGER): G
			-- Element at `i'-th position
		require
			1 <= i and i <= count
		do
			Result := implementation.linear_representation[i]
		end

feature -- commands

	enqueue (g: G)
			-- add element `g` to the rear of the queue
		do
			implementation.extend (g)
		ensure
			count = old count + 1
			last ~ g
			has (g)
		end

	dequeue
			-- remove element `first` at the front of the queue
		do
			implementation.remove
		ensure
			count = old count - 1
			not has (old first)
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

invariant
	is_empty = (count = 0)
	implementation.linear_representation.lower = 1
	count = 1 implies first ~ last
	count > 1 implies first /~ last
	count = implementation.count
	implementation.object_comparison
end
