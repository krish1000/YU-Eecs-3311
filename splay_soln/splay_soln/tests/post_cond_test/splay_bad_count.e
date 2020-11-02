note
	description: "[
		A wrong implementation of {SPLAY_TREE}.count to test `root_count`.
	]"
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	SPLAY_BAD_COUNT[K -> COMPARABLE, V -> ANY]

inherit
	SPLAY_TREE [K, V]
		redefine
			count
		end
create
	make

feature -- Basic

	count: INTEGER
		do
			Result := root.count + 999
		end

end
