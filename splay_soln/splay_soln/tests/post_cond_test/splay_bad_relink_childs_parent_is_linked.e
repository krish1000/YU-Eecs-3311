note
	description: "[
		A wrong implementation of {SPLAY_TREE}.relink to test `childs_parent_is_linked`.
	]"
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	SPLAY_BAD_RELINK_CHILDS_PARENT_IS_LINKED[K -> COMPARABLE, V -> ANY]

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
			if
				p_make_left_child -- If the child must be left child,
			then
				p_parent.left := p_child
			else
				p_parent.right := p_child
			end
		end

end
