note
	description: "Basic tests for GRAPH[V]"
	author: "JSO"
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_GRAPH_BASIC

inherit

	ES_TEST

create
	make

feature {NONE} -- Initialization

	make
			-- initialize tests
		do
			add_boolean_case (agent t0)
			add_boolean_case (agent t1)
			add_boolean_case (agent t2)
			add_boolean_case (agent t3)
			add_boolean_case (agent t4)
			add_boolean_case (agent t5)
			add_boolean_case (agent t6)
			add_boolean_case (agent t7)
			add_boolean_case (agent t8)
			add_boolean_case (agent t9)
			add_boolean_case (agent t10)
			add_boolean_case (agent t11)
			add_boolean_case (agent t12)
			add_boolean_case (agent t13)
			add_boolean_case (agent t14)
			add_boolean_case (agent t15a)
			add_boolean_case (agent t15b)
			add_boolean_case (agent t16)
			add_boolean_case (agent t17)
			add_boolean_case (agent t18)
			add_boolean_case (agent t19)
			add_boolean_case (agent t20)
			add_boolean_case (agent t21a)
			add_boolean_case (agent t21b)
			add_boolean_case (agent t21c)
		end

feature -- tests

	t0: BOOLEAN
		local
			g: GRAPH[INTEGER]
		do
			comment("t0: infinity and zero")

			create g.make_empty
			Result := g.infinity = {INTEGER_64}.max_value

		end

	t1: BOOLEAN
		local
			a, b: ARRAY [TUPLE[INTEGER,INTEGER]]
			g: GRAPH[INTEGER]
		do
			comment ("t1: test array of integers")
			a := <<[1,2], [1,3], [3,4]>>
			create g.make_from_tuple_array (a)
			b := g.as_array
			Result := g.array_compare (g.as_array, a)
			check Result end
			Result := g.edge_count = 3 and g.vertex_count = 4
				and g.vertices ~ <<1, 2, 3,4>>
		end

	t2: BOOLEAN
		local
			a, b: ARRAY [TUPLE[STRING,STRING]]
			g, g2: GRAPH[STRING]
		do
			comment ("t2: test array of strings")
			a := <<["1","2"], ["1","3"], ["3","4"]>>
			create g.make_from_tuple_array (a)
			b := g.as_array
			Result := g.array_compare (g.as_array, a)
			check Result end

			Result := g.edge_count = 3 and g.vertex_count = 4
				and g.vertices ~ <<"1", "2", "3", "4">>
			check Result end

			g2 := g.vertex_extended ("5")
			Result := g2.edge_count = 3 and g2.vertex_count = 5
				and g2.vertices ~ <<"1", "2", "3", "4", "5">>
			check Result end
		end

	t3: BOOLEAN
		local
			a1, a2, a3: ARRAY [TUPLE[STRING,STRING]]
			g1, g2, g3,g4: GRAPH[STRING]
		do
			comment ("t3: check subgraph and graph equality")
			a1 := <<["1","2"]>>
			a2 := <<["2", "1"]>>
			a3 := <<["1", "2"], ["1", "3"]>>

			create g1.make_from_tuple_array (a1)
			create g2.make_from_tuple_array (a2)
			create g3.make_from_tuple_array (a3)

			Result := g1 |<: g3
			check Result end

			Result := not (g3 |<: g1)
			check Result end

			Result := g1 /~ g3

			Result := not (g2 |<: g3)
			check Result end

			Result := not (g1 |<: g2)
			check Result end

			create g4.make_empty
			g4.vertex_extend ("1")
			g4.vertex_extend ("2")
			g4.vertex_extend ("3")
			g4 := g4 |\/| ["1", "3"]
			g4 := g4 |\/| ["1", "2"]
			Result := g3 ~ g4 and g3 |<: g4 and g4 |<: g3
		end

	t4: BOOLEAN
		local
			a1, a2, a3: ARRAY [TUPLE[STRING,STRING]]
			g1, g2, g3: GRAPH[STRING]
		do
			comment ("t4: vertex removal")
			a1 := <<["1","2"]>>
			a2 := <<["2", "1"]>>
			a3 := <<["1", "2"], ["1", "3"]>>

			create g1.make_from_tuple_array (a1)
			create g2.make_from_tuple_array (a2)
			create g3.make_from_tuple_array (a3)

			g3 := g3 - "3"
			Result := g1 ~ g3 and g2 /~ g3
		end

	t5: BOOLEAN
		local
			a1, a2, a3: ARRAY [TUPLE[STRING,STRING]]
			g1, g2, g3: GRAPH[STRING]
		do
			comment ("t5: edge removal")
			a1 := <<["1","2"]>>
			a2 := <<["2", "1"]>>
			a3 := <<["1", "2"], ["1", "3"]>>

			create g1.make_from_tuple_array (a1)
			create g2.make_from_tuple_array (a2)
			create g3.make_from_tuple_array (a3)

			g3 := g3 |\ ["1", "3"]
			Result := g1 /~ g3 and g2 /~ g3
			check Result end

			g3 := g3 - "3"
			Result := g1 ~ g3 and g2 /~ g3
			check Result end
		end

	t6: BOOLEAN
		local
			a: ARRAY [TUPLE[STRING,STRING]]
			g: GRAPH[STRING]
			path: detachable SEQ[STRING]
		do
			comment ("t6: shortest path (using BFS) on a simple, acyclic graph")
			a := <<["A", "B"], ["B", "E"], ["A", "C"], ["C", "D"]>>
			create g.make_from_tuple_array (a)

			path := g.shortest_path ("A", "B")
			Result := attached path as p and then
								(p.count = 2 and p[1] ~ "A" and p[2] ~ "B")
			check Result end

			path := g.shortest_path ("A", "C")
			Result := attached path as p and then
								(p.count = 2 and p[1] ~ "A" and p[2] ~ "C")
			check Result end

			path := g.shortest_path ("A", "D")
			Result := attached path as p and then
								(p.count = 3 and p[1] ~ "A" and p[2] ~ "C" and p[3] ~ "D")
			check Result end

			path := g.shortest_path ("A", "E")
			Result := attached path as p and then
								(p.count = 3 and p[1] ~ "A" and p[2] ~ "B" and p[3] ~ "E")
			check Result end

			path := g.shortest_path ("A", "A")
			Result := attached path as p and then
								(p.count = 1 and p[1] ~ "A")
			check Result end

			path := g.shortest_path ("B", "C")
			Result := not attached path
			check Result end
		end

	t7: BOOLEAN
		local
			a: ARRAY [TUPLE[INTEGER,INTEGER]]
			g: GRAPH[INTEGER]
			path: SEQ[INTEGER] -- void safety
		do
			comment ("t7: shortest path (using BFS) on a simple, cyclic graph (with self-loops)")
			a := <<[0, 1], [1, 2], [0, 3], [7, 3], [7, 6], [3, 4], [4, 7], [5, 7], [5, 4], [6, 5],[2, 0],[2, 2]>>
			-- self loop is not allowed at the moment because shortest path is calcualted using BFS (e.g., by adding [2, 2])

			create g.make_from_tuple_array (a)

			path := g.shortest_path (0, 2)
			Result := attached path as p and then
								(p.count = 3 and p ~ <<0, 1, 2>>)
			check Result end

			path := g.shortest_path (0, 7)
			Result := attached path as p and then
								(p.count = 4 and p ~ <<0, 3, 4, 7>>)
			check Result end

			path := g.shortest_path (0, 6)
			Result := attached path as p and then
								(p.count = 5 and p ~ <<0, 3, 4, 7, 6>>)
			check Result end

			path := g.shortest_path (0, 5)
			Result := attached path as p and then
								(p.count = 6 and p ~ <<0, 3, 4, 7, 6, 5>>)
			check Result end

			path := g.shortest_path (7, 0)
			Result := not attached path
			check Result end

			path := g.shortest_path (2, 0)
			Result := attached path as p and then
								(p.count = 2 and p ~ <<2, 0>>)
			check Result end

			path := g.shortest_path (2, 2)
			Result := attached path as p and then
								(p.count = 1 and p ~ <<2>>)
			check Result end
		end

	t8: BOOLEAN
		local
			a: ARRAY [TUPLE[INTEGER,INTEGER]]
			g: GRAPH[INTEGER]
			path: SEQ[INTEGER] -- void safety
		do
			comment ("t8: shortest path (using Dijkstra's algorithm) on a simple, cyclic graph (integer vertices)")
			a := <<[0, 1], [1, 2], [0, 3], [7, 3], [7, 6], [3, 4], [4, 7],
				[5, 7], [5, 4], [6, 5],[2, 0],[2, 2]>>
			-- self loop [2,2]

			create g.make_from_tuple_array (a)

			path := g.shortest_path_via_dijkstra (0, 2)
			Result := attached path as p and then
								(p.count = 3 and p ~ <<0, 1, 2>>)
			check Result end

			path := g.shortest_path_via_dijkstra (0, 7)
			Result := attached path as p and then
								(p.count = 4 and p ~ <<0, 3, 4, 7>>)
			check Result end

			path := g.shortest_path_via_dijkstra (0, 6)
			Result := attached path as p and then
								(p.count = 5 and p ~ <<0, 3, 4, 7, 6>>)
			check Result end

			path := g.shortest_path_via_dijkstra (0, 5)
			Result := attached path as p and then
								(p.count = 6 and p ~ <<0, 3, 4, 7, 6, 5>>)
			check Result end

			path := g.shortest_path_via_dijkstra (7, 0)
			Result := not attached path
			check Result end

			path := g.shortest_path_via_dijkstra (2, 0)
			Result := attached path as p and then
								(p.count = 2 and p ~ <<2, 0>>)
			check Result end

			path := g.shortest_path_via_dijkstra (7, 7)
			Result := attached path as p and then
								(p.count = 1 and p ~ <<7>>)
			check Result end

			path := g.shortest_path_via_dijkstra (2, 2)
			Result := attached path as p and then
								(p.count = 1 and p ~ <<2>>)
			check Result end
		end

	t9: BOOLEAN
		local
			a: ARRAY [TUPLE[STRING,STRING]]
			g: GRAPH[STRING]
			path: SEQ[STRING]
		do
			comment ("t9: shortest path (using Dijkstra's algorithm) on a simple, cyclic graph (string vertices)")
			a := <<["0", "1"], ["1", "2"], ["0", "3"], ["7", "3"], ["7", "6"], ["3", "4"], ["4", "7"],
				["5", "7"], ["5", "4"], ["6", "5"],["2", "0"],["2", "2"]>>
			-- self loop [2,2]

			create g.make_from_tuple_array (a)

			path := g.shortest_path_via_dijkstra ("0", "2")
			Result := attached path as p and then
								(p.count = 3 and p ~ <<"0", "1", "2">>)
			check Result end

			path := g.shortest_path_via_dijkstra ("0", "7")
			Result := attached path as p and then
								(p.count = 4 and p ~ <<"0", "3", "4", "7">>)
			check Result end

			path := g.shortest_path_via_dijkstra ("0", "6")
			Result := attached path as p and then
								(p.count = 5 and p ~ <<"0", "3", "4", "7", "6">>)
			check Result end

			path := g.shortest_path_via_dijkstra ("0", "5")
			Result := attached path as p and then
								(p.count = 6 and p ~ <<"0", "3", "4", "7", "6", "5">>)
			check Result end

			path := g.shortest_path_via_dijkstra ("7", "0")
			Result := not attached path
			check Result end

			path := g.shortest_path_via_dijkstra ("2", "0")
			Result := attached path as p and then
								(p.count = 2 and p ~ <<"2", "0">>)
			check Result end

			path := g.shortest_path_via_dijkstra ("7", "7")
			Result := attached path as p and then
								(p.count = 1 and p ~ <<"7">>)
			check Result end

			path := g.shortest_path_via_dijkstra ("2", "2")
			Result := attached path as p and then
								(p.count = 1 and p ~ <<"2">>)
			check Result end
		end

	t10: BOOLEAN
		local
			a: ARRAY [TUPLE[INTEGER,INTEGER]]
			g: GRAPH[INTEGER]
			vertices: ARRAY[INTEGER]
			edges: ARRAY[TUPLE[INTEGER, INTEGER]]
			v, x: INTEGER
		do
			comment ("t10: iterable graph")
			a := <<[0, 1], [1, 2], [0, 3], [7, 3], [7, 6], [3, 4], [4, 7],
				[5, 7], [5, 4], [6, 5],[2, 0],[2, 2]>>

			create g.make_from_tuple_array (a)

			create vertices.make_empty
			vertices.compare_objects
			create edges.make_empty
			edges.compare_objects
			across
				g as v_cursor
			loop
				v := v_cursor.item
				vertices.force (v, vertices.count + 1)
				across
					g.adjacent (v) as adj_cursor
				loop
					x := adj_cursor.item
					edges.force ([v, x], edges.count + 1)
				end
			end

			Result :=
				vertices.count = 8 and vertices ~ g.vertices
			check Result end

			Result := edges.count = 12 and edges ~ g.edges
		end

	t11: BOOLEAN
		local
			a: ARRAY [TUPLE[INTEGER,INTEGER]]
			g: GRAPH[INTEGER]
			paths: SET[SEQ[INTEGER]]
		do
			comment ("t11: all paths on a simple graph (no self-loop)")
			a := <<[1, 2], [3, 2], [1, 3]>>
			create g.make_from_tuple_array (a)

			create paths.make_empty
			paths.extend (<<1, 2>>)
			paths.extend (<<1, 3, 2>>)

			Result := g.paths (1, 2) ~ paths
			check Result end
		end

	t12: BOOLEAN
		local
			a: ARRAY [TUPLE[INTEGER,INTEGER]]
			g: GRAPH[INTEGER]
			paths: SET[SEQ[INTEGER]]
		do
			comment ("t12: all paths on a simple graph (with self-loop)")
			a := <<[1, 2], [3, 2], [1, 3],[2, 2]>>
			create g.make_from_tuple_array (a)

			create paths.make_empty
			paths.extend (<<1, 2>>)
--			paths.extend (<<1, 2, 2>>) not expected because this path is cyclic
			paths.extend (<<1, 3, 2>>)
--			paths.extend (<<1, 3, 2, 2>>) not expected because this path is cyclic

			Result := g.paths (1, 2) ~ paths
			check Result end
		end

	t13: BOOLEAN
		local
			a: ARRAY [TUPLE[INTEGER,INTEGER]]
			g: GRAPH[INTEGER]
			paths: SET[SEQ[INTEGER]]
		do
			comment ("t13: all paths on a graph (with no self-loop)")
			a := <<[1, 2], [3, 2], [1, 3],[2, 4],[2, 5], [5, 4]>>
			create g.make_from_tuple_array (a)

			create paths.make_empty
			paths.extend (<<1, 2, 4>>)
			paths.extend (<<1, 2, 5, 4>>)
			paths.extend (<<1, 3, 2, 4>>)
			paths.extend (<<1, 3, 2, 5, 4>>)

			Result := g.paths (1, 4) ~ paths
			check Result end
		end

	t14: BOOLEAN
		local
			a: ARRAY [TUPLE[INTEGER,INTEGER]]
			g: GRAPH[INTEGER]
			paths: SET[SEQ[INTEGER]]
		do
			comment ("t14: all paths on a graph (with a cycle)")
			a := <<[1, 2], [2, 4], [4, 5], [5, 2], [2, 3]>>
			create g.make_from_tuple_array (a)

			create paths.make_empty
			paths.extend (<<1, 2, 3>>)
--			paths.extend (<<1, 2, 4, 5, 2, 3>>) -- not expected because this path is cyclic

			Result := g.paths (1, 3) ~ paths
			check Result end
		end

	t15a: BOOLEAN
		local
			a: ARRAY [TUPLE[INTEGER,INTEGER]]
			g: GRAPH[INTEGER]
			expected: SEQ[INTEGER]
		do
			comment ("t15a: find all reachable vertices from a given vertex (generic graph)")
			a := <<[1, 4], [2, 1], [1, 3], [4, 2], [3, 2], [6, 4], [2, 6], [2, 5], [5, 8], [5, 9], [5, 7], [10, 9]>>
			create g.make_from_tuple_array (a)
			expected := <<1, 4, 3, 2, 6, 5, 8, 9, 7>>
			Result := g.reachable (1) ~ expected
		end

	t15b: BOOLEAN
		local
			a: ARRAY [TUPLE[INTEGER,INTEGER]]
			g: COMPARABLE_GRAPH[INTEGER]
			expected: SEQ[INTEGER]
		do
			comment ("t15b: find all reachable vertices from a given vertex (comparable graph)")
			a := <<[1, 4], [2, 1], [1, 3], [4, 2], [3, 2], [6, 4], [2, 6], [2, 5], [5, 8], [5, 9], [5, 7], [10, 9]>>
			create g.make_from_tuple_array (a)
			expected := <<1, 3, 4, 2, 5, 6, 7, 8, 9>>
			Result := g.reachable (1) ~ expected
		end

	t16: BOOLEAN
		local
			a: ARRAY [TUPLE[STRING,STRING]]
			g: GRAPH[STRING]
		do
			comment ("t16: topological sort")
			a := <<["C", "E"], ["E", "F"], ["C", "G"], ["G", "J"], ["J", "K"], ["D", "H"], ["H", "J"], ["H", "I"]>>
			create g.make_from_tuple_array (a)
			g.vertex_extend ("B")
			g.vertex_extend ("A")
			Result := g.topologically_sorted.out ~ "< C, D, B, A, E, G, H, F, J, I, K >"
--			assert_equal ("sorted sequence", "< C, D, B, A, E, G, H, F, J, I, K >", g.sorted_seq.out)
		end

	t17: BOOLEAN
		local
			a: ARRAY [TUPLE[INTEGER,INTEGER]]
			g: GRAPH[INTEGER]
			sp: SEQ[INTEGER]
		do
			comment ("t17: shortest path (when there are multiple ones)")
			a := <<[1, 3], [3, 6], [1, 2], [2, 6], [1, 4], [4, 5], [5, 6]>>
			create g.make_from_tuple_array (a)
			create sp.make_from_array (<<1, 2, 6>>) -- as opposed to <<1, 3, 6>>
			Result := g.shortest_path_via_dijkstra (1, 6) ~ sp
		end

	t18: BOOLEAN
		local
			a: ARRAY [TUPLE[STRING,STRING]]
			g: GRAPH[STRING]
			seq: SEQ[STRING]
		do
			comment ("t18: check if a seqence is topologically sorted")
			a := <<["C", "E"], ["E", "F"], ["C", "G"], ["G", "J"], ["J", "K"], ["D", "H"], ["H", "J"], ["H", "I"]>>
			create g.make_from_tuple_array (a)
			g.vertex_extend ("B")
			g.vertex_extend ("A")
			g.vertex_extend ("Z")

			seq := <<"C", "D", "B", "A", "E", "G", "H", "F", "J", "I", "K", "Z">>
			Result := g.is_topologically_sorted (seq)
			check Result end

			seq := <<"Z", "D", "H", "C", "E", "F", "G", "J", "I", "K", "A", "B">>
			Result := g.is_topologically_sorted (seq)
			check Result end

			seq := <<"Z", "D", "J", "I", "K", "A", "B", "H", "C", "E", "F", "G">>
			-- violation: J occurs before H, J occurs before G
			Result := not g.is_topologically_sorted (seq)
			check Result end
		end

	t19: BOOLEAN
		local
			g: COMPARABLE_GRAPH[INTEGER]
			a: ARRAY[TUPLE[INTEGER, INTEGER]]
		do
			comment ("t19: testing breadth first search of GRAPH_ALGORITHMS")
			a := <<[1, 1], [1, 4], [1, 2], [2, 5], [5, 2], [2, 1], [5,5], [5, 6]>>
			a.compare_objects
			create g.make_from_tuple_array (a)
			g.vertex_extend (3)
			Result:= g.vertex_count = 6
			check Result end
			assert_equal ("graph correct", "[1:1,2,4][2:1,5][3][4][5:2,5,6][6]", g.debug_output)
		end

	t20: BOOLEAN
		local
			g: COMPARABLE_GRAPH[INTEGER]
			a: ARRAY[TUPLE[INTEGER, INTEGER]]
			expected: SEQ[INTEGER]
			actual: detachable SEQ[INTEGER]
		do
			comment ("t20: testing cycles in graph")
			a := <<[1, 4], [1, 2], [2, 5], [5, 2], [2, 1], [5, 6], [2, 2]>>
			a.compare_objects
			create g.make_from_tuple_array (a)
			g.vertex_extend (3)

			-- case 1
			actual := g.cycle (1)
			expected := <<1, 2, 1>>
			Result := expected ~ actual
			check Result  end
			check attached actual as cycle then
				assert_equal ("cycle starting from 1", "< 1, 2, 1 >", cycle.out)
			end

			-- case 2
			actual := g.cycle (2)
			expected := <<2, 1, 2>>
			Result := expected ~ actual
			check Result  end
			check attached actual as cycle then
				assert_equal ("cycle starting from 2", "< 2, 1, 2 >", cycle.out)
			end

			-- case 3
			actual := g.cycle (3)
			Result := not attached actual
			check Result end

			-- case 4
			actual := g.cycle (4)
			Result := not attached actual
			check Result end

			-- case 5
			actual := g.cycle (5)
			expected := <<5, 2, 1, 2>>
			Result := expected ~ actual
			check Result  end
			check attached actual as cycle then
				assert_equal ("cycle starting from 5", "< 5, 2, 1, 2 >", cycle.out)
			end

			-- case 6
			actual := g.cycle (6)
			Result := not attached actual
			check Result end

			Result := not g.is_acyclic
			check Result end

			-- remove the cycles
			g.edge_remove ([5, 2])
			g.edge_remove ([2, 1])
			g.edge_remove ([2, 2])
			Result := g.is_acyclic
			check Result end
		end

	t21a: BOOLEAN
		local
			g: COMPARABLE_GRAPH[INTEGER]
			a: ARRAY[TUPLE[INTEGER, INTEGER]]
			expected: SEQ[INTEGER]
			actual: detachable SEQ[INTEGER]
		do
			comment ("t21a: testing cycles in (more complicated) graph 1")
			a := <<[1, 7], [1, 3], [3, 5], [3, 3], [3, 4], [4, 5], [4, 3], [5, 1], [7, 8], [7, 7], [7, 6], [6, 7], [8, 1]>>
			a.compare_objects
			create g.make_from_tuple_array (a)

			actual := g.cycle (1)
			expected := <<1, 3, 3>>
			Result := expected ~ actual
			check Result  end
			check attached actual as cycle then
				assert_equal ("cycle starting from 1", "< 1, 3, 3 >", cycle.out)
			end

			actual := g.cycle (3)
			expected := <<3, 3>>
			Result := expected ~ actual
			check Result  end
			check attached actual as cycle then
				assert_equal ("cycle starting from 3", "< 3, 3 >", cycle.out)
			end

			actual := g.cycle (4)
			expected := <<4, 3, 3>>
			Result := expected ~ actual
			check Result  end
			check attached actual as cycle then
				assert_equal ("cycle starting from 4", "< 4, 3, 3 >", cycle.out)
			end

			actual := g.cycle (5)
			expected := <<5, 1, 3, 3>>
			Result := expected ~ actual
			check Result  end
			check attached actual as cycle then
				assert_equal ("cycle starting from 5", "< 5, 1, 3, 3 >", cycle.out)
			end

			actual := g.cycle (7)
			expected := <<7, 6, 7>>
			Result := expected ~ actual
			check Result  end
			check attached actual as cycle then
				assert_equal ("cycle starting from 7", "< 7, 6, 7 >", cycle.out)
			end

			actual := g.cycle (8)
			expected := <<8, 1, 3, 3>>
			Result := expected ~ actual
			check Result  end
			check attached actual as cycle then
				assert_equal ("cycle starting from 8", "< 8, 1, 3, 3 >", cycle.out)
			end

			actual := g.cycle (6)
			expected := <<6, 7, 6>>
			Result := expected ~ actual
			check Result  end
			check attached actual as cycle then
				assert_equal ("cycle starting from 6", "< 6, 7, 6 >", cycle.out)
			end
		end

	t21b: BOOLEAN
		local
			g: COMPARABLE_GRAPH[INTEGER]
			a: ARRAY[TUPLE[INTEGER, INTEGER]]
			expected: SEQ[INTEGER]
			actual: detachable SEQ[INTEGER]
		do
			comment ("t21a: testing cycles in (more complicated) graph 2")
			a := <<[1, 8], [1, 5], [8, 8], [8, 7], [8, 6], [6, 8], [6, 7], [7, 1], [5, 5], [5, 4], [5, 3], [4, 5], [3, 1]>>
			a.compare_objects
			create g.make_from_tuple_array (a)

			actual := g.cycle (1)
			expected := <<1, 5, 3, 1>>
			Result := expected ~ actual
			check Result  end
			check attached actual as cycle then
				assert_equal ("cycle starting from 1", "< 1, 5, 3, 1 >", cycle.out)
			end

			actual := g.cycle (3)
			expected := <<3, 1, 5, 3>>
			Result := expected ~ actual
			check Result  end
			check attached actual as cycle then
				assert_equal ("cycle starting from 3", "< 3, 1, 5, 3 >", cycle.out)
			end

			actual := g.cycle (4)
			expected := <<4, 5, 3, 1, 5>>
			Result := expected ~ actual
			check Result  end
			check attached actual as cycle then
				assert_equal ("cycle starting from 4", "< 4, 5, 3, 1, 5 >", cycle.out)
			end

			actual := g.cycle (5)
			expected := <<5, 3, 1, 5>>
			Result := expected ~ actual
			check Result  end
			check attached actual as cycle then
				assert_equal ("cycle starting from 5", "< 5, 3, 1, 5 >", cycle.out)
			end

			actual := g.cycle (7)
			expected := <<7, 1, 5, 3, 1>>
			Result := expected ~ actual
			check Result  end
			check attached actual as cycle then
				assert_equal ("cycle starting from 7", "< 7, 1, 5, 3, 1 >", cycle.out)
			end

			actual := g.cycle (8)
			expected := <<8, 6, 7, 1, 5, 3, 1>>
			Result := expected ~ actual
			check Result  end
			check attached actual as cycle then
				assert_equal ("cycle starting from 8", "< 8, 6, 7, 1, 5, 3, 1 >", cycle.out)
			end

			actual := g.cycle (6)
			expected := <<6, 7, 1, 5, 3, 1>>
			Result := expected ~ actual
			check Result  end
			check attached actual as cycle then
				assert_equal ("cycle starting from 6", "< 6, 7, 1, 5, 3, 1 >", cycle.out)
			end
		end

	t21c: BOOLEAN
		local
			g: COMPARABLE_GRAPH[INTEGER]
			a: ARRAY[TUPLE[INTEGER, INTEGER]]
			expected: SEQ[INTEGER]
			actual: detachable SEQ[INTEGER]
		do
			comment ("t21c: testing cycles in (very basic) graph")

			create g.make_from_tuple_array (<<>>)
			actual := g.cycle (3)
			Result := not attached actual
			check Result end

			create g.make_from_tuple_array (<<[3, 5], [3, 3], [5, 5], [5, 3]>>)

			actual := g.cycle (3)
			expected := <<3, 3>>
			Result := expected ~ actual
			check Result  end
			check attached actual as cycle then
				assert_equal ("cycle starting from 3", "< 3, 3 >", cycle.out)
			end

			actual := g.cycle (5)
			expected := <<5, 3, 3>>
			Result := expected ~ actual
			check Result  end
			check attached actual as cycle then
				assert_equal ("cycle starting from 5", "< 5, 3, 3 >", cycle.out)
			end

			create g.make_from_tuple_array (<<[5, 3], [5, 5], [3, 3], [3, 5]>>)

			actual := g.cycle (3)
			expected := <<3, 3>>
			Result := expected ~ actual
			check Result  end
			check attached actual as cycle then
				assert_equal ("cycle starting from 3", "< 3, 3 >", cycle.out)
			end

			actual := g.cycle (5)
			expected := <<5, 3, 3>>
			Result := expected ~ actual
			check Result  end
			check attached actual as cycle then
				assert_equal ("cycle starting from 5", "< 5, 3, 3 >", cycle.out)
			end
		end
end
