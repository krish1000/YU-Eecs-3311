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
			-- Hint: A splay tree has its root of type `TREE_NODE`. ************ `CHANGED 2020-09-26`

			Result := Current.root.has (p_key)

		ensure then -- In a descendant class, a `then` is needed after `ensure`. This is called sub-contracting, and we will learn about this later.
			root_has_the_node_with_the_p_key:
				-- TODO: Complete this postcondition.
				-- Hint: Return value is logically equivalent to whether or not `p_key` exists in the current tree.
--				True ************ `CHANGED 2020-09-26`
				Result implies attached root.tree_search (p_key).key as found_key and then found_key = p_key
				-- Pretty sure this postcondition isn't copmlete, but gonna keep it this way for now********888
		end

	has_node (p_node: TREE_NODE[K,V]): BOOLEAN
			-- Does current tree have a node same key as `p_node`?
		do
			-- TODO: Implement this query so that the postcondition is satisfied.
			-- Hint: A splay tree has its root of type `TREE_NODE`. ************ `CHANGED 2020-09-26`
			Result := Current.root.has_node (p_node)

		ensure then -- In a descendant class, a `then` is needed after `ensure`. This is called sub-contracting, and we will learn about this later.
			root_has_the_p_node:
				-- TODO: Complete this postcondition.
				-- Hint: Return value is logically equivalent to whether or not `p_node` exists in the current tree.
--				True ************ `CHANGED 2020-09-26`
				Result implies attached old p_node.key as p_key and then (Current.root.tree_search (p_key) = p_node)

		end

	count: INTEGER
			-- Returns the number of nodes in the tree.
		do
			-- TODO: Implement this query so that the postcondition is satisfied.
			-- Hint: A splay tree has its root of type `TREE_NODE`. ************ `CHANGED 2020-09-26`
			Result := Current.root.count
		ensure then -- In a descendant class, a `then` is needed after `ensure`. This is called sub-contracting, and we will learn about this later.
			root_count:
				-- TODO: Complete this postcondition.
				-- Hint: Return value is the same as the size of subtree rooted as `root`. ************ `CHANGED 2020-09-26`
				Result = nodes.count -- Prettty surethis is not complete, but gonna keep this for now
		end

	is_empty: BOOLEAN
			-- Checks if the BST has no nodes.
		do
			-- TODO: Implement this query so that the postcondition is satisfied.
			-- Hint: When is this tree empty? ************ `CHANGED 2020-09-26`
			if Current.root.is_external then -- When root is external then it is empty?
				Result := True
			else
				Result := False
			end

		ensure then -- In a descendant class, a `then` is needed after `ensure`. This is called sub-contracting, and we will learn about this later.
			empty_if_count_is_zero:
				-- TODO: Complete this postcondition.
				-- Hint: Return value is logically equivalent to whether or not the subtree rooted at `root` is empty.
				-- ************ `CHANGED 2020-09-26`
				Result implies Current.root.count = 0
		end

	relink (p_parent, p_child: TREE_NODE[K, V]; p_make_left_child: BOOLEAN)
			-- If `p_make_left_child` is true, replace `p_child` as the left child of `p_parent`.
			-- Otherwise, replace `p_child` as the right child of `p_parent`.
		do
			-- TODO: Complete the implementation so that the postcondition is satisfied.************ `CHANGED 2020-09-26`
--			p_child.set_parent (p_parent)
			p_child.parent := p_parent
			if p_make_left_child then
				p_parent.set_left (p_child)
			else
				p_parent.set_right (p_child)
			end
--			p_child.set_parent (p_parent)
		ensure
			childs_parent_is_linked:
				-- TODO: Complete this postcondition.
				-- Hint: `p_child`'s parent must be consistent.
				p_child.parent = p_parent
			case_of_relinking_the_left_child:
				-- TODO: Complete this postcondition.
				p_make_left_child implies p_parent.left = p_child
			case_of_relinking_the_right_child:
				-- TODO: Complete this postcondition.
				not p_make_left_child implies p_parent.right = p_child
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
--		local -- I ADDED THIS*************************************************************
--			tempn: TREE_NODE[K,V]
		do
			-- TODO: Complete the implementation. ************ `CHANGED 2020-09-26`
			-- Hint: Refer to the `Problem` and `Tutorials` sections of your lab instructions for details.

			-- CASE 1: np does not exist (node is in root) do nothing
			if not attached p_node.parent then
				-- do nothing

			-- CASE 2 & 3: p and gp exist
			elseif attached p_node.parent as p_parent and then attached p_parent.parent as p_gparent then
				-- Case 2: n is left child of np, replace np with n, set n's right as np.
				if p_parent.left = p_node then
					if attached p_node.right as p_right then
						relink (p_parent, p_right, True) -- n rightchild sets as np's left child
					end
					relink (p_node, p_parent, False) -- sets np as rightchild of n
				-- Case 3: n is right child of np, replace np with n, set n's left as np.
				elseif p_parent.right = p_node then
					if attached p_node.left as p_left then
						relink (p_parent, p_left, False) -- n leftchild sets as np's right child
					end
					relink (p_node, p_parent, True) -- sets np as leftchild of
				end
				-- Case 2 & 3: set p_node as left or right gp; dependent on whether np was left or right child of gp
				p_node.set_parent (p_gparent) -- n sets parent as gp
				if p_gparent.left = p_parent then
					relink (p_gparent, p_node, True) -- sets p_node as leftchild of gp
				else
					relink (p_gparent, p_node, False) -- sets p_node as rightchild of gp
				end

			-- CASE 4 & 5: np is root, gp does not exist ... dont need not attached parent but doing it just 2 be safe
			-- could honestly use root = p_node.parent and no need to change gparent
			elseif attached p_node.parent as p_parent and then not attached p_parent.parent then
				-- Case 4: n is left child of np, replace root with n. set root's right as np
				if p_parent.left = p_node then
					if attached p_node.right as p_right then
						relink (p_parent, p_right, True) -- n rightchild sets as np's left child
					end
					relink (p_node, p_parent, False) -- root is np in this case
				-- Case 5: n is right child of np, replace root with n. set root's left as np
				elseif p_parent.right = p_node  then -- could use else honestly
					if attached p_node.left as p_left then
						relink (p_parent, p_left, False) -- n leftchild sets as np's right child
					end
					relink (p_node, p_parent, True)
				end
				root := p_node -- new root
				root.parent := void
			end
		end

	splay(p_node: TREE_NODE[K,V])
			-- Iteratively, splay the node `p_node` up to the root.
			-- Each iteration may trigger one or two rotations.
		do
			-- TODO: Complete the implementation.  ************ `CHANGED 2020-09-26`
			-- Hint: Refer to the `Problem` and `Tutorials` sections of your lab instructions for details.
			if Current.root /= p_node then -- not sure if this correcto
				rotate (p_node)
				splay (p_node)
			end
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
--			Result := root.value
			--- WRONG IMPLEMNTAITON BUT GONNA KEEP THIS FOR NOW:::::*************

			Result := Current.root.value_search(p_key)
			if attached Result then
				splay (Current.root.tree_search (p_key)) -- splays the node that has value
			elseif attached Current.root.tree_search (p_key).parent as p_parent then
				splay(p_parent) -- splays parent of external
			end

			-- CURRENT TREE SHOULD BE RESTRUCTURED AFTER SUCCESFUL SEARCH
			-- im assuming splay on the node that was found?


		ensure then -- In a descendant class, a `then` is needed after `ensure`. This is called sub-contracting, and we will learn about this later.
			-- This postcondition is completed for you. Do not modify.
			count_is_same:
				count = old count

			case_of_key_found:
				-- TODO: Complete this postcondition.
				-- Hint: If `p_key` exists within the subtree rooted at `Current`,
				-- 		the result must be the value of the node we searched.
				attached Result implies root.tree_search (p_key).value = Result

			case_of_key_not_found:
				-- TODO: Complete this postcondition.
				-- Hint: If `p_key` does not exist within the subtree rootd at `Current`,
				-- 		the result must be the value of the node that does not explicitly hold a value.
				not attached Result implies root.tree_search (p_key).is_external

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

				(old root.nodes.deep_twin).count = root.nodes.count and then
				(across
					1 |..| root.nodes.count is l_i
				all
					(old root.nodes.deep_twin)[l_i] ~ root.nodes[l_i]
				end)
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
		local -- I ADDED THIS
			l_j : like root.count -- I ADDED THIS FOR POST CONDITION
			l_i : like root.count -- I ADDED THIS FOR POST CONDITION
		do
			-- TODO: Implement this command so that the postcondition is satisfied.
			-- Hint: Refer to the `Problem` and `Tutorials` sections of your lab instructions for details.

			-- create internal for this node,
			-- splay after insertion on this node
			(Current.root.tree_search (p_key)).set_to_internal (p_key, p_value) -- finds external node where it node should be placed, sets it to internal

			splay (Current.root.tree_search (p_key)) -- splays tree based on the inserted node
			l_j := 1 -- NEED TO INITALIZE FOR POST CONDITION
			l_i := 1 -- NEED TO INITALIZE FOR POST CONDITION
		ensure then -- In a descendant class, a `then` is needed after `ensure`. This is called sub-contracting, and we will learn about this later.
			size_incremented:
				-- TODO: Complete this postcondition.
				old root.count + 1 = root.count

			has_inserted_node:
				-- TODO: Complete this postcondition.
				root.has (p_key)

			other_nodes_unchanged:
				-- TODO: Complete this postcondition.
				-- Hint 1: Consider comparing the old list of `nodes` (from an in-order traversal) with the new list of `nodes`.
				-- Hint 2: Every node except the one that was inserted should be same.

				-- go till previous count, since if new node is added at the end, out of bounds
--				across
--					1 |..| (old root.count) is dummy_var
--				all
--					if (old root.nodes.deep_twin)[l_i] /~ root.nodes[l_j] then
--						if root.nodes[l_j] = Current.root.tree_search (p_key) then -- if the node was the one we inserted
--							l_i := l_i - 1
--							True
--						else
--							False
--						end
--					else
--						True -- when node contents are the same
--					end
--					l_j := l_j + 1
--				end
--				root.nodes[2] := create {TREE_NODE[K,V]}.make_internal (2, 4)
				across
					1 |..| (old root.count) is i_counter
				all
					root.has_node ((old root.nodes.deep_twin)[i_counter])
				end


		end

--	insert_helper1(p_key: K; p_value: V): TREE_NODE[K,V]
--		do
--			if Current then
--				
--			end
--		end

	delete (p_key: K)
		-- Deletes an existing node with the key equal to `p_key`.
		-- Supplier requires that:
		-- 		A node with the key `p_key` exists.
		-- 		This node is an internal node.
		-- See the precondition of `{BALANCED_BST}.delete`.
		local -- I ADDED THIS
			n: TREE_NODE[K,V] -- I ADDED THIS, for ease of use and saves keep calling treesearch
		do
			-- TODO: Implement this command so that the postcondition is satisfied.
			-- Hint: Refer to the `Problem` and `Tutorials` sections of your lab instructions for details.

			-- ALWAYS SPLAY TO TOP!!!
			n := root.tree_search (p_key)
			splay (n) -- splays p_key's node to top

			-- CASE 1: n's left and right childs are external, delete n by replacing it with an external node
			if
				attached n.left as n_l and then n_l.is_external
				and
				attached n.right as n_r and then n_r.is_external
			then
--				create {TREE_NODE[K,V]}n.make_external -- sets n to external
				-- n should be root since both childs are external
				root := create {TREE_NODE[K,V]}.make_external -- so make root external

			-- CASE 2: if only one child is external, delete n by replacing it with the internal child
			elseif
				attached n.left as n_l and then n_l.is_external
				OR -- using OR
				attached n.right as n_r and then n_r.is_external
			then
				if attached n.left as n_l and then n_l.is_internal then -- left is internal
					root := n_l
					root.parent := void
				elseif attached n.right as n_l and then n_l.is_internal then
					root := n_l
					root.parent := void
				end

			-- CASE 3: Both childs are internal, replace n with left child.
			-- Find n's predecessor node (largest key in leftsubtree) ez max_node,
			-- SPLAY n's pred, connect npred with n's rightsubtree
			elseif
				attached n.left as n_l and then n_l.is_internal
				and
				attached n.right as n_r and then n_r.is_internal
			then
				-- get left child, and seperate it from the root (the node we aboutta delete)
				n_l.parent := void
				-- temp set n_1 as root
				root := n_l -- so we can call splay on it
				splay(n_l.max_node) -- predecessor node should be root now

				n_r.set_parent(root)
				root.set_right (n_r) -- set's root right as n_r
				-- thats it? need to test after i think
			end



		ensure then -- In a descendant class, a `then` is needed after `ensure`. This is called sub-contracting, and we will learn about this later.
			size_decremented:
				-- TODO: Complete this postcondition. 2020-09-27
				old root.count - 1 = root.count

			has_removed_node:
				-- TODO: Complete this postcondition. 2020-09-27
				not root.has (p_key)

			other_nodes_unchanged:
				-- TODO: Complete this postcondition.
				-- Hint: Consider comparing the old list of `nodes` (from an in-order traversal) with the new list of `nodes`.
				--		 Every node except the one that was deleted should be same. 2020-09-27 cHanGEd
				across
					1 |..| (root.count) is i_counter
				all
					(old root.deep_twin).has_node (root.nodes[i_counter])
				end

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
