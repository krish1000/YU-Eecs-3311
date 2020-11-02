note
	description: "Intermediate test cases."
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	INTERMEDIATE_TESTS

inherit
	TEST_ENVIRONMENT

create
	make

feature {NONE} -- Initialization

	make
			-- initialize tests
		do
			env_empty

			add_rotate_tests
			add_splay_tests
		end

feature -- rotate

	add_rotate_tests
		do
			add_boolean_case (agent splay_rotate1)
			add_boolean_case (agent splay_rotate2)
			add_boolean_case (agent splay_rotate3)
			add_boolean_case (agent splay_rotate4)
			add_boolean_case (agent splay_rotate5)
			add_boolean_case (agent splay_rotate6)
		end

	splay_rotate6: BOOLEAN
		do
			comment ("splay_rotate6: env_root_insert_int_int, rotate from node 8")

			--          4
			--         / \
			--        2   7
			--       / \ / \
			--      1  3 6  8
			--          /    \
			--         5      9

			env_root_insert_int_int

			bst_int_int.rotate (bst_int_int.root.tree_search(8))

			--          4
			--         / \
			--        2   8
			--       / \ / \
			--      1  3 7  9
			--          /
			--         6
			--        /
			--       5

			Result :=
				attached bst_int_int.nodes as a_nodes and then
				a_nodes[8].left = a_nodes[7]
				and then
				attached a_nodes[7].right as a_right and then
				a_right.is_external
				and then
				a_nodes[7].left = a_nodes[6]
		end

	splay_rotate5: BOOLEAN
		do
			comment ("splay_rotate5: env_root_insert_int_int, rotate from node 6")

			--          4
			--         / \
			--        2   7
			--       / \ / \
			--      1  3 6  8
			--          /    \
			--         5      9

			env_root_insert_int_int

			bst_int_int.rotate (bst_int_int.root.tree_search(6))

			--          4
			--         / \
			--        2   6
			--       / \ / \
			--      1  3 5  7
			--               \
			--                8
			--                 \
			--                  9

			Result :=
				attached bst_int_int.nodes as a_nodes and then
				a_nodes[6].right = a_nodes[7]
				and then
				attached a_nodes[7].left as a_left and then
				a_left.is_external
				and then
				a_nodes[7].right = a_nodes[8]
		end

	splay_rotate4: BOOLEAN
		do
			comment ("splay_rotate4: env_root_insert_int_int, rotate from node 3")

			--          4
			--         / \
			--        2   7
			--       / \ / \
			--      1  3 6  8
			--          /    \
			--         5      9

			env_root_insert_int_int

			bst_int_int.rotate (bst_int_int.root.tree_search(3))

			--          4
			--         / \
			--        3   7
			--       /   / \
			--      2   6   8
			--     /   /     \
			--    1   5       9

			Result :=
				attached bst_int_int.nodes as a_nodes and then
				a_nodes[4].left = a_nodes[3]
				and then
				a_nodes[3].left = a_nodes[2]
				and then
				attached a_nodes[2].right as a_right and then
				a_right.is_external
		end

	splay_rotate3: BOOLEAN
		do
			comment ("splay_rotate3: env_root_insert_int_int, rotate from node 1")

			--          4
			--         / \
			--        2   7
			--       / \ / \
			--      1  3 6  8
			--          /    \
			--         5      9

			env_root_insert_int_int

			bst_int_int.rotate (bst_int_int.root.tree_search(1))

			--          4-------
			--         /        \
			--        1          7
			--         \        / \
			--          2      6   8
			--           \    /     \
			--            3  5       9

			Result :=
				attached bst_int_int.nodes as a_nodes and then
				a_nodes[4].left = a_nodes[1]
				and then
				a_nodes[1].right = a_nodes[2]
				and then
				attached a_nodes[2].left as a_left and then
				a_left.is_external
		end

	splay_rotate2: BOOLEAN
		do
			comment ("splay_rotate2: env_root_insert_int_int, rotate from node 7")

			--          4
			--         / \
			--        2   7
			--       / \ / \
			--      1  3 6  8
			--          /    \
			--         5      9

			env_root_insert_int_int

			bst_int_int.rotate (bst_int_int.root.tree_search(7))

			--          7
			--         / \
			--        4   8
			--       / \   \
			--      2   6   9
			--     / \ /
			--    1  3 5

			Result :=
				attached bst_int_int.nodes as a_nodes and then
				bst_int_int.root = a_nodes[7]
				and then
				a_nodes[4].left = a_nodes[2]
				and then
				a_nodes[4].right = a_nodes[6]
				and then
				a_nodes[7].right = a_nodes[8]
		end

	splay_rotate1: BOOLEAN
		do
			comment ("splay_rotate1: env_root_insert_int_int, rotate from node 2")

			--          4
			--         / \
			--        2   7
			--       / \ / \
			--      1  3 6  8
			--          /    \
			--         5      9

			env_root_insert_int_int

			bst_int_int.rotate (bst_int_int.root.tree_search(2))

			--          2
			--         / \
			--        1   4
			--           / \
			--          3   7
			--             / \
			--            6   8
			--           /     \
			--          5       9

			Result :=
				attached bst_int_int.nodes as a_nodes and then
				bst_int_int.root = a_nodes[2]
				and then
				a_nodes[2].left = a_nodes[1]
				and then
				a_nodes[2].right = a_nodes[4]
				and then
				a_nodes[4].left = a_nodes[3]
		end

feature -- splay

	add_splay_tests
		do
			add_boolean_case(agent splay_splay1)
			add_boolean_case(agent splay_splay2)
			add_boolean_case(agent splay_splay3)
			add_boolean_case(agent splay_splay4)
			add_boolean_case(agent splay_splay5)
			add_boolean_case(agent splay_splay6)
		end

	splay_splay6: BOOLEAN
		do
			comment ("splay_splay6: env_root_insert_int_int, zig-zag case, from node 3")

			--          4
			--         / \
			--        2   7
			--       / \ / \
			--      1  3 6  8
			--          /    \
			--         5      9

			env_root_insert_int_int

			bst_int_int.splay (bst_int_int.root.tree_search(3))

			--          3
			--         / \
			--        2   4
			--       /     \
			--      1       7
			--             / \
			--            6   8
			--           /     \
			--          5       9

			Result :=
				attached bst_int_int.nodes as a_nodes and then
				bst_int_int.root = a_nodes[3]
				and then
				attached a_nodes[2].right as a_right and then
				a_right.is_external
				and then
				a_nodes[2].left = a_nodes[1]
				and then
				attached a_nodes[4].left as a_left and then
				a_left.is_external
		end

	splay_splay5: BOOLEAN
		do
			comment ("splay_splay5: env_root_insert_int_int, zig-zig case, from node 1")

			--          4
			--         / \
			--        2   7
			--       / \ / \
			--      1  3 6  8
			--          /    \
			--         5      9

			env_root_insert_int_int

			bst_int_int.splay (bst_int_int.root.tree_search(1))

			--        1
			--         \
			--          2
			--           \
			--            4
			--           / \
			--          3   7
			--             / \
			--            6   8
			--           /     \
			--          5       9

			Result :=
				attached bst_int_int.nodes as a_nodes and then
				bst_int_int.root = a_nodes[1]
				and then
				attached a_nodes[2].left as a_left and then
				a_left.is_external
				and then
				a_nodes[2].right = a_nodes[4]
				and then
				a_nodes[4].left = a_nodes[3]
		end

	splay_splay4: BOOLEAN
		do
			comment ("splay_splay4: env_root_insert_int_int, zig case, from node 2")

			--          4
			--         / \
			--        2   7
			--       / \ / \
			--      1  3 6  8
			--          /    \
			--         5      9

			env_root_insert_int_int

			bst_int_int.splay (bst_int_int.root.tree_search(2))

			--          2
			--         / \
			--        1   4
			--           / \
			--          3   7
			--             / \
			--            6   8
			--           /     \
			--          5       9

			Result :=
				attached bst_int_int.nodes as a_nodes and then
				bst_int_int.root = a_nodes[2]
				and then
				a_nodes[2].left = a_nodes[1]
				and then
				a_nodes[2].right = a_nodes[4]
				and then
				a_nodes[4].left = a_nodes[3]
		end

	splay_splay3: BOOLEAN
		do
			comment ("splay_splay3: splay, zig-zag")
			env_empty

			bst_int_int.insert (3, 3)
			bst_int_int.insert (1, 1)
			bst_int_int.insert (2, 2)

			Result := bst_int_int.search(2) = 2
			check
				Result
			end
		end

	splay_splay2: BOOLEAN
		do
			comment ("splay_splay2: splay, zig-zig")
			env_empty

			bst_int_int.insert (3, 3)
			bst_int_int.insert (2, 2)
			bst_int_int.insert (1, 1)

			Result := bst_int_int.search(1) = 1
			check
				Result
			end
		end

	splay_splay1: BOOLEAN
		do
			comment ("splay_splay1: splay, zig")
			env_empty

			bst_int_int.insert (2, 2)
			bst_int_int.insert (1, 1)

			Result := bst_int_int.search(1) = 1
			check
				Result
			end
		end

end
