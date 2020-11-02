note
	description: "Advanced test cases."
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	ADVANCED_TESTS

inherit
	TEST_ENVIRONMENT
		redefine
			root_insert_int_int,
			root_insert_str_str
		end

create
	make

feature {NONE} -- Initialization

	make
			-- initialize tests
		do
			env_empty

			add_search_tests
			add_insert_tests
			add_delete_tests
		end

feature -- bst setup

	root_insert_int_int (l_bst: SPLAY_TREE [INTEGER, INTEGER])
			-- Node insertions without using `insert`.
			--          7
			--         / \
			--        5   13
			--       / \ / \
			--      1  3 11 15
			--          /    \
			--         9      17
		local
			l_1, l_2, l_3, l_5, l_6, l_7, l_8, l_9: TREE_NODE[INTEGER, INTEGER]
		do
			create l_1.make_internal (1, 1)
			create l_2.make_internal (3, 3)
			create l_3.make_internal (5, 5)
			l_bst.root.set_to_internal (7, 7)
			create l_5.make_internal (9, 9)
			create l_6.make_internal (11, 11)
			create l_7.make_internal (13, 13)
			create l_8.make_internal (15, 15)
			create l_9.make_internal (17, 17)

			l_2.insert_left (l_1)
			l_2.insert_right (l_3)

			l_6.insert_left (l_5)

			l_8.insert_right (l_9)

			l_7.insert_left (l_6)
			l_7.insert_right (l_8)

			l_bst.root.insert_left (l_2)
			l_bst.root.insert_right (l_7)
		end

	root_insert_str_str (l_bst: SPLAY_TREE[STRING, STRING])
				-- Node insertions without using `insert`.
				--          g
				--         / \
				--        c   m
				--       / \ / \
				--      a  e k  o
				--          /    \
				--         i      q
			local
				l_1, l_2, l_3, l_5, l_6, l_7, l_8, l_9: TREE_NODE[STRING, STRING]
			do
				create l_1.make_internal ("a", "a")
				create l_2.make_internal ("c", "c")
				create l_3.make_internal ("e", "e")
				l_bst.root.set_to_internal ("g", "g")
				create l_5.make_internal ("i", "i")
				create l_6.make_internal ("k", "k")
				create l_7.make_internal ("m", "m")
				create l_8.make_internal ("o", "o")
				create l_9.make_internal ("q", "q")

				l_2.insert_left (l_1)
				l_2.insert_right (l_3)

				l_6.insert_left (l_5)

				l_8.insert_right (l_9)

				l_7.insert_left (l_6)
				l_7.insert_right (l_8)

				l_bst.root.insert_left (l_2)
				l_bst.root.insert_right (l_7)
			end

feature -- search

	add_search_tests
		do
			add_violation_case_with_tag ("case_of_key_found", agent splay_search1)
			add_violation_case_with_tag ("case_of_key_not_found", agent splay_search2)
			add_violation_case_with_tag ("consistent_in_orders", agent splay_search3)
			add_boolean_case (agent splay_search4)
			add_boolean_case (agent splay_search5)
			add_boolean_case (agent splay_search6)
			add_boolean_case (agent splay_search7)
			add_boolean_case (agent splay_search8)
			add_boolean_case (agent splay_search9)
			add_boolean_case (agent splay_search10)
		end

	splay_search10: BOOLEAN
		local
			l_search_result: STRING
		do
			comment ("splay_search10: env_root_insert_str_str, search `c`, `m`, `e`, check its structure")

			--          g
			--         / \
			--        c   m
			--       / \ / \
			--      a  e k  o
			--          /    \
			--         i      q

			env_root_insert_str_str

			l_search_result := bst_str_str.search("c")
			l_search_result := bst_str_str.search("m")
			l_search_result := bst_str_str.search("e")

			--          e
			--         / \
			--        c   m
			--       /   / \
			--      a    g  o
			--            \  \
			--             k  q
			--            /
			--           i

			Result :=
				attached bst_str_str.nodes as a_nodes and then
				attached a_nodes[1] as a_a and then
				attached a_nodes[2] as a_c and then
				attached a_nodes[3] as a_e and then
				attached a_nodes[4] as a_g and then
				attached a_nodes[5] as a_i and then
				attached a_nodes[6] as a_k and then
				attached a_nodes[7] as a_m
				and then
				a_e = bst_str_str.root
				and then
				a_c.left = a_a
				and then
				a_e.left = a_c
				and then
				a_e.right = a_m
				and then
				a_m.left = a_g
				and then
				a_g.right = a_k
				and then
				a_k.left = a_i
				and then
				attached a_c.right as a_c_right and then
				a_c_right.is_external
				and then
				attached a_g.left as a_g_left and then
				a_g_left.is_external
		end


	splay_search9: BOOLEAN
		local
			l_search_result: STRING
		do
			comment ("splay_search9: env_root_insert_str_str, search `g`, `a`, check its structure")

			--          g
			--         / \
			--        c   m
			--       / \ / \
			--      a  e k  o
			--          /    \
			--         i      q

			env_root_insert_str_str

			l_search_result := bst_str_str.search("g")
			l_search_result := bst_str_str.search("a")

			--            a
			--             \
			--              c
			--               \
			--                g
			--               / \
			--              e   m
			--                /  \
			--               k    o
			--              /      \
			--             i        p
			--

			Result :=
				attached bst_str_str.nodes as a_nodes and then
				attached a_nodes[1] as a_a and then
				attached a_nodes[2] as a_c and then
				attached a_nodes[3] as a_e and then
				attached a_nodes[4] as a_g
				and then
				a_a = bst_str_str.root
				and then
				a_a.right = a_c
				and then
				a_g.left = a_e
				and then
				attached a_a.left as a_a_left and then
				a_a_left.is_external
				and then
				attached a_c.left as a_c_left and then
				a_c_left.is_external
		end

	splay_search8: BOOLEAN
		local
			l_search_result: STRING
		do
			comment ("splay_search8: env_root_insert_str_str, search `i`, check its structure")

			--          g
			--         / \
			--        c   m
			--       / \ / \
			--      a  e k  o
			--          /    \
			--         i      q

			env_root_insert_str_str

			l_search_result := bst_str_str.search("i")

			--            i
			--           / \
			--          g   k
			--         /     \
			--        c       m
			--       / \       \
			--      a  e        o
			--                   \
			--                    q


			Result :=
				l_search_result ~ "i" and then
				attached bst_str_str.nodes as a_nodes and then
				attached a_nodes[4] as a_g and then
				attached a_nodes[5] as a_i and then
				attached a_nodes[6] as a_k and then
				attached a_nodes[7] as a_m
				and then
				a_i = bst_str_str.root
				and then
				a_i.left = a_g
				and then
				a_i.right = a_k
				and then
				a_k.right = a_m
				and then
				attached a_k.left as a_k_left and then
				a_k_left.is_external
				and then
				attached a_m.left as a_m_left and then
				a_m_left.is_external
		end

	splay_search7: BOOLEAN
		do
			comment ("splay_search7: env_root_insert_str_str, searching removed nodes")

			env_root_insert_str_str

			bst_str_str.delete ("a")

			Result :=
				not attached bst_str_str.search ("a")
		end

	splay_search6: BOOLEAN
		do
			comment ("splay_search6: env_root_insert_str_str, searching not existing node")

			env_root_insert_str_str

			Result :=
				not attached bst_str_str.search ("z")
				and then
				not attached bst_str_str.search ("x")
		end

	splay_search5: BOOLEAN
		do
			comment ("splay_search5: env_root_insert_str_str, searching all nodes")

			env_root_insert_str_str

			Result :=
				across
					bst_str_str.nodes is i_node
				all
					attached i_node.key as a_key
					and then
					bst_str_str.search (a_key) ~ i_node.value
				end
		end

	splay_search4: BOOLEAN
		do
			comment ("splay_search4: env_root_insert_int_int, searching all nodes")

			env_root_insert_int_int

			Result :=
				across
					bst_int_int.nodes is i_node
				all
					bst_int_int.search (i_node.key) ~ i_node.value
				end
		end

	splay_search3
		local
			l_bst: SPLAY_BAD_SEARCH_CONSISTENT_IN_ORDERS
			l_string: STRING
		do
			comment ("splay_search3: POSTCONDITION, wrong search, checking consistent_in_orders")
			create l_bst.make
			l_bst.insert (148, "A")
			l_bst.insert (238, "A")
			l_bst.insert (447, "A")
			l_bst.insert (528, "A")
			l_bst.insert (398, "A")

			l_string := l_bst.search (528)
		end

	splay_search2
		local
			l_bst: SPLAY_BAD_SEARCH_CASE_OF_KEY_NOT_FOUND
			l_string: STRING
		do
			comment ("splay_search2: POSTCONDITION, wrong search, checking case_of_key_not_found")
			create l_bst.make
			l_bst.insert (148, "A")
			l_bst.insert (238, "A")
			l_bst.insert (447, "A")
			l_bst.insert (528, "A")
			l_bst.insert (398, "A")

			l_string := l_bst.search (9999)
		end

	splay_search1
		local
			l_bst: SPLAY_BAD_SEARCH_CASE_OF_KEY_FOUND
			l_string: STRING
		do
			comment ("splay_search1: POSTCONDITION, wrong search, checking case_of_key_found")
			create l_bst.make
			l_bst.insert (148, "A")
			l_bst.insert (238, "A")
			l_bst.insert (447, "A")
			l_bst.insert (528, "A")
			l_bst.insert (398, "A")

			l_string := l_bst.search (148)
		end

feature -- insert

	add_insert_tests
		do
			add_violation_case_with_tag ("size_incremented", agent splay_insert1)
			add_violation_case_with_tag ("has_inserted_node", agent splay_insert2)
			add_violation_case_with_tag ("other_nodes_unchanged", agent splay_insert3)
			add_boolean_case (agent splay_insert4)
			add_boolean_case (agent splay_insert5)
			add_boolean_case (agent splay_insert6)
			add_boolean_case (agent splay_insert7)
			add_boolean_case (agent splay_insert8)
			add_boolean_case (agent splay_insert9)
			add_boolean_case (agent splay_insert10)
			add_boolean_case (agent splay_insert11)
			add_boolean_case (agent splay_insert12)
		end

	splay_insert12: BOOLEAN
		local
		do
			comment ("splay_insert12: env_root_insert_str_str, insert `l` to test zig-zag case.")

			env_root_insert_str_str

			--          g
			--         / \
			--        c   m
			--       / \ / \
			--      a  e k  o
			--          /    \
			--         i      q

			bst_str_str.insert ("l", "l")

			--          g
			--         / \
			--        c   m
			--       / \ / \
			--      a  e k  o
			--          / \  \
			--         i   l   q
			--
			-- zig-zag
			--
			--          g
			--         / \
			--        c   l
			--       / \ / \
			--      a  e k  m
			--          /    \
			--         i      o
			--                 \
			--                  q
			--
			-- zig
			--
			--          l
			--         / \
			--        g   m
			--       / \   \
			--      c   k   o
			--     / \  /    \
			--    a   e i     q

			Result :=
				attached bst_str_str.nodes as a_nodes and then
				attached a_nodes[4] as a_g and then
				attached a_nodes[5] as a_i and then
				attached a_nodes[6] as a_k and then
				attached a_nodes[7] as a_l and then
				attached a_nodes[8] as a_m
				and then
				bst_str_str.root = a_l
				and then
				a_l.left = a_g
				and then
				a_g.right = a_k
				and then
				a_l.right = a_m
		end

	splay_insert11: BOOLEAN
		local
		do
			comment ("splay_insert11: env_root_insert_str_str, insert `h` to test zig-zig case.")

			env_root_insert_str_str

			--          g
			--         / \
			--        c   m
			--       / \ / \
			--      a  e k  o
			--          /    \
			--         i      q

			bst_str_str.insert ("h", "h")

			--          g
			--         / \
			--        c   m
			--       / \ / \
			--      a  e k  o
			--          /    \
			--         i      q
			--        /
			--       h
			--
			-- zig zig
			--
			--          g
			--         / \
			--        c   m
			--       / \ / \
			--      a  e h  o
			--            \  \
			--             i  q
			--              \
			--               k
			--
			-- zig-zag
			--
			--          h
			--         / \
			--        g   m
			--       /   / \
			--      c    i  o
			--     / \    \  \
			--    a   e    k  q

			Result :=
				attached bst_str_str.nodes as a_nodes and then
				attached a_nodes[4] as a_g and then
				attached a_nodes[5] as a_h and then
				attached a_nodes[6] as a_i and then
				attached a_nodes[7] as a_k and then
				attached a_nodes[8] as a_m
				and then
				a_h = bst_str_str.root
				and then
				a_h.left = a_g
				and then
				a_h.right = a_m
				and then
				a_m.left = a_i
				and then
				a_i.right ~ a_k
		end

	splay_insert10: BOOLEAN
		do
			comment ("splay_insert10: env_empty, zig case, insert `a`, `b` and check its structure.")

			env_empty

			bst_str_str.insert ("a", "a")

			--          a

			bst_str_str.insert ("b", "b")

			--          a           b
			--           \   ->    /
			--            b       a

			Result :=
				bst_str_str.root.key ~ "b"
				and then
				attached bst_str_str.nodes as a_nodes and then
				a_nodes[2].left ~ a_nodes[1]
		end

	splay_insert9: BOOLEAN
		do
			comment ("splay_insert9: env_empty, zig case, insert `b`, `a` and check its structure.")

			env_empty

			bst_str_str.insert ("b", "b")

			--          b

			bst_str_str.insert ("a", "a")

			--          b      a
			--         /   ->   \
			--        a          b

			Result :=
				bst_str_str.root.key ~ "a"
				and then
				attached bst_str_str.nodes as a_nodes and then
				a_nodes[1].right ~ a_nodes[2]
		end

	splay_insert8: BOOLEAN
		local
			l_twin_splay_tree: like bst_str_str
			l_keys: ARRAY[STRING]
		do
			comment ("splay_insert8: env_root_insert_str_str, insert in certain order to match a tree")

			create l_twin_splay_tree.make

			root_insert_str_str (l_twin_splay_tree)

			env_empty

			--          g
			--         / \
			--        c   m
			--       / \ / \
			--      a  e k  o
			--          /    \
			--         i      q

			l_keys := <<"i", "q", "a", "e", "k", "o", "c", "m", "g">>

			across
				l_keys is i_key
			loop
				bst_str_str.insert (i_key, i_key)
			end

			Result :=
				l_twin_splay_tree.root.is_same_tree (bst_str_str.root)
		end

	splay_insert7: BOOLEAN
		do
			comment ("splay_insert7: env_empty, insert a ~ j in random order")

			env_empty

			bst_str_str.insert ("a", "a")
			bst_str_str.insert ("j", "a")
			bst_str_str.insert ("b", "a")
			bst_str_str.insert ("i", "a")
			bst_str_str.insert ("c", "a")
			bst_str_str.insert ("h", "a")
			bst_str_str.insert ("d", "a")
			bst_str_str.insert ("g", "a")
			bst_str_str.insert ("e", "a")
			bst_str_str.insert ("f", "a")

			Result :=
				bst_str_str.root.has ("a") and
				bst_str_str.root.has ("b") and
				bst_str_str.root.has ("c") and
				bst_str_str.root.has ("d") and
				bst_str_str.root.has ("e") and
				bst_str_str.root.has ("f") and
				bst_str_str.root.has ("h") and
				bst_str_str.root.has ("i") and
				bst_str_str.root.has ("j")

		end

	splay_insert6: BOOLEAN
		do
			comment ("splay_insert6: env_empty, insert 20 nodes in random order")

			env_empty

			bst_int_int.insert (1, 1)
			bst_int_int.insert (10, 1)
			bst_int_int.insert (2, 1)
			bst_int_int.insert (9, 1)
			bst_int_int.insert (3, 1)
			bst_int_int.insert (11, 1)
			bst_int_int.insert (120, 1)
			bst_int_int.insert (22, 1)
			bst_int_int.insert (49, 1)
			bst_int_int.insert (8, 1)
			bst_int_int.insert (4, 1)
			bst_int_int.insert (7, 1)
			bst_int_int.insert (5, 1)
			bst_int_int.insert (6, 1)
			bst_int_int.insert (53, 1)
			bst_int_int.insert (82, 1)
			bst_int_int.insert (64, 1)
			bst_int_int.insert (27, 1)
			bst_int_int.insert (985, 1)
			bst_int_int.insert (36, 1)

			Result :=
				across
					bst_int_int.root.nodes is i_node
				all
					bst_int_int.root.has_node (i_node)
				end

		end

	splay_insert5: BOOLEAN
		do
			comment ("splay_insert5: env_empty, insert 1 ~ 10 in random order")

			env_empty

			bst_int_int.insert (1, 1)
			bst_int_int.insert (10, 1)
			bst_int_int.insert (2, 1)
			bst_int_int.insert (9, 1)
			bst_int_int.insert (3, 1)
			bst_int_int.insert (8, 1)
			bst_int_int.insert (4, 1)
			bst_int_int.insert (7, 1)
			bst_int_int.insert (5, 1)
			bst_int_int.insert (6, 1)

			Result :=
				across
					1 |..| 10 is i
				all
					bst_int_int.root.has (i)
				end

		end

	splay_insert4: BOOLEAN
		do
			comment ("splay_insert4: env_empty, insert 1 ~ 10 in order")

			env_empty

			across
				1 |..| 10 is i
			loop
				bst_int_int.insert (i, i)
			end

			Result :=
				across
					1 |..| 10 is i
				all
					bst_int_int.root.has (i)
				end

		end

	splay_insert3
		do
			comment ("splay_insert3: POSTCONDITION, wrong insert, checking other_nodes_unchanged")
			create {SPLAY_BAD_INSERT_OTHER_NODES_UNCHANGED} bst_int_int.make
			bst_int_int.insert (148, 987)
			bst_int_int.insert (238, 987)
			bst_int_int.insert (447, 987)
			bst_int_int.insert (528, 987)
			bst_int_int.insert (398, 987)
		end

	splay_insert2
		do
			comment ("splay_insert2: POSTCONDITION, wrong insert, checking has_inserted_node")
			create {SPLAY_BAD_INSERT_HAS_INSERTED_NODE} bst_int_int.make
			bst_int_int.insert (348, 987)
			bst_int_int.insert (173, 129)
			bst_int_int.insert (213, 830)
		end

	splay_insert1
		do
			comment ("splay_insert1: POSTCONDITION, wrong insert, checking size_incremented")
			create {SPLAY_BAD_INSERT_SIZE_INCREMENTED[INTEGER, INTEGER]} bst_int_int.make
			bst_int_int.insert (348, 987)
		end

feature -- delete

	add_delete_tests
		do
			add_violation_case_with_tag ("size_decremented", agent splay_delete1)
			add_violation_case_with_tag ("has_removed_node", agent splay_delete2)
			add_violation_case_with_tag ("other_nodes_unchanged", agent splay_delete3)
			add_boolean_case (agent splay_delete4)
			add_boolean_case (agent splay_delete5)
			add_boolean_case (agent splay_delete6)
			add_boolean_case (agent splay_delete7)
			add_boolean_case (agent splay_delete8)
			add_boolean_case (agent splay_delete9)
			add_boolean_case (agent splay_delete10)
		end


	splay_delete10: BOOLEAN
		local
		do
			comment ("splay_delete10: env_root_insert_str_str, remove `i`, `e`, ")

			env_root_insert_str_str

			--          g
			--         / \
			--        c   m
			--       / \ / \
			--      a  e k  o
			--          /    \
			--         i      q

			bst_str_str.delete ("i")
			bst_str_str.delete ("e")

			--          c
			--         / \
			--        a   g
			--             \
			--              k
			--               \
			--                m
			--                 \
			--                  o
			--                   \
			--                    p


			Result :=
				attached bst_str_str.nodes as a_nodes and then
				attached a_nodes[2] as a_c and then
				attached a_nodes[3] as a_g and then
				attached a_nodes[4] as a_k and then
				attached a_nodes[5] as a_m
				and then
				a_c = bst_str_str.root
				and then
				a_c.right = a_g
				and then
				a_g.right = a_k
				and then
				a_k.right = a_m
				and then
				attached a_g.left as a_g_left and then
				a_g_left.is_external
				and then
				attached a_k.left as a_k_left and then
				a_k_left.is_external
				and then
				attached a_m.left as a_m_left and then
				a_m_left.is_external

		end

	splay_delete9: BOOLEAN
		local
		do
			comment ("splay_delete9: env_root_insert_str_str, remove `i`, edge case")

			env_root_insert_str_str

			--          g
			--         / \
			--        c   m
			--       / \ / \
			--      a  e k  o
			--          /    \
			--         i      q

			bst_str_str.delete ("i")

			--          g
			--         / \
			--        c   k
			--       / \   \
			--      a  e    m
			--               \
			--                o
			--                 \
			--			        q
			Result :=
				attached bst_str_str.nodes as a_nodes and then
				attached a_nodes[4] as a_g and then
				attached a_nodes[5] as a_k and then
				attached a_nodes[6] as a_m
				and then
				a_g ~ bst_str_str.root
				and then
				a_g.right = a_k
				and then
				attached a_k.left as a_k_left and then
				a_k_left.is_external
				and then
				attached a_m.left as a_m_left and then
				a_m_left.is_external

		end

	splay_delete8: BOOLEAN
		local
		do
			comment ("splay_delete8: env_root_insert_str_str, deleting all nodes")

			env_root_insert_str_str

			bst_str_str.delete ("a")
			bst_str_str.delete ("e")
			bst_str_str.delete ("i")
			bst_str_str.delete ("m")
			bst_str_str.delete ("q")
			bst_str_str.delete ("o")
			bst_str_str.delete ("k")
			bst_str_str.delete ("g")
			bst_str_str.delete ("c")

			Result :=
				bst_str_str.root.is_external

		end

	splay_delete7: BOOLEAN
		local
		do
			comment ("splay_delete7: env_root_insert_str_str, deleting a node with two internal children")

			env_root_insert_str_str

			bst_str_str.delete ("g")

			Result :=
				bst_str_str.root.has("a") and
				bst_str_str.root.has("c") and
				bst_str_str.root.has("e") and
				bst_str_str.root.has("i") and
				bst_str_str.root.has("k") and
				bst_str_str.root.has("m") and
				bst_str_str.root.has("o") and
				bst_str_str.root.has("q")
		end

	splay_delete6: BOOLEAN
		local
		do
			comment ("splay_delete6: env_root_insert_str_str, deleting a node with a right internal child")

			env_root_insert_str_str

			bst_str_str.delete ("o")

			Result :=
				bst_str_str.root.has("a") and
				bst_str_str.root.has("c") and
				bst_str_str.root.has("e") and
				bst_str_str.root.has("g") and
				bst_str_str.root.has("i") and
				bst_str_str.root.has("k") and
				bst_str_str.root.has("m") and
				bst_str_str.root.has("q")
		end

	splay_delete5: BOOLEAN
		local
		do
			comment ("splay_delete5: env_root_insert_str_str, deleting a node with a left internal child")

			env_root_insert_str_str

			bst_str_str.delete ("k")

			Result :=
				bst_str_str.root.has("a") and
				bst_str_str.root.has("c") and
				bst_str_str.root.has("e") and
				bst_str_str.root.has("g") and
				bst_str_str.root.has("i") and
				bst_str_str.root.has("m") and
				bst_str_str.root.has("o") and
				bst_str_str.root.has("q")
		end

	splay_delete4: BOOLEAN
		local
		do
			comment ("splay_delete4: env_root_insert_str_str, deleting edge internal node")

			env_root_insert_str_str

			bst_str_str.delete ("i")

			Result :=
				bst_str_str.root.has("a") and
				bst_str_str.root.has("c") and
				bst_str_str.root.has("e") and
				bst_str_str.root.has("g") and
				bst_str_str.root.has("k") and
				bst_str_str.root.has("m") and
				bst_str_str.root.has("o") and
				bst_str_str.root.has("q")
		end

	splay_delete3
		do
			comment ("splay_delete3: POSTCONDITION, wrong delete, checking other_nodes_unchanged")
			create {SPLAY_BAD_DELETE_OTHER_NODES_UNCHANGED} bst_int_int.make

			root_insert_int_int(bst_int_int)

			bst_int_int.delete (1)
		end

	splay_delete2
		do
			comment ("splay_delete2: POSTCONDITION, wrong delete, checking has_removed_node")
			create {SPLAY_BAD_DELETE_HAS_REMOVED_NODE[INTEGER, INTEGER]} bst_int_int.make

			root_insert_int_int(bst_int_int)

			bst_int_int.delete (15)
		end

	splay_delete1
		do
			comment ("splay_delete1: POSTCONDITION, wrong delete, checking size_decremented")
			create {SPLAY_BAD_DELETE_SIZE_DECREMENTED[INTEGER, INTEGER]} bst_int_int.make

			root_insert_int_int(bst_int_int)

			bst_int_int.delete (1)
		end
end
