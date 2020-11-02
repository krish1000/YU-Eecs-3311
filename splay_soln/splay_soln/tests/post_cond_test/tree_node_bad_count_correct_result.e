note
	description: "A wrong implementation of {TREE_NODE}.count to test `correct_result`."
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	TREE_NODE_BAD_COUNT_CORRECT_RESULT[K -> COMPARABLE, V -> ANY]

inherit
	TREE_NODE [K, V]
		redefine
			count
		end

create
	make_internal, make_external

feature

	count: INTEGER
		-- Count the number of descendants. (Descendants include itself and internal nodes.)
		do
			if
				attached left as a_left and then a_left.is_internal -- if left node exists,
			then
				Result := Result + a_left.count -- add the left node counts.
			end

			if
				attached right as a_right and then a_right.is_internal -- if right node exists,
			then
				Result := Result + a_right.count -- add the right node counts.
			end

			if
				is_internal
			then
				Result := Result + 99
			end
		end
end
