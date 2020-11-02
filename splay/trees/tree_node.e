note
	description: "[
		A class representing a tree node in a SPLAY_TREE.
		
		A tree node has a comparable key and a value, and a left child, 
		a right child, and a parent pointers. 
		
		A tree node may be either internal or external. 
		An internal node has two non-void children,
		and an external node has two void children.
		
		A node should always keep track of bidirectional pointer reference.
		(i.e. a child must reference their parent, and parent must 
		refer to the child by its either of left or right child.)
		The left, right, and parent pointers must not be itself.
		(i.e. no circular reference)
		]"
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	TREE_NODE[K -> COMPARABLE, V -> ANY]
		-- The two variables `K` and `V` above are called type parameters (`K` for search keys and `V` for data values). A client
		-- or user of the `TREE_NODE` class must specify what `K` and `V` are when declaring a variable. As an example, by
		-- writing `node_1: TREE NODE[INTEGER, PERSON]`, the stored keys are integers and values are references of person
		-- objects. As another example, by writing `node_2: TREE NODE[STRING, REAL]`, the stored keys are references
		-- of string objects and values are single point float values.

inherit
	COMPARABLE
		-- A tree node may be compared to another node by their keys
		-- using comparison operators: `~`, `>`, `<`, `<=`, `>=`.
		-- Inheriting `COMPARABLE` requires client(TREE_NODE) to
		-- implement `is_less`.
		undefine
			out
		end

	DEBUG_OUTPUT
		undefine
			is_equal
		redefine
			out
		end

create
	make_internal, make_external
		-- A tree node may be created as an internal node or
		-- an external node.

-- Note. All features marked with `TODO` in the TREE_NODE class are considered as basic.

feature -- Comparable

	is_less alias "<" (other: TREE_NODE[K, V]): BOOLEAN
			-- Does this node have a smaller key than the node `other`?
		do
			-- This implementation is given to you. Do not modify.
			if
				attached key as a_key and
				attached other.key as a_other_key
			then
				Result := a_key < a_other_key
			end
		end

feature {TREE_NODE, ES_TEST} -- Initialization

	make_external
			-- Makes an external (empty) node.
		do
			-- Implementation does nothing. Do not modify.
		ensure
			-- The postconditions `no_left_child`, `no_right_child` are
			-- completed for you. Do not modify.
			no_left_child:
				not attached left
			no_right_child:
				not attached right
			no_parent:
				-- TODO: complete this postcondition. ***************CHANGED 2020-09-21
				not attached parent -- ADDED THIS, BEFORE IT WAS TRUE
		end

	make_internal (p_key: K; p_value: V)
			-- Makes an internal node.
		do
			-- This implementation is given to you. Do not modify.
			key := p_key
			value := p_value

			create left.make_external

			if
				attached left as a_left
			then
				a_left.parent := Current
			end

			create right.make_external

			if
				attached right as a_right
			then
				a_right.parent := Current
			end
		ensure
			-- The postconditions `key_exists`, `value_exists` are
			-- completed for you. Do not modify.
			key_exists:
				attached key

			value_exists:
				attached value

			left_is_external:
				-- TODO: Complete this postcondition.
				-- Hint: `left` is detachable, so for void safety, the compiler
				-- would not allow you to call `left.is_external` directly.
				-- You'd need to make sure that `left`, the call target, is not void. ************** CHANGED 2020-09-21

				attached left as l_node1 and then l_node1.is_external -- ADDED THIS, adding check results in compile time error

			right_is_external:
				-- TODO: complete this postcondition.
				-- Hint: See above. ************ CHANGED 2020-09-21

				attached right as r_node1 and then r_node1.is_external

			result_node_is_internal:
				is_internal
		end

feature -- Attributes

	key: detachable K assign set_key
		-- The keyword `assign` is used to indicate an assigner command `set_key`,
		-- which can set the value of the attribute `key`.
		-- Without the assigner command, the `key` attribute
		-- will never be changed after the initialization of `Current`.

	value: detachable V assign set_value

	parent: detachable like Current assign set_parent

	left: like parent assign set_left

	right: like left assign set_right

	sibling: like right
		do
			-- This implementation is given to you. Do not modify.
			if
				attached parent as a_parent
			then
				if
					current = a_parent.left
				then
					Result := a_parent.right
				else
					Result := a_parent.left
				end
			else
				-- Result is nothing.
			end
		ensure
			-- These postconditions are completed for you. Do not modify.
			current_is_left_of_parent_means_result_is_right:
				attached parent as a_parent
				implies
				(
					(
						attached a_parent.left as a_left and then
						a_left = Current
					)
					implies
					(
						attached a_parent.right as a_right and then
						Result = a_right
					)
				)
			current_is_right_of_parent_means_result_is_left:
				attached parent as a_parent
				implies
				(
					(
						attached a_parent.right as a_right and then
						a_right = Current
					)
					implies
					(
						attached a_parent.left as a_left and then
						Result = a_left
					)
				)
			current_no_parent_means_no_result:
				not attached parent as a_parent
				implies
				not attached Result
		end

	-- I ADDED THIS*************************8
--	val1: INTEGER

feature -- Status setting
		-- All set commands except `set_to_internal`
		-- are implemented. Do not modify.
	set_parent (p_node: like parent)
			-- Sets `Current`'s parent.
		do
			parent := p_node
		ensure
			parent = p_node
		end

	set_left (p_node: like left)
			-- Sets `Current`'s left.
		do
			left := p_node
		ensure
			left = p_node
		end

	set_right (p_node: like right)
			-- Sets `Current`'s right.
		do
			right := p_node
		ensure
			right = p_node
		end

	set_key (p_key: like key)
			-- Sets `Current`'s key.
		do
			key := p_key
		ensure
			key = p_key
		end

	set_value (p_value: like value)
			-- Sets `Current`'s value.
		do
			value := p_value
		ensure
			value = p_value
		end

	set_to_internal (p_key: K; p_value: V)
			-- Transforms the current external node to be an internal node storing `p_key` and `p_value`.
		require
			is_external
--		local -- ******** I ADDED THIS
--			l_node1: TREE_NODE[K, V] -- added
--			l_node2: TREE_NODE[K, V] -- added
		do
			-- TODO: Implement this command so that the postcondition is satisfied.
			-- Hints: You must transform the external `Current` node to an internal node that has
			--		  `p_key` and `p_value`. Think about the difference between the definition of
			-- 		  an internal node and an external node. Make sure to satisfy the postconditions.
			-- ********************** CHANGED 2020-09-22


--			l_node1 := make_internal (p_key, p_value) -- creates internal node
			-- I think there might be a way to use make_internal and set current node as internal and than children as make_external

--			Current.set_key (p_key)
--			Current.set_value (p_value)

--			Current.set_left (create {TREE_NODE[K, V]}.make_external) -- CLASS INVARIANT VIOLATED b/c right doesnt get attached but left does
--			Current.set_right (create {TREE_NODE[K, V]}.make_external) -- I dont understand why class invariant gets violated before the postcondition

--			Current.right := create {TREE_NODE[K, V]}.make_external -- doesnt work etierh
--			Current.left := create {TREE_NODE[K, V]}.make_external

--			l_node1 := create {TREE_NODE[K, V]}.make_external -- doesnt work either
--			l_node2 := create {TREE_NODE[K, V]}.make_external
--			l_node1.set_parent (Current)
--			l_node2.set_parent (Current)
--			Current.set_left (l_node1)
--			Current.set_right (l_node2)

			-- created left  and right external childs, since current node switched from external to internal
			-- CLASS INVARIANT VIOLATED: if_internal_then_left_and_right_exist: is_internal implies attached left and attached right

			Current.make_internal (p_key, p_value) -- well its just that, might need to do further testing tho*****************


		ensure
			-- These postconditions are completed for you. Do not modify.
			current_is_internal:
				is_internal
			parent_does_not_change:
				parent = (old parent)
		end

feature -- Insertion

	insert_left (p_node: like Current)
			-- Inserts the tree node `p_node` in the left external child,
			-- by replacing the left external node with the `p_node`.
			-- This command is used to build trees from scratch.
			-- e.g., `{STARTER_TESTS}.env_int_int`
		require
			p_node_is_inertnal_node: ---- WRONG SPELLING? CHECK IF IT MATTERS*************
				p_node.is_internal
			smaller_than_Current:
				p_node < Current
			left_is_external:
				-- TODO: Complete this precondition.  ***************************** `CHANGED 2020-09-22`
				-- Hint: left child must be external.
				attached Current.left as l_node1 and then l_node1.is_external -- *******ADDED THIS, need to check if its left child is external
				--attached left as l_node1 and then l_node1.is_external
		do
			-- TODO: Implement this command so that the postcondition is satisfied. ******* `CHANGED 2020-09-22`
			-- replaces left external node if it even exists
			Current.set_left (p_node) --*******ADDED THIS -- note p_node is an internal node
			p_node.set_parent (Current)
		ensure
			left_is_assigned:
				-- TODO: Complete this postcondition.
				-- Hint: `Current`'s left child must be `p_node`. ******* `CHANGED 2020-09-22`
				-- might need to use old? incase during implementation it got changed
				Current.left = old p_node -- added*

			keep_left_parent_reference:
				-- TODO: Complete this postcondition.
				-- Hint: The left child keeps its parent reference correctly. ******* `CHANGED 2020-09-22`
				p_node.parent = Current
		end

	insert_right (p_node: like Current)
			-- Inserts the tree node `p_node` in the right external child,
			-- by replacing the right external node with the `p_node`.
			-- This command is used to build trees from scratch.
			-- e.g., {STARTER_TESTS}.env_int_int
		require
			p_node_is_inertnal_node:
				p_node.is_internal
			bigger_or_equal_to_Current:
				Current < p_node
			right_is_external:
				-- TODO: Complete this precondition.
				-- Hint: right child must be external.  ******* `CHANGED 2020-09-22`
				attached Current.right as l_node1 and then l_node1.is_external -- ADDED
		do
			-- TODO: Implement this command so that the postcondition is satisfied. ******* `CHANGED 2020-09-22`
			Current.set_right (p_node) -- ADDED
			p_node.set_parent (Current)

		ensure
			right_is_assigned:
				-- TODO: Complete this postcondition.
				-- Hint: `Current`'s right child must be `p_node`. ******* `CHANGED 2020-09-22`
				Current.right = old p_node

			keep_right_parent_reference:
				-- TODO: Complete this postcondition.
				-- Hint: The right child keeps its parent reference correctly. ******* `CHANGED 2020-09-22`
				p_node.parent = Current
		end

feature -- Status Query

	is_external: BOOLEAN
			-- Is the `Current` node external node? ( Does this node have both `left` and `right` not attached? )
		do
			-- This implementation is given to you. Do not modify.
			Result := not attached left and not attached right
		ensure
			has_no_children:
				-- This postcondition is completed for you. Do not modify.
				Result = (not attached left and not attached right)
		end

	is_internal: BOOLEAN
			-- Is the `Current` node internal node? ( Does this node have either `left` and `right` attached? )
		do
			-- This implementation is given to you. Do not modify.
			Result := not is_external
		ensure
			has_a_child:
				-- This postcondition is completed for you. Do not modify.
				Result = (attached left or attached right)
		end

	count: INTEGER
			-- Returns the number of descendants of the tree rooted at `Current`.
			-- Descendants include itself (if internal) and internal nodes.
		do
			-- TODO: Implement this query so that the postcondition is satisfied.
--			 attached left as l_1 and then left.count + 1
--			 attached right as l_1 and then right.count + 1
	--TRIED OUT THE HELPER METHOD, BUT REALIZED THAT VAL IS DIFFERENT FOR EACH NODE.. since its node dependent
--				val1 := 0
--				Current.count_helper1
--				Result := val1
-----------------------------------------------------------------
--				if Current.is_external then  -- If external then return 0
--					-- return result
--				else
--					if
--						attached left as l_1
----						and then
----						attached l_1.left as l_1_left
--					then
--						Result := l_1.count + 1

--					end

--					if
--						attached right as l_1
----						and then
----						attached l_1.right as l_1_right
--					then
--						Result := l_1.count + 1
--					end

--					Result := if attached left as l and then l.count  + 1 + if attached right as r and then r.count

--					Result := 1 + attached left as l_1 and then l_1.count + attached right as l_2 and then l_2.count
--				end

			if Current.is_internal then
				Result := 1 + count_helper1
			end


		ensure
			correct_result:
				-- TODO: Complete this postcondition.
				-- Hint: the return value of this query (`Result`) is the same as the size
				-- of the linear version (`nodes`) of the tree rooted at `Current`. CHANGED 2020-09-25
				Result = nodes.count
		end

	-- Helper method for count
	count_helper1: INTEGER
		do
			if Current.is_internal then
				if
					attached left as l_1 and then
--					attached l_1.left as l_2 -- this works as well
					not l_1.is_external
				then
					Result := 1 + Result + l_1.count_helper1
				end
				if
					attached right as l_1 and then
--					attached l_1.right as l_2 -- this works as well
					not l_1.is_external
				then
					Result := 1 + l_1.count_helper1 + Result
				end
			end
		end

	min_node: TREE_NODE[K, V]
			-- Returns the node with minimum key from the tree rooted at `Current`.
		require
			current_is_not_external:
				not is_external
		do
			-- TODO: Implement this query so that the postcondition is satisfied. **** `CHANGED 2020-09-23`
--			create Result.make_external -- I DID NOT ADD THIS
--			Result := min_node_helper1(Current)
			Result := Current.min_node_helper1

		ensure
			left_external_means_current_is_minimum:
				-- TODO: Complete this postcondition.
				-- Hint: `left` being external means `Current` is a leaf node. **** `CHANGED 2020-09-23`
				attached Result.left as l_node1 and then l_node1.is_external -- if its not attached then left is void, thus left is an external node

			result_is_minimum_in_this_subtree:
				-- TODO: Complete this postcondition.
				-- Hint: the `Result` is the smallest node among all the descendants.
				---*************** HOW TO CHECK THIS!?!?!?!
				-- do i traverse the whole tree and check for ALL that result is <= ?
--				across  as  all  end
--				true ------------- ************** CANT FIGURE IT OUTTTTTTTTTTTT*****************
				Current.nodes[1] = Result

			result_is_internal:
				-- This postcondition is completed for you. Do not modify.
				Result.is_internal
		end

	min_node_helper1: TREE_NODE[K, V]
		do
			Result := Current
			if Current.is_internal then
				if
					attached left as l_1 and then
--					attached l_1.left as l_2
					not l_1.is_external
				then
					if l_1 < Current then
						Result := l_1.min_node_helper1
					end
				end
				if
					attached right as l_1 and then
--					attached l_1.right as l_2
					not l_1.is_external
				then
					if l_1 < Current then
						Result := l_1.min_node_helper1
					end
				end
			else
				Result := Current
			end

		end

--	min_node_helper1(r_node: TREE_NODE[K, V]): TREE_NODE[K, V]
--	do
--		Result := r_node -- initalize r_node
--		if Current.is_internal then
--			if
--				attached left as l_1 and then
--				attached l_1.left as l_2
--			then
--				if Current < r_node then
--					Result := Current -- else no need to change result as its the same,
--									  -- only if current's key is less than result then change result
--					Result := l_1.min_node_helper1 (Result)
--				end
--			end

--			if
--				attached right as l_1 and then
--				attached l_1.right as l_2
--			then
--				if Current < r_node then
--					Result := Current -- else no need to change result as its the same,
--									  -- only if current's key is less than result then change result
--					Result := l_1.min_node_helper1 (Result)
--				end
--			end
--		end
--	end

	max_node: TREE_NODE[K, V]
			-- Returns the node with maximum key from the tree rooted at `Current`.
		require
			current_is_not_external:
				not is_external
		do
			-- TODO: Implement this query so that the postcondition is satisfied.
--			create Result.make_external
			Result := Current.max_node_helper1
		ensure
			right_external_means_current_is_maximum:
				-- TODO: Complete this postcondition.
				-- Hint: `right` being external means `Current` is a leaf node. ******`CHANGED 2020-09-23`
				attached Result.right as r_node1 and then r_node1.is_external -- ADDED this

			result_is_maximum_in_this_subtree:
				-- TODO: Complete this postcondition.
				-- Hint: the `Result` is the biggest node among all the descendants.
--				True -- CANT FIGURE OUT
				Current.nodes[nodes.count] = Result
			result_is_internal:
				-- This postcondition is completed for you. Do not modify.
				Result.is_internal
		end

	max_node_helper1: TREE_NODE[K, V]
		do
			Result := Current
			if Current.is_internal then
				if
					attached left as l_1 and then
--					attached l_1.left as l_2
					not l_1.is_external
				then
					if l_1 > Current then
						Result := l_1.max_node_helper1
					end
				end
				if
					attached right as l_1 and then
--					attached l_1.right as l_2
					not l_1.is_external
				then
					if l_1 > Current then
						Result := l_1.max_node_helper1
					end
				end
			else
				Result := Current
			end

		end

feature -- Status report

	tree_search (p_key: K): TREE_NODE[K, V]
			-- Returns either: 1. The node with the key `p_key` or
			-- 				   2. An external node where the node with the key `p_key` supposed to be.
		do
			-- TODO: Implement this query so that the postcondition is satisfied.
			-- Hints: Cover the 4 cases of search:
			-- Case 1: Current node is external.
			-- Current node is internal and:
			-- Case 2: Current node's key matches `p_key`.
			-- Case 3: Current node's key is bigger than `p_key`.
			-- Case 4: Current node's key is smaller than `p_key`. ******`CHANGED 2020-09-23`

			Result := Current -- Initalizing
			-- Case 1: Current node is external:
			if Current.is_external then
				Result := Current
			end
			--*******************ASK JACKIE WHAT IF KEY IS VOID?
			-- WHAT DO WE RETURN???!?
			-- ans from jackie : cant even input void key cuz it aint detachable

			-- Current node is internal and:
			-- Case 2: Current node's key matches `p_key`.
			if attached Current.key as k_1 then

				if k_1 = p_key then -- ***** what if key is void?
					Result := Current
				end

				-- Case 3: Current node's key is bigger than `p_key`.
				if k_1 > p_key then
					if attached left as l_node then
						Result := l_node.tree_search(p_key)
					end
				end

				-- Case 4: Current node's key is smaller than `p_key`.
				if k_1 < p_key then
					if attached right as r_node then
						Result := r_node.tree_search(p_key)
					end
				end
			end


		ensure
			case_of_key_found:
				-- TODO: Complete this postcondition.
				-- Hint: When we found the node, the result must be the current node due to the recursive
				-- nature of this query. ******`CHANGED 2020-09-23`
				key = p_key implies Result = Current -- works for test cases, but what if void?

			case_of_key_not_found:
				-- TODO: Complete this postcondition.
				-- Hint: If the node is external, it means the `Result` must be the current node.
				Current.is_external implies Result = Current


		end

	value_search (p_key: K): detachable V
			-- Returns mapped value from the key `p_key` from an internal node
			-- by searching the subtree rooted at `Current`.
		do
			-- TODO: Implement this query so that the postcondition is satisfied.
			-- Hint: Think of various cases of search for `p_key`.  ******`CHANGED 2020-09-23`

			Result := Current.tree_search (p_key).value
		ensure
			case_of_key_found:
				-- TODO: Complete this postcondition.
				-- Hint: `p_key` existing means that the return value is same as one we find within
				-- 		 the same tree.  ******`CHANGED 2020-09-23`
				attached Result implies Result = Current.tree_search (p_key).value -- CHECK IF THIS IS CORRECT

			-- TA WROTE THIS:
			-- We do not worry about specifying the other case (`case_of_key_not_found`).
			-- As an optional exercise, you are encouraged to think about how you might write it.
		end

	has (p_key: K): BOOLEAN
			-- Returns true if the subtree rooted at `Current` has an internal node with
			-- the key `p_key` among its descendants. Returns false otherwise.
		do
			-- TODO: Implement this command so that the postcondition is satisfied.
			-- Hint: Think of various cases of search for `p_key`.  ******`CHANGED 2020-09-24`
			Result := False -- if key aint attached
			if
				Current.tree_search (p_key).is_internal and Current.tree_search (p_key).key = p_key -- dont need attached?
			then
				Result := True
			end
		ensure
			correct_search_result:
				-- TODO: Complete this postcondition.
				-- Hint: Result must be same as if we found the `p_key` from subtree rooted at `Current`. ******`CHANGED 2020-09-24`
				Result implies p_key = Current.tree_search (p_key).key
		end

	has_node (p_node: TREE_NODE[K,V]): BOOLEAN
			-- Returns true if the subtree rooted at `Current` has
			-- an internal node with the same key as `p_node` among its descendants.
			-- Returns false otherwise.
		do
			-- TODO: Implement this command so that the postcondition is satisfied.
			-- Hint: You may use previous queries. ******`CHANGED 2020-09-24`
			if attached p_node.key as p_key then
--				Result := Current.has (p_key) --this also works
				if Current.has (p_key) and then Current.value_search(p_key) = p_node.value then
					Result := True
				end
			else
				Result := False
			end

		ensure
			correct_search_result:
				-- TODO: Complete this postcondition.
				-- Hint: Result must be same as the internal node we found from subtree rooted at `Current` with the key `p_key`.

				Result implies
				attached p_node.key as p_k and then
				(Current.has (p_k) and p_node.value = Current.value_search (p_k))
		end

feature -- Conversion

	nodes: LIST[TREE_NODE[K, V]]
			-- Returns a linear ordering of nodes which corresponds to
			-- an in-order traversal of the tree rooted at Current.
		do
			-- TODO: Implement this command so that the postcondition is satisfied.
			-- Hint: To satisfy the void safety required by the compiler,
			-- you must first initialize the return value `Result`.
			-- Notice that the static return type of this query is a deferred class `LIST`,
			-- to create an object, you must use one of its effective descendant classes. ******`CHANGED 2020-09-24`

--			create {LINKED_LIST[TREE_NODE[K, V]]} Result.make -- GIVEN

			Result := create {LINKED_LIST[TREE_NODE[K, V]]}.make -- reinitalize the list via attribute

			Current.nodes_inorder_helper1(Result)


		ensure
			number_of_nodes_not_changed:
				-- This postcondition is completed for you. Do not modify.
				count = old count
			inorder_means_result_is_sorted_incrementally:
				-- TODO: Complete this postcondition. ******`CHANGED 2020-09-24`
				across
					1 |..| (Result.count - 1) is l_i
				all
					Result[l_i] < Result[l_i+1]
				end

			no_tree_structure_changed:
				-- TODO: Complete this postcondition.
				-- Hint 1: the tree rooted at Current **before** calling `nodes` has
				-- the same structure (defined by `is_same_tree`) as that **after** calling `nodes`.
				-- Hint 2: Invoking `is_same_tree(node)` is effectively invoking `Current.is_same_tree(node)`.
				-- ******`CHANGED 2020-09-24`
--				True ------------------- NEEED TO IMPLEMENT IS SAME TREE
				(old Current.deep_twin).is_same_tree (Current)
		end

	nodes_inorder_helper1(list1: LIST[TREE_NODE[K, V]]) -- Reference obj, will get changed even when placed into a method
		do
--			Result := list1
			if Current.is_internal then
				if
					attached left as l_1 and then
					not l_1.is_external
				then
					l_1.nodes_inorder_helper1(list1)
				end

				list1.force (Current) -- adding current node to list

				if
					attached right as l_1 and then
					not l_1.is_external
				then
					l_1.nodes_inorder_helper1(list1)
				end
			else
--				Result := list1 -- not needed this lline since we already have it at the top
			end
		end

feature -- Helper features for postconditions

	is_same_tree(other: TREE_NODE[K, V]): BOOLEAN
			-- Is the tree rooted at Current same (in terms of structure) as tree rooted at other?
		do
			-- TODO: Implement this command so that the postcondition is satisfied.
			-- Hint: `Current` and `other` denote the same tree if:
			-- 1. `Current` and `other` are the same node (by content, not refernce).
			-- 			Notice that `is_less_than` is already implemented for you.
			--			According to `COMPARABLE`, parent of `TREE_NODE`, `is_equal` is then
			--			defined as: n1.is_equal(n2) <=> not (n1 < n2) and not (n2 < n2).
			--			That is, you can just use ~ to compare the two nodes.
			-- 2. Recursively, `Current`'s left subtree, if existing, is the same tree as other's left subtree, if existing.
			--		And similarly for the `Current`'s right subtree and `other`'s right subtree.
			Result := True
			if Current.is_internal and other.is_internal then

				if
					(Result and attached left as l_1 and then attached other.left as l_2)
					and then (l_1.is_internal and l_2.is_internal)
				then
					if l_1 ~ l_2 then

						Result := l_1.is_same_tree(l_2)
					else
						Result := False
					end
				else
					Result := False
					if
						(attached left as l_1 and then attached other.left as l_2)
						and then (l_1.is_external and l_2.is_external)
					then
						Result := True -- if both are external then true
					end
				end

				if
					(Result and attached right as l_1 and then attached other.right as l_2)
					and then (l_1.is_internal and l_2.is_internal)
				then
					if l_1 ~ l_2 then

						Result := l_1.is_same_tree(l_2)

					else
						Result := False
					end
				else
					Result := False
					if
						(attached right as l_1 and then attached other.right as l_2)
						and then (l_1.is_external and l_2.is_external)
					then
						Result := True -- if both are external then true
					end
				end

			else
				Result := False -- if one of them is not internal therefore other tree has more nodes so its not the same, false
				if Current.is_external and other.is_external then
					Result := True
				end
			end
		end

--				if
--					(attached left as l_1 and then
--						not l_1.is_external)
--					and
--					(attached other.left as l_2 and then
--						not l_2.is_external)
--				then
--					if (Current ~ other) then -- if current.is_equal(other)
--						l_1.is_same_tree(l_2)
--					else
--						Result := False
--					end
--				end



--				if
--					attached right as l_1 and then -- if Current's right is attached and is internal
--						not l_1.is_external
--					and
--					attached other.right as l_2 and then -- and if other's right is attached and is internal
--						not l_2.is_external
--				then									-- then check if both Current and other are same by content
--					if (Current ~ other) then -- if current.is_equal(other)
--						l_1.is_same_tree(l_2)
--					else
--						Result := False
--					end
--				end

feature -- Out

	debug_output: STRING
			-- Debugger will show the `Result`.
		do
			Result := out
		end

	out: STRING
			-- Do not modify this.
		do
			if
				attached key as a_key and then
				attached value as a_value
			then
				Result := "(" + a_key.out + ", " + a_value.out + ")"
			else
				Result := "x"
			end

		end

invariant
	-- These class invariants are given to you. Do not modify them.
	-- However, you may study them carefully because they
	-- specify the defintions of external vs. internal nodes.

	if_internal_then_key_value_exist:
		is_internal implies attached key and attached value

	if_internal_then_left_and_right_exist:
		is_internal implies attached left and attached right

	if_external_then_left_and_right_do_not_exist:
		is_external implies not attached left and not attached right

	left_is_not_itself:
		attached left as a_left
		implies
		a_left /= Current

	right_is_not_itself:
		attached right as a_right
		implies
		a_right /= Current

	parent_is_not_itself:
		attached parent as a_parent
		implies
		a_parent /= Current
end
