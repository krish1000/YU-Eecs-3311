note
	description: "[
		A self balancing binary search tree using a rotation called splaying.

		A splay tree lets most frequently(recently) accessed elements stay near
		the root. This allows comparably faster lookup to a recently accessed
		elements than a normal binary search tree.

		A splay tree does not have logarithmic upper bound respect to the height
		of the tree, however the splay tree has a guaranteed amortised logarithmic
		running time for insertions, searches, and deletion.
		]"
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	SPLAY_TREE [K -> COMPARABLE, V -> ANY]

inherit
	BALANCED_BST [K, V]
		redefine
			out
		end

create 	-- Contrast this `create` clause with it being absent in `BALANCED_BST`.
		-- Because the `SPLAY_TREE` class is effective (not deferred), we must delcare
		-- a `create` clause that lists all commands that can be used as constructors.
	make

feature {NONE} -- Command

	make
			-- Makes the current balanced splay tree empty.
		do
			-- This implementation is given to you. Do not modify.
			create root.make_external
		ensure
			-- These postconditions are completed for you. Do not modify.
			root_exists:
				attached root
			root_empty:
				attached root as a_root and then
				a_root.count = 0
		end

feature -- Attribute

	root: TREE_NODE[K, V]
			-- The root of the splay tree.
			-- This root is never Void (i.e., it is always attached).

feature -- Traversal

	nodes: LIST[like root]  -- `like root`: each member in the list has its type
							-- corresponding to that of `root` (anchor type)
			-- Returns a linear order corresponding to an in-order traversal from the `root`.
		do
			-- This implementation is given to you. Do not modify.
			-- Caveat: The correctness of `{SPLAY_TREE}.nodes` depends solely on `{TREE_NODE}.nodes` that you implement.
			Result := root.nodes
		end

feature -- Basic

	has (p_key: K): BOOLEAN
			-- Does the current tree have a node storing key equal to `p_key`?
		do
			-- TODO: Implement this query so that the postcondition is satisfied.
			-- Hint: A splay tree has its root of type `TREE_NODE`.

		ensure then -- In a descendant class, a `then` is needed after `ensure`. This is called sub-contracting, and we will learn about this later.
			root_has_the_node_with_the_p_key:
				-- TODO: Complete this postcondition.
				-- Hint: Return value is logically equivalent to whether or not `p_key` exists in the current tree.
				True
		end

	has_node (p_node: TREE_NODE[K,V]): BOOLEAN
			-- Does current tree have a node same key as `p_node`?
		do
			-- TODO: Implement this query so that the postcondition is satisfied.
			-- Hint: A splay tree has its root of type `TREE_NODE`.

		ensure then -- In a descendant class, a `then` is needed after `ensure`. This is called sub-contracting, and we will learn about this later.
			root_has_the_p_node:
				-- TODO: Complete this postcondition.
				-- Hint: Return value is logically equivalent to whether or not `p_node` exists in the current tree.
				True
		end

	count: INTEGER
			-- Returns the number of nodes in the tree.
		do
			-- TODO: Implement this query so that the postcondition is satisfied.
			-- Hint: A splay tree has its root of type `TREE_NODE`.

		ensure then -- In a descendant class, a `then` is needed after `ensure`. This is called sub-contracting, and we will learn about this later.
			root_count:
				-- TODO: Complete this postcondition.
				-- Hint: Return value is the same as the size of subtree rooted as `root`.
				True
		end

	is_empty: BOOLEAN
			-- Checks if the BST has no nodes.
		do
			-- TODO: Implement this query so that the postcondition is satisfied.
			-- Hint: When is this tree empty?

		ensure then -- In a descendant class, a `then` is needed after `ensure`. This is called sub-contracting, and we will learn about this later.
			empty_if_count_is_zero:
				-- TODO: Complete this postcondition.
				-- Hint: Return value is logically equivalent to whether or not the subtree rooted at `root` is empty.
				True
		end

	relink (p_parent, p_child: TREE_NODE[K, V]; p_make_left_child: BOOLEAN)
			-- If `p_make_left_child` is true, replace `p_child` as the left child of `p_parent`.
			-- Otherwise, replace `p_child` as the right child of `p_parent`.
		do
			-- TODO: Complete the implementation so that the postcondition is satisfied.

		ensure
			childs_parent_is_linked:
				-- TODO: Complete this postcondition.
				-- Hint: `p_child`'s parent must be consistent.
				True
			case_of_relinking_the_left_child:
				-- TODO: Complete this postcondition.
				True
			case_of_relinking_the_right_child:
				-- TODO: Complete this postcondition.
				True
		end

feature -- Intermediate

	-- For simplicity of this lab, we do not consider postconditions for this section of intermediate splay operations.
	-- As an optional challenge, what postconditions can you come up with?
	-- Discuss your answer with Jinho (TA) or Jackie (instructor).
	-- Do not include your answer in the submission for grading.

	rotate (p_node: TREE_NODE[K, V])
			-- Performs a single rotation from the node `p_node`.
		require
			-- These preconditions are given to you. Do not modify them.
			has_a_parent_to_rotate:
				attached p_node.parent
		do
			-- TODO: Complete the implementation.
			-- Hint: Refer to the `Problem` and `Tutorials` sections of your lab instructions for details.

		end

	splay(p_node: TREE_NODE[K,V])
			-- Iteratively, splay the node `p_node` up to the root.
			-- Each iteration may trigger one or two rotations.
		do
			-- TODO: Complete the implementation.
			-- Hint: Refer to the `Problem` and `Tutorials` sections of your lab instructions for details.

		end

feature -- Advanced

	search (p_key: K): detachable V
			-- Returns the value mapped from the search key `p_key`.
		do
			-- TODO: Implement this command so that the postcondition is satisfied.
			-- Hint 1: You might want to reuse how search is done in `TREE_NODE`.
			-- Hint 2: The current tree after a successful search should be restructured
			-- 		so that more frequently accessed nodes are brought closer to the root.
			-- Hint 3: Refer to the `Problem` and `Tutorials` sections of your lab instructions for details.
			Result := root.value
		ensure then -- In a descendant class, a `then` is needed after `ensure`. This is called sub-contracting, and we will learn about this later.
			-- This postcondition is completed for you. Do not modify.
			count_is_same:
				count = old count

			case_of_key_found:
				-- TODO: Complete this postcondition.
				-- Hint: If `p_key` exists within the subtree rooted at `Current`,
				-- 		the result must be the value of the node we searched.
				True

			case_of_key_not_found:
				-- TODO: Complete this postcondition.
				-- Hint: If `p_key` does not exist within the subtree rootd at `Current`,
				-- 		the result must be the value of the node that does not explicitly hold a value.
				True

			consistent_in_orders:
				-- TODO: Complete this postcondition.
				-- Hint 1. Performing in-order traversals before and after the search operation
				-- 		   yield two identical sequences of nodes.
				-- Hint 2. If you want to compare contents two lists, say `list1` ~ `list2`,
				--		   you must make sure that `list1.object_comparison` and `list2.object_comparison` are both true.
				--		   e.g., writing `list1.compare_objects` changes `list1.object_comparison` to true.
				-- 		   Otherwise, `list1` ~ `list2` will only compare references of their stored items.
				-- Hint 3. Rather than comparing two lists directly using ~, you may write a
				--		   logical quantification (universal or existential) to compare them.
				True
		end

	insert (p_key: K; p_value: V)
			-- Inserts a new node with the key `p_key` and the value `p_value`.
			-- It is required that `p_key` is not an existing key.
			-- It is expected that after the key-value pair is inserted into the tree,
			-- splay operation(s) are performed from the new node up to the root.
		require else -- In a descendant class, an `else` is needed after `require`. This is called sub-contracting, and we will learn about this later.
			-- This precondition is given to you. Do not modify it.
			no_previously_existing_key:
				not has(p_key)
		do
			-- TODO: Implement this command so that the postcondition is satisfied.
			-- Hint: Refer to the `Problem` and `Tutorials` sections of your lab instructions for details.

		ensure then -- In a descendant class, a `then` is needed after `ensure`. This is called sub-contracting, and we will learn about this later.
			size_incremented:
				-- TODO: Complete this postcondition.
				True

			has_inserted_node:
				-- TODO: Complete this postcondition.
				True

			other_nodes_unchanged:
				-- TODO: Complete this postcondition.
				-- Hint 1: Consider comparing the old list of `nodes` (from an in-order traversal) with the new list of `nodes`.
				-- Hint 2: Every node except the one that was inserted should be same.
				True
		end

	delete (p_key: K)
		-- Deletes an existing node with the key equal to `p_key`.
		-- Supplier requires that:
		-- 		A node with the key `p_key` exists.
		-- 		This node is an internal node.
		-- See the precondition of `{BALANCED_BST}.delete`.
		do
			-- TODO: Implement this command so that the postcondition is satisfied.
			-- Hint: Refer to the `Problem` and `Tutorials` sections of your lab instructions for details.

		ensure then -- In a descendant class, a `then` is needed after `ensure`. This is called sub-contracting, and we will learn about this later.
			size_decremented:
				-- TODO: Complete this postcondition.
				True

			has_removed_node:
				-- TODO: Complete this postcondition.
				True

			other_nodes_unchanged:
				-- TODO: Complete this postcondition.
				-- Hint: Consider comparing the old list of `nodes` (from an in-order traversal) with the new list of `nodes`.
				--		 Every node except the one that was deleted should be same.
				True
		end

feature -- Out

	debug_output: STRING
			-- Debugger will show the `Result`.
			-- Do not modify this.
			-- [x<--(1, 1)-->(2, 2), x<--(2, 2)-->x]
		do
			Result := out
		end

	out: STRING
			-- Do not modify this.
			-- [x<--(1, 1)-->(2, 2), x<--(2, 2)-->x]
		do
			Result := "["

			across
				nodes is i_node
			loop
				if
					attached i_node.left as a_left and then
					attached i_node.right as a_right
				then
					Result := Result
						+ a_left.out
						+ "<--"
						+ i_node.out
						+ "-->"
						+ a_right.out
				else
					Result := Result
				end

				if
					i_node /= nodes.last
				then
					Result := Result + ", "
				end
			end

			Result := Result + "]"

		end

invariant
	-- These class invariants are given to you. Do not modify them.
	-- However, you may study them carefully because they
	-- specify the defintions of external vs. internal nodes.

	no_root_means_count_is_zero:
		(root.is_external) = (root.count = 0)

	root_does_not_have_a_parent:
		not attached root.parent

	count_one_or_more_means_root_exists:
		(root.count >= 1) = (root.is_internal)

	nodes_are_sorted:
		across
			1 |..| (root.count - 1) is i
		all
			root.nodes[i] < root.nodes[i + 1]
		end

	left_child_keeps_reference_to_parent:
		(
			across
				nodes is i_node
			all
				attached i_node.left as a_left implies
				a_left.parent = i_node
			end
		)

	right_child_keeps_reference_to_parent:
		(
			across
				nodes is i_node
			all
				attached i_node.right as a_right implies
				a_right.parent = i_node
			end
		)

	left_is_smaller:
		across
			nodes is i_node
		all
			(
				attached i_node.left as a_left and then
				a_left.is_internal
			)
			implies
			a_left < i_node
		end

	right_is_bigger:
		across
			nodes is i_node
		all
			(
				attached i_node.right as a_right and then
				a_right.is_internal
			)
			implies
			i_node < a_right
		end

end
