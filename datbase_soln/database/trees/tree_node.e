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

-- Note to Jinho: In the spec version, in the first instance, we do not distribute the solution (as some students are granted extra time until Tuesday).
-- Just give the spec version of Lab1 for the `trees` cluster.
-- Once Lab1 has been graded, we will release the solution and tests to students.

class
	TREE_NODE[K -> COMPARABLE, V -> ANY]
		-- The two variables K and V above are called type parameters (K for search keys and V for data values). A client
		-- or user of the TREE NODE class must specify what K and V are when declaring a variable. As an example, by
		-- writing node 1: TREE NODE[INTEGER, PERSON] , the stored keys are integers and values are references of person
		-- objects. As another example, by writing node 2: TREE NODE[STRING, REAL] , the stored keys are references
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

feature -- Comparable

	is_less alias "<" (other: TREE_NODE[K, V]): BOOLEAN
			-- Does this node have a smaller key than the node `other`?
		do
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
			-- Implementation does nothing.
		ensure
			no_left_child:
				not attached left
			no_right_child:
				not attached right
			no_parent:
				not attached parent
		end

	make_internal (p_key: K; p_value: V)
			-- Makes an internal node.
		do
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
			key_exists:
				attached key
			value_exists:
				attached value
			left_is_external:
				attached left as a_left and then
				a_left.is_external
			right_is_external:
				attached right as a_right and then
				a_right.is_external
			result_node_is_internal:
				is_internal
		end

feature -- Attributes

	key: detachable K assign set_key

	value: detachable V assign set_value

	parent: detachable like Current assign set_parent

	left: like parent assign set_left

	right: like left assign set_right

	sibling: like right
		do
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

feature -- Status setting
		-- All set commands except `set_to_internal`
		-- are implemented. Do not modify.
	set_parent (p_node: like parent)
			-- Sets Current's parent.
		do
			parent := p_node
		ensure
			parent = p_node
		end

	set_left (p_node: like left)
			-- Sets Current's left.
		do
			left := p_node
		ensure
			left = p_node
		end

	set_right (p_node: like right)
			-- Sets Current's right.
		do
			right := p_node
		ensure
			right = p_node
		end

	set_key (p_key: like key)
			-- Sets Current's key.
		do
			key := p_key
		ensure
			key = p_key
		end

	set_value (p_value: like value)
			-- Sets Current's value.
		do
			value := p_value
		ensure
			value = p_value
		end

	set_to_internal (p_key: K; p_value: V)
			-- Transforms the Current external node to be an internal node storing `p_key` and `p_value`.
		require
			is_external
		local
			l_parent: like parent
		do
			l_parent := parent
			make_internal(p_key, p_value)
			parent := l_parent
		ensure
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
		require
			p_node_is_inertnal_node:
				p_node.is_internal
			smaller_than_Current:
				p_node < Current
			left_is_external:
				attached left as a_left and then a_left.is_external
		do
			left := p_node
			p_node.parent := Current
		ensure
			left_is_assigned:
				attached left as a_left and then a_left = p_node
			keep_left_parent_reference:
				attached left as a_left2 and then a_left2.parent = Current
		end

	insert_right (p_node: like Current)
			-- Inserts the tree node `p_node` in the right external child,
			-- by replacing the right external node with the `p_node`.
			-- This command is used to build trees from scratch.
		require
			p_node_is_inertnal_node:
				p_node.is_internal
			bigger_or_equal_to_Current:
				Current < p_node
			right_is_external:
				attached right as a_right and then a_right.is_external
		do
			right := p_node
			p_node.parent := Current
		ensure
			right_is_assigned:
				attached right as a_right and then a_right = p_node
			keep_right_parent_reference:
				attached right as a_right2 and then a_right2.parent = Current
		end

feature -- Status Query

	is_external: BOOLEAN
			-- Is the Current node external node? ( Does this node have both left and right not attached? )
		do
			Result := not attached left and not attached right
		ensure
			has_no_children:
				Result = (not attached left and not attached right)
		end

	is_internal: BOOLEAN
			-- Is the Current node internal node? ( Does this node have either left and right attached? )
		do
			Result := not is_external
		ensure
			has_a_child:
				Result = (attached left or attached right)
		end

	count: INTEGER
			-- Returns the number of descendants of the tree rooted at `Current`.
			-- Descendants include itself (if internal) and internal nodes.
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
				Result := Result + 1 -- Finally, add the current node.
			end
		ensure
			correct_result:
				Result = nodes.count
		end

	min_node: TREE_NODE[K, V]
			-- Returns the node with minimum key from the tree rooted at `Current`.
		require
			current_is_not_external:
				not is_external
		do
			if
				attached left as a_left and then 	-- If left child exists,
				a_left.is_internal					-- and if the left node is internal node,
			then
				Result := a_left.min_node -- min node from left subtree is the minimum node.
			else -- If left is external,
				Result := Current -- then the current is the minimum subtree.
			end
		ensure
			left_external_means_current_is_minimum:
				attached left as a_left and then a_left.is_external implies Result = Current
			result_is_minimum_in_this_subtree:
				Result = nodes.first
			result_is_internal:
				Result.is_internal
		end

	max_node: TREE_NODE[K, V]
			-- Returns the node with maximum key from the tree rooted at `Current`.
		require
			current_is_not_external:
				not is_external
		do
			if
				attached right as a_right and then 	-- If right child exists,
				a_right.is_internal					-- and if the left node is internal node,
			then
				Result := a_right.max_node -- max node from right subtree is the maximum node.
			else -- If right is external,
				Result := Current -- then the current is the maximum subtree.
			end
		ensure
			right_external_means_current_is_maximum:
				attached right as a_right and then a_right.is_external implies Result = Current
			result_is_maximum_in_this_subtree:
				Result = nodes.last
			result_is_internal:
				Result.is_internal
		end

feature -- Status report

	tree_search (p_key: K): TREE_NODE[K, V]
			-- Returns either: 1. The node with the key `p_key` or
			-- 				   2. An external node where the node with the key `p_key` supposed to be.
		do
			if
				is_external -- If leaf node,
			then
				Result := Current 	-- 1. external node Current is where the node with key p_key supposed to be.
			else -- If internal node,
				if
					attached key as a_key -- internal node implies key exists, so this is always the case.
				then
					if
						p_key ~ a_key -- If the node with the key p_key is found,
					then
						Result := Current -- return the node with the key p_key. (Current)
					elseif
						p_key < a_key -- If the node with the key p_key is less than current node,
					then
						if
							attached left as a_left	-- If left exists, (Whether it is external or internal)	
						then
							Result := a_left.tree_search(p_key) -- Result is left subtree's tree search result.
						else -- If left is void,
							Result := Current -- This never happens, because this node is internal. This is here for syntax reason.
						end
					else -- p_key > a_key, If the node with the key p_key is bigger than current node,
						if
							attached right as a_right -- If right exists, (Whether it is external or internal)
						then
							Result := a_right.tree_search(p_key) -- Result is right subtree's tree search result.
						else -- If right void,
							Result := Current -- This never happens, because this node is internal. This is here for syntax reason.
						end
					end
				else -- If key does not exist, but this route never happens, as this is internal node case.
					Result := Current
				end
			end
		ensure
			case_of_key_found:
				(attached key as a_key and then p_key ~ a_key) implies Result = Current
			case_of_key_not_found:
				is_external implies Result = Current

		end

	value_search (p_key: K): detachable V
			-- Returns mapped value from the key `p_key` from an internal node
			-- by searching the subtree rooted at `Current`.
		local
			l_node: TREE_NODE[K, V]
		do

			l_node := tree_search(p_key) -- Find a node with p_key.

			if
				l_node.is_internal and
				l_node.key ~ p_key
			then
				Result := l_node.value -- return its value.
			else
				-- Otherwise, we do not return anything.
			end
		ensure
			case_of_key_found:
				has(p_key)
				implies
				attached tree_search(p_key) as a_node and then
				a_node.is_internal and then
				(Result = a_node.value)
		end

	has (p_key: K): BOOLEAN
			-- Returns true if the subtree rooted at `Current` has an internal node with
			-- the key `p_key` among its descendants. Returns false otherwise.
		local
			l_node: TREE_NODE[K, V]
		do

			l_node := tree_search(p_key)
			if
				l_node.is_internal and
				attached l_node.key as a_key
			then
				Result := a_key ~ p_key
			end
		ensure
			correct_search_result:
				Result
				=
				(
					attached tree_search(p_key) as a_node and then
					a_node.is_internal and then
					attached a_node.key as a_key and then
					a_key ~ p_key
				)
		end

	has_node (p_node: TREE_NODE[K,V]): BOOLEAN
			-- Returns true if the subtree rooted at `Current` has
			-- an internal node with the same key as `p_node` among its descendants.
			-- Returns false otherwise.
		do
			if
				is_external -- If the Current node is external,
			then
				Result := false
			else -- If the Current node is internal,
				if
					attached p_node.key as p_key -- we know that key exists,
				then
					Result := has(p_key) -- check if there is a node with p_key.
				end
			end
		ensure
			correct_search_result:
				Result = (attached p_node.key as a_p_node_key and then has(a_p_node_key))
		end

feature -- Conversion

	nodes: LIST[TREE_NODE[K, V]]
			-- Returns a linear ordering of nodes which corresponds to
			-- an in-order traversal of the tree rooted at Current.
		do
			-- Make an empty list of nodes.
			create {ARRAYED_LIST[TREE_NODE[K, V]]} Result.make(count)

			if
				attached left as a_left and then a_left.is_internal -- If left is internal,
			then
				Result.append(a_left.nodes) -- include the roots of the left subtree.
			end

			if
				is_internal -- Include this node only if this is internal node. (This is needed for when Current is empty)
			then
				Result.force (Current) -- Include the root.
			end


			if
				attached right as a_right and then a_right.is_internal -- If right subtree exists from the root,
			then
				Result.append(a_right.nodes) -- include the roots of the right subtree.
			end
		ensure
			number_of_nodes_not_changed:
				count = old count
			inorder_means_result_is_sorted_incrementally:
				across
					1 |..| (count - 1) is i
				all
					Result[i] < Result[i+1]
				end
			no_tree_structure_changed:
				Current.is_same_tree(old Current.deep_twin)
		end

feature -- Helper features for postconditions

	is_same_tree(other: TREE_NODE[K, V]): BOOLEAN
			-- Is the tree rooted at Current same (in terms of structure) as tree rooted at other?
		do

			Result := -- True if both root, left and right subtree are same.
				Current ~ other -- are both roots same?
				and then -- Are both left subtrees same?
					(
						( -- Are both subtree's left attached?
							attached left as a_left
							and
							attached other.left as a_other_left
						)
						implies
						( -- If so, are both left subtree same?
							a_left.is_same_tree (a_other_left)
						)
					)
					and
					(
						-- If any one of them are not attached,
					  	-- Are both not attached?
						(
							not attached left = not attached other.left
						)
					)
				and then -- Are both right subtrees same?
					(
						( -- Are both subtree's right attached?
							attached right as a_right
							and
							attached other.right as a_other_right
						)
						implies
						( -- If so, are both right subtree same?
							a_right.is_same_tree (a_other_right)
						)
					)
					and
					(
						-- If any one of them are not attached,
					  	-- Are both not attached?
						(
							not attached right = not attached other.right
						)
					)
		end


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
