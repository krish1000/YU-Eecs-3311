note
	description: "[
		Descendant of GRAPH[V] where V is now COMPARABLE.
		Mathematical model for a Directed Graph = (vertices, edges)
		where vertices is a set of comparable vertices in generic parameter V,
		and edges is a relation in vertices:
			vertices: SET [V]
			edges: REL [V, V]
		Inherits immutable queries and commands
		to add and remove vertices and edges.
		Also derived queries for outgoing and incoming edges:
			outgoing (v: V): REL[V, V]
			incoming (v: V): REL[V, V]
			adjacent (v: V): SEQ [V]
		`adjacent` is redefined as sorted sequence of (comprable) vertices 
		to uniquely define shortest paths etc.
		Derived queries such as:
			reachable (src: V): SEQ[V]
			shortest_path(v1, v2: V): detachable SEQ[V]
		where `reachable` uses breadth-first search starting with vertex `src`,
		to return the set of all nodes reachable from `src`.
		`shortest_path` returns the shortest path between `v1` and `v2` if it exists.
		Also has queries for cycles and topological sort.
	]"
	author: "JSO and JW"
	date: "$Date$"
	revision: "$Revision$"

class
	COMPARABLE_GRAPH[V -> COMPARABLE]

inherit
	GRAPH[V]
		redefine adjacent, vertices_list, pq, vertex_distance_pair end

create
	make_empty, make_from_tuple_array

convert
	make_from_tuple_array ({attached ARRAY [TUPLE [V, V]]})

feature -- Sorted outgoing edges
	adjacent (v: V): SEQ[V]
			-- Sorted list of outgoing edges from `v`
		local
			sorted: SORTED_TWO_WAY_LIST[V]
		do
			create sorted.make

			across
				outgoing(v) as e
			loop
				sorted.extend (e.item.second)
			end

			create Result.make_empty
			across
				sorted as x
			loop
				Result.append (x.item)
			end
		ensure then
			sorted:
				across
					1 |..| (Result.count - 1) as i
				all
					 Result[i.item] < Result[i.item + 1]
				end
		end

feature {ES_TEST}

	vertices_list: LIST[V]
		local
			l_a: SORTED_TWO_WAY_LIST[V]
		do
			Result := Precursor
			create l_a.make_from_iterable (Result)
			Result := l_a
		end

feature {NONE} -- traversals queries for Dijkstra's algorithm

	pq: MY_PRIORITY_QUEUE[VERTEX_DISTANCE_PAIR[V]]
		do
			create {MY_PRIORITY_QUEUE[COMPARABLE_VERTEX_DISTANCE_PAIR[V]]} Result.make_empty
		end

	vertex_distance_pair (t: TUPLE[v: V; d: INTEGER_64]): VERTEX_DISTANCE_PAIR[V]
		do
			create {COMPARABLE_VERTEX_DISTANCE_PAIR[V]} Result.make (t)
		end

end
