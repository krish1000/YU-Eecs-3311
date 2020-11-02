note
	description: "[
		A wrong implementation of {SPLAY_TREE}.relink to test `case_of_relinking_the_left_child`.
	]"
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	SPLAY_BAD_RELINK_CASE_OF_RELINK_THE_LEFT_CHILD[K -> COMPARABLE, V -> ANY]

inherit
	SPLAY_TREE [K, V]
		redefine
			relink
		end
create
	make

feature -- Basic

	relink (p_parent, p_child: TREE_NODE[K, V]; p_make_left_child: BOOLEAN)
		do
			p_child.parent := p_parent
			if
				p_make_left_child -- If the child must be left child,
			then

			else
				p_parent.right := p_child
			end
		end

end
