note
	description: "Summary description for {APPLICATION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	APPLICATION

create
	make

feature {NONE} -- Initialization

	make(n, m : INTEGER)
			-- Initialization for `Current'.
		do
--			initial := 0
			number_of_states := n
			number_of_choices := m

			create transition.make_filled (0, n, m)
			create states.make_empty
		end

feature -- attributes
	initial : INTEGER
	transition : ARRAY2[INTEGER]
	states : ARRAY[STATES]
	number_of_states : INTEGER
	number_of_choices : INTEGER

feature -- Commands
	put_state(s: STATES; index: INTEGER)
		-- do require on week8 slides
		do
			states.force (s, index)
		end

	set_state_array(arr : ARRAY[STATES])
		do
			states := arr
		end

	choose_initial(index: INTEGER)
		-- do require on week8 slides
		do
			initial := index
		end

	put_transition(item, row, col: INTEGER)
		-- do require on week8 slides
		do
			transition.put (item, row, col)
			-- choice is column
			-- src is row
			-- tar is item


		end

invariant
	transition.height = number_of_states
	transition.width = number_of_choices

end
