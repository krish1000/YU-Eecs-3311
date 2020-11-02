note
	description: "Example test cases."
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	EXAMPLE_TESTS

inherit
	TEST_ENVIRONMENT

create
	make

feature {NONE} -- Initialization

	make
			-- initialize tests
		do
			env_empty

			add_splay_rotate_tests
			add_splay_splay_tests
			add_splay_search_tests
			add_splay_insert_tests
			add_splay_delete_tests
		end

feature -- rotate

	add_splay_rotate_tests
		do
			add_boolean_case (agent splay_rotate1)
		end

	splay_rotate1: BOOLEAN
		do
			comment ("splay_rotate1: env_empty, insert two, rotate from node 2")

			--          2
			--         /
			--        1

			env_empty

			bst_int_int.insert (1, 1)
			bst_int_int.insert (2, 2)

			bst_int_int.rotate (bst_int_int.nodes[1])

			--          1
			--           \
			--            2

			Result :=
				bst_int_int.root.key = 1
		end

feature -- splay

	add_splay_splay_tests
		do
			add_boolean_case(agent splay_splay1)
		end

	splay_splay1: BOOLEAN
		do
			comment ("splay_splay1: splay, zig-zig")
			env_empty

			bst_int_int.insert (1, 1)
			bst_int_int.insert (2, 2)
			bst_int_int.insert (3, 3)
			bst_int_int.splay (bst_int_int.nodes[1])
			Result := bst_int_int.root = bst_int_int.nodes[1]
		end


feature -- search

	add_splay_search_tests
		do
			add_boolean_case (agent splay_search1)
		end

	splay_search1: BOOLEAN
		local
			l_search_result: STRING
		do
			comment ("splay_search1: env_root_insert_str_str, search 'g'")

			env_root_insert_str_str

			l_search_result := bst_str_str.search("g")

			Result := l_search_result ~ "g"

		end

feature -- insert

	add_splay_insert_tests
		do
			add_boolean_case (agent splay_insert1)
		end

	splay_insert1: BOOLEAN
		local
		do
			comment ("splay_insert1: env_empty, insert 1, check the root's key")

			env_empty
			bst_int_int.insert(1, 1)
			Result :=
				bst_int_int.root.key ~ 1
		end

feature -- delete

	add_splay_delete_tests
		do
			add_boolean_case (agent splay_delete1)
			add_boolean_case (agent splay_delete2)
		end

	splay_delete1: BOOLEAN
		local
		do
			comment ("splay_delete1: env_empty, insert 1, delete 1, check its count")

			env_empty

			bst_int_int.insert (1, 1)

			bst_int_int.delete (1)

			Result :=
				bst_int_int.count = 0

		end

	splay_delete2: BOOLEAN
		local
		do
			comment ("splay_delete2: asdf")

			env_empty

			bst_int_int.insert (1, 1)
			bst_int_int.insert (2, 2)
			bst_int_int.insert (3, 3)
			bst_int_int.insert (4, 4)
			bst_int_int.insert (5, 5)
			bst_int_int.insert (6, 6)
			bst_int_int.insert (7, 7)
			bst_int_int.insert (8, 8)
			bst_int_int.insert (9, 9)
			bst_int_int.insert (10, 10)

			print(bst_int_int.out)
			bst_int_int.delete (7)
			print("%N" + "%N" + bst_int_int.out)
			Result :=
				bst_int_int.count = 9

		end

end
