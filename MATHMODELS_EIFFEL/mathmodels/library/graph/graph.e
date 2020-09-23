note
	description: "[
		Mathematical model for a Directed Graph = (vertices, edges)
		where vertices is a set of vertices in generic parameter V, 
		and edges is a relation in vertices:
			vertices: SET [V]
			edges: REL [V, V]
		Has immutable queries and commands 
		to add and remove vertices and edges. 
		Also derived queries for outgoing and incoming edges:
			outgoing (v: V): REL[V, V]
			incoming (v: V): REL[V, V]
			adjacent (v: V): SEQ [V]
		`adjacent` is a sequence of vertices that may be
		ordered in descendants such as COMPARABLE_GRAPH[G].
		Derived queries such as: 
			reachable (src: V): SEQ[V]
			shortest_path(v1, v2: V): detachable SEQ[V]
			is_a_shortest_path (v1, v2: V; seq: SEQ[V]): BOOLEAN
			cycle (v: V): detachable SEQ[V]
			is_acyclic: BOOLEAN
			topologically_sorted: SEQ[V]
			is_topologically_sorted (seq: SEQ[V]): BOOLEAN
		where `reachable` uses breadth-first search starting with vertex `src`,
		to return the set of all nodes reachable from `src`.
		`shortest_path` returns the shortest path between `v1` and `v2` if it exists.
	]"
	author: "JSO and JW"
	date: "$Date$"
	revision: "$Revision$"

class
	GRAPH [V -> attached ANY]

inherit
	ITERABLE[V]
		redefine
			out,
			is_equal
		end

	DEBUG_OUTPUT
		redefine
			out,
			is_equal
		end

create
	make_empty, make_from_tuple_array

convert
	make_from_tuple_array ({attached ARRAY [TUPLE [V, V]]})

feature {NONE} -- Constructor

	make_empty
		do
			create edges.make_empty
			create vertices.make_empty
		end

	make_from_tuple_array (a: ARRAY [TUPLE [V, V]])
		local
			l_pair: PAIR [V, V]
		do
			create vertices.make_empty
			create edges.make_empty
			across
				a as pair
			loop
				l_pair := pair.item
				edges.extend (l_pair)
				vertices.extend (l_pair.first)
				vertices.extend (l_pair.second)
			end
		end

feature -- Iterable

	new_cursor: ITERATION_CURSOR[V]
		do
			Result := vertices.new_cursor
		end

feature -- Conversion to array.

	as_array: ARRAY [TUPLE [V, V]]
			-- Return edges as an array of tuples
		do
			create Result.make_from_array (edges.as_array)
			Result.compare_objects
		end

	array_compare (a, b: ARRAY [TUPLE [V, V]]): BOOLEAN
			-- compare two arrays of tuple
		local
			l_a, l_b: PAIR [V, V]
			i: INTEGER
		do
			if a.count = b.count and a.lower = b.lower then
				from
					i := a.lower
					Result := True
				until
					i > a.count or not Result
				loop
					l_a := a [i]
					l_b := a [i]
					Result := Result and l_a ~ l_b
					i := i + 1
				end
			end
		end

feature -- model

	edges: REL [V, V]

	vertices: SET [V]

feature -- basic queries

	edge_count: INTEGER
			-- number of outgoing edges
		do
			Result := edges.count
		end

	vertex_count: INTEGER
		do
			Result := vertices.count
		end

	is_empty: BOOLEAN
			-- is the graph empty?
		do
			Result := vertex_count = 0 and edge_count = 0
		end

	has_vertex (v: V): BOOLEAN
		do
			Result := vertices.has (v)
		end

	has_edge (p: PAIR [V, V]): BOOLEAN
			-- does graph have pair `p`
			-- can use `p` as tuple
		do
			Result := edges.has (p)
		end

	outgoing (v: V): REL[V, V]
			-- The set of outgoing edges from `v`
		do
			create Result.make_empty
			across
				edges as e
			loop
				if e.item.first ~ v then
					Result.extend (e.item)
				end
			end
		ensure
			consistent_counts:
				Result.count = (edges @< v).count
			source_is_v:
				across
					Result as e
				all
					e.item.first ~ v
				end
		end

	incoming (v: V): REL[V, V]
			-- The set of incoming edges to `v`
		do
			create Result.make_empty
			across
				edges as e
			loop
				if e.item.second ~ v then
					Result.extend (e.item)
				end
			end
		ensure
			consistent_counts:
				Result.count = (edges @> v).count
			destination_is_v:
				across
					Result as e
				all
					e.item.second ~ v
				end
		end

	in_degree_count (v: V): INTEGER
			-- number of incoming edges of vertex `v`
		require
			has_vertex (v)
		do
			Result := incoming (v).count
		end

	out_degree_count (v: V): INTEGER
			-- number of outgoing edges of vertex `v`
		require
			has_vertex (v)
		do
			Result := outgoing (v).count
		end

	adjacent (v: V): SEQ [V]
			-- The list of vertices adjacent to `v` via outgoing edges.
			-- This list is not necessarily sorted.
		do
			create Result.make_empty
			across
				outgoing(v) as e
			loop
				Result.append (e.item.second)
			end
		ensure
			consistent_counts:
				Result.count = outgoing(v).count
			source_is_v:
				across
					Result as x
				all
					outgoing(v).has ([v, x.item])
				end
		end

	vertex_extended alias "+" (v: V): like Current
			-- extend if not already in
		do
			Result := Current.deep_twin
			Result.vertex_extend (v.deep_twin)
		end

	edge_extended alias "|\/|" (e: PAIR [V, V]): like Current
			-- extend if not already in
		require
			valid_vertices: has_vertex (e.first) and has_vertex (e.second)
		do
			Result := Current.deep_twin
			Result.edge_extend (e.deep_twin)
		end

	vertex_removed alias "-" (v: V): like Current
		do
			Result := Current.deep_twin
			Result.vertex_remove (v)
		end

	edge_removed alias "|\" (e: PAIR [V, V]): like Current
		do
			Result := Current.deep_twin
			Result.edge_remove (e)
		end

feature -- advanced queries

	topologically_sorted: SEQ[V]
			-- Return a sequence <<..., vi, ..., vj, ...>> such that
			-- (vi, vj) in edges => i < j
			-- A topological sort is performed.
		require
			is_acyclic
		local
			in_degree: FUN[V, INTEGER]
			q: ARRAYED_QUEUE[V]
			front, x: V
		do
			-- Calculate the in-degree (i.e., number of incoming edges) of each vertex
			create in_degree.make_empty
			across
				vertices as v
			loop
				in_degree.extend ([v.item, incoming(v.item).count])
			end

			create q.make (vertices.count)

			-- First put in vertices that do not depend on others (i.e., with no incoming edges).
			across
				in_degree as pair
			loop
				if pair.item.second = 0 then
					q.extend (pair.item.first)
				end
			end

			-- Perform a BFS and gradually add vertices to the sorted sequence.
			from
				create Result.make_empty
			until
				q.is_empty
			loop
				front := q.item
				q.remove
				Result.append (front)
				across
					adjacent (front) as adj
				loop
					x := adj.item
					in_degree.override_by ([x, in_degree[x] - 1])
					if in_degree[x] = 0 then
						q.extend (x)
					end
				end
			end
		ensure
			is_topologically_sorted (Result)
		end

	is_topologically_sorted (seq: like topologically_sorted): BOOLEAN
		do
			Result :=
				-- consistent_counts
				seq.count = vertices.count
				and then
				-- all_vertices_covered
				across
					seq as v
				all
					vertices.has (v.item)
				end
				and then
				-- ∀i,j∈ 1..seq.count : i = j ∨[seq[i], seq[j]] ∈ edges ⇒ i < j
				-- sorted:
				across
					1 |..| seq.count as i
				all
					across
						1 |..| seq.count as j
					all
						i.item = j.item or else (edges.has ([seq[i.item], seq[j.item]]) implies i.item < j.item)
					end
				end
		end

	reachable (src: V): SEQ[V]
			-- Breadth-First Search
			-- Starting with vertex `src`,
			-- return the set of all nodes reachable from `src`.
			-- Uses `adjacent` (a sorted list in COMPARABLE_GRAPH) rather than `outgoing` (always unsorted REL)
		require
			has_vertex (src)
		local
			visited: SET [V] -- visited vertices
			q: ARRAYED_QUEUE [V]
			l_front, l_adjacent: V
		do
			create Result.make_empty
			create visited.make_empty
			create q.make (vertices.count)
			q.compare_objects
			from
				q.extend (src)
			until
				q.is_empty
			loop
				l_front := q.item
				if not visited.has (l_front) then
					visited.extend (l_front) -- mark front of queue as visited
					Result.append (l_front)
					across
						adjacent(l_front) as x -- enqueue all q.item's neighbours
					loop
						l_adjacent := x.item
						if visited.has (l_adjacent) then
								-- there is a cycle!
						else
							q.extend (l_adjacent) -- not yet visited
						end
					end
				end
				q.remove
			end
		ensure
			every_vertex_in_result_is_reachable_from_src:
				across
					Result as v
				all
					is_reachable (src, v.item)
				end
			every_vertex_reachable_from_src_is_in_result:
				across
					vertices as v
				all
					is_reachable (src, v.item) implies Result.has (v.item)
				end
		end

	paths (v1, v2: V): SET[SEQ [V]]
			-- Return the set of all acyclic paths (ones not containing cycles) between `v1` and `v2`.
		local
			parents: REL [V, V]
			init_suffixes: SET[SEQ[V]]
			init_visited: SET[V]
		do
			parents := bfs_for_paths (v1)
				-- `v2` having a parent means that it is reachable from `v1`
			create Result.make_empty
			if parents.domain.has (v2) then
				create init_visited.make_empty
				create init_suffixes.make_empty
				init_suffixes.extend (create {SEQ[V]}.make_empty)
				Result := paths_helper(v1, v2, init_visited, parents, init_suffixes)
			end
		ensure
			all_paths_are_valid:
				across
					Result as path
				all
					is_valid_path (path.item) and then
					path.item.first ~ v1 and then
					path.item.last ~ v2
				end
		end

	shortest_path (v1, v2: V): detachable SEQ [V]
			-- Return the shortest path between `v1` and `v2` if it exists.
			-- Bredth-First Search is used without assuming that there are no self-loops.
		local
			parent: FUN [V, V]
			complete: BOOLEAN
			current_vertex: V
		do
			parent := bfs_for_shortest_path (v1)
				-- `v2` having a parent means that it is reachable from `v1`
			if parent.domain.has (v2) then
				from
					current_vertex := v2
					create Result.make_empty
				until
					complete
				loop
					Result.prepend (current_vertex)
					if current_vertex ~ v1 then
						complete := true
					else
						check
							parent.domain.has (current_vertex)
						end
						current_vertex := parent [current_vertex]
					end
				end
			elseif v1 ~ v2 then
				create Result.make_empty
				Result.prepend (v1)
			end
		ensure
			void_result:
				not attached Result implies
					not (					has_vertex (v1)
							and then	has_vertex (v2)
							and then 	is_reachable (v1, v2))
			result_is_valid:
				attached Result implies
					is_valid_path (Result) and then
					Result.first ~ v1 and then
					Result.last ~ v2
			result_is_the_shortest:
				attached Result implies
					across
						paths (v1, v2) as path
					all
						Result.count <= path.item.count
					end
		end

	is_a_shortest_path (v1, v2: V; seq: SEQ[V]): BOOLEAN
			-- does `seq` denote a shortest path between `v1` and `v2`?
			-- When there are multiple shortest paths between `v1` and `v2`,
			-- return TRUE if `seq` is any one of them.
		do
			Result :=
--				result_is_valid:
								is_valid_path (seq)
				and then 	seq.first ~ v1
				and then 	seq.last ~ v2
				and then
--				result_is_the_shortest:
					across
						paths (v1, v2) as path
					all
						seq.count <= path.item.count
					end
		end

	shortest_path_via_dijkstra(v1, v2: V): detachable SEQ[V]
			-- Return the shortest path between `v1` and `v2` if it exists.
			-- Dijkstra's algorithm is used without assuming that there are no self-loops.
			-- Cost of path: Result.count - 1
		local
			parent: FUN[V, V]
			complete: BOOLEAN
			current_vertex: V
		do
			parent := dijkstra (v1)

			if parent.domain.has (v2) then
				from
					current_vertex := v2
					create Result.make_empty
				until
					complete
				loop
					Result.prepend (current_vertex)
					if current_vertex ~ v1 then
						complete := true
					else
						check parent.domain.has (current_vertex) end
						current_vertex := parent [current_vertex]
					end
				end
			elseif v1 ~ v2 then
				-- In Dijkstra's algorithm (`v1`, `v1`), the cost of `v1` is marked 0 initially.
				-- If there is a self-loop, then such alternative path with cost 1 is not the shortest (so parent[v1] remains undefined).
				-- If there is not a self-loop, then `v1` not being reachable from `v1` makes parent[v1] remain undefined.
				create Result.make_empty
				Result.prepend (v1) -- cost of a vertex travelling to itself: 1 - 1 = 0
			end
		ensure
			void_result:
				not attached Result implies
					not (					has_vertex (v1)
							and then	has_vertex (v2)
							and then 	is_reachable (v1, v2))
			result_is_valid:
				attached Result implies
					is_valid_path (Result) and then
					Result.first ~ v1 and then
					Result.last ~ v2
			result_is_the_shortest:
				attached Result implies
					across
						paths (v1, v2) as path
					all
						Result.count <= path.item.count
					end
		end

	is_reachable (v1, v2: V): BOOLEAN
		require
			has_vertex (v1) and has_vertex (v2)
		do
			Result := attached shortest_path (v1, v2)
		ensure
			Result = attached shortest_path (v1, v2)
		end

	is_valid_path (seq: SEQ[V]): BOOLEAN
			-- Does `seq` denote a valid path in graph?
		require
			at_least_one_vertex:
				not seq.is_empty
		local
			l_i: INTEGER
		do
			from
				l_i := 2
				Result := vertices.has (seq[1])
			until
				not Result or else l_i > seq.count
			loop
				Result := edges.has ([seq[l_i - 1], seq[l_i]])
				l_i := l_i + 1
			end
		ensure
			singleton_path:
				seq.count = 1 implies (vertices.has (seq[1]) = Result)
			longer_path:
				seq.count > 1 implies
					(Result =
					 across
						 2 |..| seq.count as i
					 all
						edges.has ([seq[i.item - 1], seq[i.item]])
					 end)
		end

	is_subgraph alias "|<:" (other: like Current): BOOLEAN
		do
			Result := vertices |<: other.vertices and edges |<: other.edges
		end

	is_equal (other: like Current): BOOLEAN
		do
			Result := Current |<: other and other |<: Current
		end

	is_acyclic: BOOLEAN
			-- Does the graph contain no cycles?
		local
			it: ITERATION_CURSOR[V]
		do
			from
				Result := true
				it := vertices.new_cursor
			until
				not Result or else it.after
			loop
				Result := not attached cycle (it.item) -- there is no cycle starting from it.item
				it.forth
			end
		ensure
			Result = across vertices is l_v all not attached cycle (l_v) end
		end

	cycle (v: V): detachable SEQ[V]
			-- Return a cycle starting from `v` if any.
		do
			Result := dfs_for_cycle (v)
		end

feature -- connectivity

--	components: SET [GRAPH [V]]
--			-- Return the set of all strongly connected components
--			-- To do.
--		do
--			create Result.make_empty
--		end

--	is_connected: BOOLEAN
--			-- To do.
--		do
--			Result := components.count = 1
--		end

feature -- commands

	vertex_extend (v: V)
			-- insert vertex `v` into graph
			-- if not already in
		do
			vertices.extend (v)
		ensure
			vertices ~ old vertices.deep_twin + v
			edges ~ old edges.deep_twin
		end

	edge_extend (e: PAIR [V, V])
			-- connect vertex `e.first` to `e.second`
			-- if not already in
		require
			valid_vertices:
				has_vertex (e.first) and has_vertex (e.second)
		do
			edges.extend (e)
		ensure
			edges ~ old edges.deep_twin + [e.first, e.second]
			vertices ~ old vertices.deep_twin
		end

	vertex_remove (v: V)
			-- Remove vertex `v` and all relevant edges
		local
			new_edges: like edges
		do
			vertices.subtract (v)
			create new_edges.make_empty
			across
				edges as pair
			loop
				if pair.item.first /~ v and pair.item.second /~ v then
					new_edges.extend (pair.item)
				end
			end
			edges := new_edges
		ensure
			vertices ~ old vertices.deep_twin - v
			edges ~ (old edges.deep_twin @>> v) @<< v
			-- range subtraction
		end

	edge_remove (e: PAIR [V, V])
		do
			edges.subtract (e)
		ensure

		end

feature -- out

	out: STRING
		do
			Result := debug_output
		end

	debug_output: STRING
		local
			adjacent_list: SEQ[V]
		do
			Result := ""
			across vertices_list is l_vertex loop
				Result.append ("[" + l_vertex.out)
				adjacent_list := adjacent(l_vertex)
				if not adjacent_list.is_empty then
					Result.append(":")
				end
				across 1 |..| adjacent_list.count is l_i loop
					Result.append (adjacent_list[l_i].out)
					if l_i < adjacent_list.count then
						Result.append (",")
					end
				end
				Result.append ("]")
			end
 	end



feature -- infinity

	infinity: INTEGER_64 once Result := {INTEGER_64}.max_value end
	zero: INTEGER_64 once Result := Result.zero end

feature {ES_TEST} -- distances

	vertices_list: LIST[V]
		local
			l_result: ARRAYED_LIST[V]
		do
			create l_result.make_from_array (vertices.as_array)
			l_result.compare_objects
			Result := l_result
		end

feature {NONE} -- traversals

	pq: MY_PRIORITY_QUEUE[VERTEX_DISTANCE_PAIR[V]]
		do
			create Result.make_empty
		end

	vertex_distance_pair (t: TUPLE[v: V; d: INTEGER_64]): VERTEX_DISTANCE_PAIR[V]
		do
			create Result.make (t)
		end

	dijkstra (src: V): FUN[V, V]
			-- Using Dijkstra's shortest-path algorithm to traverse the graph.
			-- Starting with vertex `src`,
			-- return the parent of each reachable vertex on their shortest path back to `src`.
		local
			q: MY_PRIORITY_QUEUE[VERTEX_DISTANCE_PAIR[V]]
			init_dist: INTEGER_64
			distance: FUN[V, INTEGER_64]
			parent: FUN[V, V]
			l_min: V -- corresponds to `v` in the abstract algorithm (vertex with min distance in the queue)
			x: V -- corresponds to `x` in the abstract algorithm (a neighbour of `v`)
			alt_distance: INTEGER_64 -- alternative distance that might be shorter than distance[l_adjacent]
		do
			create parent.make_empty
			create distance.make_empty
			q := pq

			-- initialize priority queue and annotate vertices
			across
				vertices as v
			loop
				if v.item ~ src then
					init_dist := zero
				else
					init_dist := infinity
				end
				-- shared vertex instance in distance and priority queue
				distance.extend ([v.item, init_dist])
				q.enqueue (vertex_distance_pair ([v.item, init_dist]))
			end

			-- Keep selecting the "minimum" vertex `v` from the priority queue
			-- 		(and updating the shortest-path parent and distance of all v's neighbours).
			-- In the very first iteration, `v` is the `src`.
			from
			until
				q.is_empty
			loop
				l_min := q.first.vertex -- vertex with minimum distance, which is `v` in the abstract algorithm
				q.dequeue
				across
					adjacent (l_min) as l_x -- enqueue all l_min's neighbours
				loop
					x := l_x.item

					-- distance[l_min] = infinity means `l_min` is unreachable from `src`
					if distance[l_min] = infinity then
						alt_distance := infinity
					else
						alt_distance := distance[l_min] + 1 -- edge weight is 1
					end

					if alt_distance < distance[x]  then
						-- update l_adjacent's distance in the distance function
						distance[x] := alt_distance
						-- update l_adjacent's distance in the priority queue
						q.prune (vertex_distance_pair([x, distance[x]]))
						q.enqueue (vertex_distance_pair([x, alt_distance]))
						-- update l_adjacent's parent on its shortest path to `src`
						parent.override_by ([x, l_min])
					end
				end
			end
			Result := parent
		end

	bfs_for_shortest_path (src: V): FUN [V, V]
			-- Breadth-First Search
			-- Starting with vertex `src`,
			-- return the parent of each reachable vertex on their shortest path back to `src`.
		local
			visited: SET [V] -- visited vertices
			q: ARRAYED_QUEUE [V]
			l_front, l_adjacent: V
		do
			create Result.make_empty
			create visited.make_empty
			create q.make (vertices.count)
			from
				q.extend (src)
			until
				q.is_empty
			loop
				l_front := q.item
				if not visited.has (l_front) then
					visited.extend (l_front) -- mark front of queue as visited
					across
						adjacent (l_front) as v -- enqueue all q.item's neighbours
					loop
						l_adjacent := v.item
						if visited.has (l_adjacent) then
								-- there is a cycle!
						else
							q.extend (l_adjacent) -- not yet visited
							if not Result.domain.has (l_adjacent) then
								Result.extend ([l_adjacent, l_front]) -- parent of `l_adjacent` is `l_front`
							else
								-- This is the case where an alternative shortest path is found
								-- (from a later node in `adjacent` order).
								-- We do not update the parent because in COMPARABLE_GRAPH,
								-- this `adjacent` makes sure that the SP originated from the smallest  adjacent node is recorded.
							end
						end
					end
				end
				q.remove
			end
		end

	dfs_for_cycle (src: V): detachable SEQ [V]
			-- Depth-First Search
			-- Starting with vertex `src`,
			-- return the first cycle detected if any.
		local
			visited: SET [V] -- visited vertices
			s: ARRAYED_STACK [V] -- controller the order of visiting nodes
			top, x: V -- top of stack, neighbouring node `x`
			found_a_cycle, found_an_unvisited_node: BOOLEAN
			it: ITERATION_CURSOR[V]
		do
			from
				create Result.make_empty
				create visited.make_empty
				create s.make (vertices.count)
				s.extend (src)
			until
							found_a_cycle
				or else 	s.is_empty
			loop
				top := s.item
				if visited.has (top) then
					if adjacent(top).has (top) then
						-- a self loop
						Result.append (top)
						found_a_cycle := true
					else
						-- This is the case where we backtrack on a node,
						-- after visiting all its neighbours.
						s.remove
						Result.remove (Result.count)
					end
				else
					visited.extend (top)
					Result.append (top)

					from
						it := adjacent (top).new_cursor
						found_an_unvisited_node := false
					until
									found_a_cycle
						or else found_an_unvisited_node
						or else it.after
					loop
						x := it.item
						if	visited.has (x) then
							-- detected the first cycle
							Result.append (x)
							found_a_cycle := true
						else
							s.extend (x)
							found_an_unvisited_node := true
						end
						it.forth
					end
				end
			end

			if not found_a_cycle then
				check Result.is_empty end
				Result := Void
			end
		end

	bfs_for_paths (src: V): REL [V, V]
			-- Breadth-First Search
			-- Starting with vertex `src`,
			-- return the parentS of each reachable vertex on ALL paths back to `src`.
		local
			visited: SET [V] -- visited vertices
			q: ARRAYED_QUEUE [V]
			l_front, l_adjacent: V
		do
			create Result.make_empty
			create visited.make_empty
			create q.make (vertices.count)
			from
				q.extend (src)
			until
				q.is_empty
			loop
				l_front := q.item
				if not visited.has (l_front) then
					visited.extend (l_front) -- mark front of queue as visited
					across
						adjacent (l_front) as v -- enqueue all q.item's neighbours
					loop
						l_adjacent := v.item
						if not visited.has (l_adjacent) then
							q.extend (l_adjacent) -- not yet visited
						end
						Result.extend ([l_adjacent, l_front]) -- parent of `l_adjacent` is `l_front`
					end
				end
				q.remove
			end
		end

	paths_helper (v1, v2: V; visited: SET[V]; parents: REL[V, V]; suffixes: SET[SEQ[V]]): SET[SEQ[V]]
		local
			ps: SET[V]
			new_suffixes: SET[SEQ[V]]
			new_visited: SET[V]
		do
			create new_suffixes.make_empty
			across
				suffixes as suffix
			loop
				new_suffixes.extend (suffix.item |<- v2)
			end

			if v1 ~ v2 then
				-- base case: done
				Result := new_suffixes
			else
				create Result.make_empty
				ps := (parents @< v2).range

				-- A recursive call to paths_helper may set a vertex to be visited,
				-- whereas that vertex is necessary to be visited (again) in another recursive call (in a later iteration).
				-- This is why each recursive call should share difference instances of `visited` set.
				new_visited := visited + v2
				across
					ps as parent
				loop
					if not new_visited.has (parent.item) then
						Result.union (paths_helper (v1, parent.item, new_visited, parents, new_suffixes))
					end
				end
			end
		end

feature -- agent functions

	vertices_edge_count: INTEGER
			-- total number of incoming and outgoing edges of all vertices in `vertices`
			-- Result = (Σv ∈ vertices : outgoing(v).count + incoming(v).count)
		do
			Result := {NUMERIC_ITERABLE[V]}.sumf(
								vertices,
								agent (a_vertex: V): INTEGER
									do
										Result := outgoing(a_vertex).count + incoming(a_vertex).count
									end)
		end

	vertices_outgoing_edge_count: INTEGER
			-- total number of outgoing edges of all vertices in `vertices`
			-- Result = (Σv ∈ vertices : outgoing(v).count)
		do
			Result := {NUMERIC_ITERABLE[V]}.sumf(
								vertices,
								agent (a_vertex: V): INTEGER
									do
										Result := outgoing(a_vertex).count
									end)
		end

	vertices_incoming_edge_count: INTEGER
			-- total number of incoming edges of all vertices in `vertices`
			-- Result = (Σv ∈ vertices : incoming(v).count)
		do
			Result := {NUMERIC_ITERABLE[V]}.sumf(
								vertices,
								agent (a_vertex: V): INTEGER
									do
										Result := incoming(a_vertex).count
									end)
		end

invariant
	empty_consistency:
		vertex_count = 0 implies edge_count = 0

	valid_edge_ends:
		edges.domain |\/| edges.range |<: vertices

	vertex_count = vertices.count

	consistency_incoming_outgoing:
		across vertices is l_vertex all
			across outgoing (l_vertex) is l_edge all
				incoming (l_edge.second).has (l_edge)
			end
			and
			across incoming (l_vertex) is l_edge all
				outgoing (l_edge.first).has (l_edge)
			end
		end

	consistency_incoming_outgoing2:
		-- ∀e ∈ edges:
		--	   ∧ e ∈ outgoing (e.source)
		--	   ∧ e ∈ incoming (e.destination)
		across edges is l_edge all
			outgoing (l_edge.first).has (l_edge)
			and
			incoming (l_edge.second).has (l_edge)
		end

	count_property_symmetry_1: --  (Σv ∈ vertices : outgoing(v).count + incoming(v).count) = 2 * edge_count
		vertices_edge_count = 2 * edge_count

	count_property_symmetry_2: --  (Σv ∈ vertices : outgoing(v).count) = (Σv ∈ vertices : incoming(v).count)
		vertices_outgoing_edge_count = vertices_incoming_edge_count

	self_loops_are_incomng_and_outgoing:
		across
			vertices is l_vertex
		all
			across incoming (l_vertex) is l_edge  some
				l_edge.first ~ l_edge.second
			end
			=
			across outgoing (l_vertex) is l_edge  some
				l_edge.first ~ l_edge.second
			end
		end
end
