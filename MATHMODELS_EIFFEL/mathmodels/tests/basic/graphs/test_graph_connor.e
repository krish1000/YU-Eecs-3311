note
	description: "Tests for COMPARABLE_GRAPH"
	author: "Connor"
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_GRAPH_CONNOR

inherit
	ES_TEST

create
	make

feature -- Initialization
	make
		do
			-- Creation Procedures, Extension/Removal, Basic Queries
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

			-- Advanced Queries
			add_boolean_case (agent t20)
			add_boolean_case (agent t21)
			add_boolean_case (agent t22)
			add_boolean_case (agent t23)
			add_boolean_case (agent t24)
			add_boolean_case (agent t25)
			add_boolean_case (agent t26)
			add_boolean_case (agent t27)
			add_boolean_case (agent t28)
			add_boolean_case (agent t29)
			add_boolean_case (agent t30)
			add_boolean_case (agent t31)
			add_boolean_case (agent t32)
			add_boolean_case (agent t33)
			add_boolean_case (agent t34)
			add_boolean_case (agent t35)
			add_boolean_case (agent t36)
			add_boolean_case (agent t37)
			add_boolean_case (agent t38)
			add_boolean_case (agent t39)
			add_boolean_case (agent t40)
			add_boolean_case (agent t41)
			add_boolean_case (agent t42)
			add_boolean_case (agent t43)
			add_boolean_case (agent t44)
			add_boolean_case (agent t45)

			-- Violation Cases
			add_violation_case_with_tag ("valid_vertices", agent t100)
			add_violation_case_with_tag ("is_acyclic", agent t101)
			add_violation_case_with_tag ("is_acyclic", agent t102)
			add_violation_case_with_tag ("at_least_one_vertex", agent t103)
			add_violation_case (agent t104) -- in_degree_count
			add_violation_case (agent t105) -- out_degree_count
			add_violation_case (agent t106) -- reachable
			add_violation_case (agent t107) -- is_reachable
			add_violation_case_with_tag ("at_least_one_vertex", agent t108) -- is_valid_path

		end

feature -- Basic Creation, Operation, and Query Testing
	t0: BOOLEAN
		local
			i_g: COMPARABLE_GRAPH [INTEGER]
			s_g: COMPARABLE_GRAPH [STRING]
			v_g: COMPARABLE_GRAPH [VERTEX[INTEGER]]
			v1, v2, v3, v4, v5: VERTEX[INTEGER]
		do
			comment("t0: Creation Procedures - Integer, String, Vertex Cases")

			-- Make Empty
			create i_g.make_empty
			Result := i_g.vertex_count = 0
			check Result end

			create s_g.make_empty
			Result := i_g.vertex_count = 0
			check Result end

			create v_g.make_empty
			Result := v_g.vertex_count = 0
			check Result end

			-- Create from Tuple Array

			i_g := << [1, 2], [4, 3], [5, 5]>>
			assert_equal ("correct i_g vertices", "{ 1, 2, 4, 3, 5 }",i_g.vertices.out)
			assert_equal ("correct i_g edges" , "{ 1 -> 2, 4 -> 3, 5 -> 5 }", i_g.edges.out)

			s_g := << ["a", "b"], ["d", "c"], ["e", "e"] >>
			assert_equal("correct s_g vertices", "{ a, b, d, c, e }",s_g.vertices.out)
			assert_equal ("correct s_g edges" , "{ a -> b, d -> c, e -> e }", s_g.edges.out)

			v1 := 1
			v2 := 2
			v3 := 3
			v4 := 4
			v5 := 5
			v_g := << [v1, v2], [v4, v3], [v5, v5] >>
			assert_equal("correct v_g vertices", "{ v:1, v:2, v:4, v:3, v:5 }",v_g.vertices.out)
			assert_equal ("correct v_g edges" , "{ v:1 -> v:2, v:4 -> v:3, v:5 -> v:5 }", v_g.edges.out)
		end

	t1: BOOLEAN -- Edge & Vertex Extension
		local
			i_g: COMPARABLE_GRAPH [INTEGER]
			s_g: COMPARABLE_GRAPH [STRING]
			v_g: COMPARABLE_GRAPH [VERTEX[INTEGER]]
			v1, v2, v3, v4, v5, v5b, v6: VERTEX[INTEGER]
		do
			comment("t1: Edge & Vertex Extension Procedures - Integer, String, Vertex Cases")

			-- Integer
			i_g := << [1, 2], [4, 3], [5, 5]>>
			assert_equal ("correct i_g vertices", "{ 1, 2, 4, 3, 5 }",i_g.vertices.out)
			assert_equal ("correct i_g edges" , "{ 1 -> 2, 4 -> 3, 5 -> 5 }", i_g.edges.out)
			-- Edge Extend
			i_g.edge_extend ([1, 2]) -- Extend by an existing edge
			assert_equal ("correct i_g edges" , "{ 1 -> 2, 4 -> 3, 5 -> 5 }", i_g.edges.out)
			Result := i_g.edge_count ~ 3 -- Unchanged
			check Result end
			i_g.edge_extend ([2, 5]) -- Extend by new edge
			assert_equal ("correct i_g edges" , "{ 1 -> 2, 4 -> 3, 5 -> 5, 2 -> 5 }", i_g.edges.out)
			Result := i_g.edge_count ~ 4 -- Updated
			check Result end
			-- Vertex Extend
			i_g.vertex_extend (5)
			Result := i_g.vertex_count ~ 5 -- No change
			check Result end
			i_g.vertex_extend (6)
			Result := i_g.vertex_count ~ 6 -- Updated
			Result := i_g.edge_count ~ 4 -- No change
			assert_equal ("correct i_g vertices", "{ 1, 2, 4, 3, 5, 6 }",i_g.vertices.out)
			assert_equal ("correct i_g edges" , "{ 1 -> 2, 4 -> 3, 5 -> 5, 2 -> 5 }", i_g.edges.out)

			-- String
			s_g := << ["a", "b"], ["d", "c"], ["e", "e"] >>
			assert_equal("correct s_g vertices", "{ a, b, d, c, e }",s_g.vertices.out)
			assert_equal ("correct s_g edges" , "{ a -> b, d -> c, e -> e }", s_g.edges.out)
			-- Edge Extend
			s_g.edge_extend (["a", "b"]) -- Extend by an existing edge
			assert_equal ("correct s_g edges" , "{ a -> b, d -> c, e -> e }", s_g.edges.out)
			Result := s_g.edge_count ~ 3 -- Unchanged
			check Result end
			s_g.edge_extend (["b", "e"]) -- Extend by new edge
			assert_equal ("correct s_g edges" , "{ a -> b, d -> c, e -> e, b -> e }", s_g.edges.out)
			Result := s_g.edge_count ~ 4 -- Updated
			check Result end
			-- Vertex Extend
			s_g.vertex_extend ("e")
			Result := s_g.vertex_count ~ 5 -- No change
			check Result end
			s_g.vertex_extend ("f")
			Result := s_g.vertex_count ~ 6 -- Updated
			Result := s_g.edge_count ~ 4 -- No change
			assert_equal("correct s_g vertices", "{ a, b, d, c, e, f }",s_g.vertices.out)
			assert_equal ("correct s_g edges" , "{ a -> b, d -> c, e -> e, b -> e }", s_g.edges.out)

			-- Vertex
			v1 := 1
			v2 := 2
			v3 := 3
			v4 := 4
			v5 := 5
			v5b := 5
			v6 := 6
			v_g := << [v1, v2], [v4, v3], [v5, v5] >>
			assert_equal("correct v_g vertices", "{ v:1, v:2, v:4, v:3, v:5 }",v_g.vertices.out)
			assert_equal ("correct v_g edges" , "{ v:1 -> v:2, v:4 -> v:3, v:5 -> v:5 }", v_g.edges.out)
			-- Edge Extend
			v_g.edge_extend ([v1, v2]) -- Extend by an existing edge
			assert_equal ("correct v_g edges" , "{ v:1 -> v:2, v:4 -> v:3, v:5 -> v:5 }", v_g.edges.out)
			Result := v_g.edge_count ~ 3 -- Unchanged
			check Result end
			v_g.edge_extend ([v2, v5]) -- Extend by new edge
			assert_equal ("correct v_g edges" , "{ v:1 -> v:2, v:4 -> v:3, v:5 -> v:5, v:2 -> v:5 }", v_g.edges.out)
			Result := v_g.edge_count ~ 4 -- Updated
			check Result end
			-- Vertex Extend
			v_g.vertex_extend (v5b)
			Result := v_g.vertex_count ~ 5 -- No change
			check Result end
			v_g.vertex_extend (v6)
			Result := v_g.vertex_count ~ 6 -- Updated
			Result := v_g.edge_count ~ 4 -- No change
			assert_equal("correct v_g vertices", "{ v:1, v:2, v:4, v:3, v:5, v:6 }",v_g.vertices.out)
			assert_equal ("correct v_g edges" , "{ v:1 -> v:2, v:4 -> v:3, v:5 -> v:5, v:2 -> v:5 }", v_g.edges.out)
		end

	t2: BOOLEAN -- Integer Edge & Vertex Removal
		local
			i_g: COMPARABLE_GRAPH [INTEGER]
		do
			comment("t2: Edge & Vertex Removal Procedures - Integer")
			i_g := << [1, 2], [4, 3], [5, 5], [2, 5]>>
			i_g.vertex_extend (6)
			assert_equal ("correct i_g vertices", "{ 1, 2, 4, 3, 5, 6 }",i_g.vertices.out)
			assert_equal ("correct i_g edges" , "{ 1 -> 2, 4 -> 3, 5 -> 5, 2 -> 5 }", i_g.edges.out)
			Result := i_g.edge_count ~ 4 and i_g.vertex_count ~ 6
			check Result end
			-- Remove vertex not attached to anything
			i_g.vertex_remove (6)
			assert_equal ("correct i_g vertices", "{ 1, 2, 4, 3, 5 }",i_g.vertices.out)
			assert_equal ("correct i_g edges" , "{ 1 -> 2, 4 -> 3, 5 -> 5, 2 -> 5 }", i_g.edges.out)
			Result := i_g.edge_count ~ 4 and i_g.vertex_count ~ 5
			check Result end
			-- Remove vertex with edges
			i_g.vertex_remove (5)
			assert_equal ("correct i_g vertices", "{ 1, 2, 4, 3 }",i_g.vertices.out)
			assert_equal ("correct i_g edges" , "{ 1 -> 2, 4 -> 3 }", i_g.edges.out)
			Result := i_g.edge_count ~ 2 and i_g.vertex_count ~ 4
			check Result end
			-- Remove Edge
			i_g.edge_remove ([1, 1]) -- Non-existent edge
			i_g.edge_remove ([1, 2]) -- Existing edge
			assert_equal ("correct i_g vertices", "{ 1, 2, 4, 3 }",i_g.vertices.out)
			assert_equal ("correct i_g edges" , "{ 4 -> 3 }", i_g.edges.out)
			Result := i_g.edge_count ~ 1 and i_g.vertex_count ~ 4
			check Result end

			i_g.vertex_remove (4)
			Result := i_g.edge_count ~ 0 and i_g.vertex_count ~ 3
			check Result end

			-- Remove the rest of the vertices
			i_g.vertex_remove (1)
			i_g.vertex_remove (2)
			i_g.vertex_remove (3)
			i_g.vertex_remove (10)
			Result := i_g.is_empty
			check Result end
		end

	t3: BOOLEAN -- String Edge & Vertex Removal
		local
			s_g: COMPARABLE_GRAPH [STRING]
		do
			comment("t3: Edge & Vertex Removal Procedures - String")
			-- String
			s_g := << ["a", "b"], ["d", "c"], ["e", "e"], ["b", "e"] >>
			s_g.vertex_extend ("f")
			assert_equal("correct s_g vertices", "{ a, b, d, c, e, f }",s_g.vertices.out)
			assert_equal ("correct s_g edges" , "{ a -> b, d -> c, e -> e, b -> e }", s_g.edges.out)
			Result := s_g.edge_count ~ 4 and s_g.vertex_count ~ 6
			check Result end
			-- Remove vertex not attached to anything
			s_g.vertex_remove ("f")
			assert_equal("correct s_g vertices", "{ a, b, d, c, e }",s_g.vertices.out)
			assert_equal ("correct s_g edges" , "{ a -> b, d -> c, e -> e, b -> e }", s_g.edges.out)
			Result := s_g.edge_count ~ 4 and s_g.vertex_count ~ 5
			check Result end
			-- Remove vertex with edges
			s_g.vertex_remove ("e")
			assert_equal("correct s_g vertices", "{ a, b, d, c }",s_g.vertices.out)
			assert_equal ("correct s_g edges" , "{ a -> b, d -> c }", s_g.edges.out)
			Result := s_g.edge_count ~ 2 and s_g.vertex_count ~ 4
			check Result end
			-- Remove Edge
			s_g.edge_remove (["f", "b"]) -- Non-existent edge
			Result := s_g.edge_count ~ 2 and s_g.vertex_count ~ 4
			check Result end
			s_g.edge_remove (["a", "b"]) -- Existing edge
			assert_equal("correct s_g vertices", "{ a, b, d, c }",s_g.vertices.out)
			assert_equal ("correct s_g edges" , "{ d -> c }", s_g.edges.out)
			Result := s_g.edge_count ~ 1 and s_g.vertex_count ~ 4
			check Result end
		end

	t4: BOOLEAN -- `VERTEX` Edge & Vertex Removal
		local
			v_g: COMPARABLE_GRAPH [VERTEX[INTEGER]]
			v1, v2, v3, v4, v5, v6: VERTEX[INTEGER]
		do
			comment("t4: Edge & Vertex Removal Procedures - Vertex")
			-- Vertex
			v1 := 1
			v2 := 2
			v3 := 3
			v4 := 4
			v5 := 5
			v6 := 6
			v_g := << [v1, v2], [v4, v3], [v5, v5], [v2, v5] >>
			v_g.vertex_extend (v6)
			assert_equal ("correct v_g vertices", "{ v:1, v:2, v:4, v:3, v:5, v:6 }",v_g.vertices.out)
			assert_equal ("correct v_g edges" , "{ v:1 -> v:2, v:4 -> v:3, v:5 -> v:5, v:2 -> v:5 }", v_g.edges.out)
			Result := v_g.edge_count ~ 4 and v_g.vertex_count ~ 6
			check Result end
			-- Remove vertex not attached to anything
			v_g.vertex_remove (v6)
			assert_equal ("correct v_g vertices", "{ v:1, v:2, v:4, v:3, v:5 }",v_g.vertices.out)
			assert_equal ("correct v_g edges" , "{ v:1 -> v:2, v:4 -> v:3, v:5 -> v:5, v:2 -> v:5 }", v_g.edges.out)
			Result := v_g.edge_count ~ 4 and v_g.vertex_count ~ 5
			check Result end
			-- Remove vertex with edges
			v_g.vertex_remove (v5)
			assert_equal ("correct v_g vertices", "{ v:1, v:2, v:4, v:3 }",v_g.vertices.out)
			assert_equal ("correct v_g edges" , "{ v:1 -> v:2, v:4 -> v:3 }", v_g.edges.out)
			Result := v_g.edge_count ~ 2 and v_g.vertex_count ~ 4
			check Result end
			-- Remove Edge
			v_g.edge_remove ([v1, v1]) -- Non-existent edge
			Result := v_g.edge_count ~ 2 and v_g.vertex_count ~ 4 -- unchanged
			check Result end
			v_g.edge_remove ([v1, v2]) -- Existing edge
			assert_equal ("correct v_g vertices", "{ v:1, v:2, v:4, v:3 }",v_g.vertices.out)
			assert_equal ("correct v_g edges" , "{ v:4 -> v:3 }", v_g.edges.out)
			Result := v_g.edge_count ~ 1 and v_g.vertex_count ~ 4
			check Result end

		end


	t5: BOOLEAN -- has_vertex, has_edge test
		local
			i_g: COMPARABLE_GRAPH [INTEGER]
			s_g: COMPARABLE_GRAPH [STRING]
			v_g: COMPARABLE_GRAPH [VERTEX[INTEGER]]
			v1, v2, v3, v4, v5, v5b, v6, v7: VERTEX[INTEGER]
		do
			comment ("t5: has_vertex & has_edge - Integer, String, Vertex Cases")

			i_g := << [1, 2], [4, 3], [5, 5], [2, 5] >>
			i_g.vertex_extend (6)
			assert_equal ("correct i_g vertices", "{ 1, 2, 4, 3, 5, 6 }",i_g.vertices.out)
			assert_equal ("correct i_g edges" , "{ 1 -> 2, 4 -> 3, 5 -> 5, 2 -> 5 }", i_g.edges.out)
			Result := i_g.edge_count ~ 4 and i_g.vertex_count ~ 6
			check Result end
			Result := i_g.has_edge ([4, 3]) and not i_g.has_edge ([5, 2]) and not i_g.has_edge ([6, 6])
			check Result end
			Result := i_g.has_vertex (1) and not i_g.has_vertex (7)
			check Result end


			s_g := << ["a", "b"], ["d", "c"], ["e", "e"], ["b", "e"] >>
			s_g.vertex_extend ("f")
			assert_equal("correct s_g vertices", "{ a, b, d, c, e, f }",s_g.vertices.out)
			assert_equal ("correct s_g edges" , "{ a -> b, d -> c, e -> e, b -> e }", s_g.edges.out)
			Result := s_g.edge_count ~ 4 and s_g.vertex_count ~ 6
			check Result end
			Result := s_g.has_edge (["d", "c"]) and not s_g.has_edge (["e", "b"]) and not s_g.has_edge (["f", "f"])
			check Result end
			Result := s_g.has_vertex ("a") and not s_g.has_vertex ("g")
			check Result end


			v1 := 1
			v2 := 2
			v3 := 3
			v4 := 4
			v5 := 5
			v5b := 5
			v6 := 6
			v7 := 7
			v_g := << [v1, v2], [v4, v3], [v5, v5], [v2, v5] >>
			v_g.vertex_extend (v6)
			assert_equal ("correct v_g vertices", "{ v:1, v:2, v:4, v:3, v:5, v:6 }",v_g.vertices.out)
			assert_equal ("correct v_g edges" , "{ v:1 -> v:2, v:4 -> v:3, v:5 -> v:5, v:2 -> v:5 }", v_g.edges.out)
			Result := v_g.edge_count ~ 4 and v_g.vertex_count ~ 6
			check Result end
			Result := v_g.has_edge ([v4, v3]) and not v_g.has_edge ([v5, v2]) and not v_g.has_edge ([v6, v6])
			check Result end
			Result := v_g.has_vertex (v5) and not v_g.has_vertex (v7) and v_g.has_vertex (v5b)
			check Result end
		end

	t6: BOOLEAN -- outgoing & incoming for Integer
		local
			i_g: COMPARABLE_GRAPH [INTEGER]
		do
			comment("t6: outgoing & incoming - Integer")
			i_g := << [1, 2], [4, 3], [5, 5], [2, 5]>>
			i_g.vertex_extend (6)
			assert_equal ("correct i_g vertices", "{ 1, 2, 4, 3, 5, 6 }",i_g.vertices.out)
			assert_equal ("correct i_g edges" , "{ 1 -> 2, 4 -> 3, 5 -> 5, 2 -> 5 }", i_g.edges.out)
			Result := i_g.edge_count ~ 4 and i_g.vertex_count ~ 6
			check Result end

			Result := i_g.incoming (1).is_empty -- Empty result
			check Result end

			assert_equal ("correct i_g.incoming(5)", "{ 5 -> 5, 2 -> 5 }", i_g.incoming (5).out) -- Self loop
			Result := i_g.incoming (5).count ~ 2
			check Result end

			assert_equal ("correct i_g.incoming(2)", "{ 1 -> 2 }", i_g.incoming (2).out) -- Single Case
			Result := i_g.incoming (2).count ~ 1
			check Result end

			i_g.vertex_remove (1)
			Result := i_g.incoming (2).count ~ 0
			check Result end

			i_g.edge_extend ([2, 3])
			assert_equal ("correct i_g.outgoing(2)", "{ 2 -> 5, 2 -> 3 }", i_g.outgoing (2).out)
			Result := i_g.outgoing (2).count ~ 2
			check Result end

			i_g.vertex_remove (3)
			assert_equal ("correct i_g.outgoing(2)", "{ 2 -> 5 }", i_g.outgoing (2).out)
			Result := i_g.outgoing (2).count ~ 1
			check Result end

		end

	t7: BOOLEAN -- outgoing & incoming for String
		local
			s_g: COMPARABLE_GRAPH [STRING]
		do
			comment("t7: outgoing & incoming - String")
			s_g := << ["a", "b"], ["d", "c"], ["e", "e"], ["b", "e"] >>
			s_g.vertex_extend ("f")
			assert_equal("correct s_g vertices", "{ a, b, d, c, e, f }",s_g.vertices.out)
			assert_equal ("correct s_g edges" , "{ a -> b, d -> c, e -> e, b -> e }", s_g.edges.out)
			Result := s_g.edge_count ~ 4 and s_g.vertex_count ~ 6
			check Result end

			Result := s_g.incoming ("a").is_empty -- Empty result
			check Result end

			assert_equal ("correct s_g.incoming(e)", "{ e -> e, b -> e }", s_g.incoming ("e").out) -- Self loop
			Result := s_g.incoming ("e").count ~ 2
			check Result end

			assert_equal ("correct s_g.incoming(b)", "{ a -> b }", s_g.incoming ("b").out) -- Single Case
			Result := s_g.incoming ("b").count ~ 1
			check Result end

			s_g.vertex_remove ("a")
			Result := s_g.incoming ("b").count ~ 0
			check Result end

			s_g.edge_extend (["b", "c"])
			assert_equal ("correct s_g.outgoing(b)", "{ b -> e, b -> c }", s_g.outgoing ("b").out)
			Result := s_g.outgoing ("b").count ~ 2
			check Result end

			s_g.vertex_remove ("c")
			assert_equal ("correct s_g.outgoing(b)", "{ b -> e }", s_g.outgoing ("b").out)
			Result := s_g.outgoing ("b").count ~ 1
			check Result end
		end

	t8: BOOLEAN -- outgoing & incoming for vertex
		local
			v_g: COMPARABLE_GRAPH [VERTEX[INTEGER]]
			v1, v2, v3, v4, v5, v5b, v6, v7: VERTEX[INTEGER]
		do
			comment("t8: outgoing & incoming - Vertex")
			v1 := 1
			v2 := 2
			v3 := 3
			v4 := 4
			v5 := 5
			v5b := 5
			v6 := 6
			v7 := 7
			v_g := << [v1, v2], [v4, v3], [v5, v5], [v2, v5b] >>
			v_g.vertex_extend (v6)
			assert_equal ("correct v_g vertices", "{ v:1, v:2, v:4, v:3, v:5, v:6 }",v_g.vertices.out)
			assert_equal ("correct v_g edges" , "{ v:1 -> v:2, v:4 -> v:3, v:5 -> v:5, v:2 -> v:5 }", v_g.edges.out)

			Result := v_g.incoming (v1).is_empty -- Empty result
			check Result end

			assert_equal ("correct v_g.incoming(v5)", "{ v:5 -> v:5, v:2 -> v:5 }", v_g.incoming (v5b).out) -- Self loop
			Result := v_g.incoming (v5).count ~ 2
			check Result end

			assert_equal ("correct v_g.incoming(v2)", "{ v:1 -> v:2 }", v_g.incoming (v2).out) -- Single Case
			Result := v_g.incoming (v2).count ~ 1
			check Result end

			v_g.vertex_remove (v1)
			Result := v_g.incoming (v2).count ~ 0
			check Result end

			v_g.edge_extend ([v2, v3])
			assert_equal ("correct v_g.outgoing(v2)", "{ v:2 -> v:5, v:2 -> v:3 }", v_g.outgoing (2).out)
			Result := v_g.outgoing (v2).count ~ 2
			check Result end

			v_g.vertex_remove (v3)
			assert_equal ("correct v_g.outgoing(v2)", "{ v:2 -> v:5 }", v_g.outgoing (v2).out)
			Result := v_g.outgoing (v2).count ~ 1
			check Result end
		end

	t9: BOOLEAN -- adjacent for Integer
		local
			i_g: COMPARABLE_GRAPH [INTEGER]
		do
			comment("t9: adjacent - Integer")

			i_g := << [1, 2], [4, 3], [5, 5], [2, 5], [1, 5], [1, 3], [1, 1] >>
			i_g.vertex_extend (6)
			assert_equal ("correct i_g vertices", "{ 1, 2, 4, 3, 5, 6 }",i_g.vertices.out)
			assert_equal ("correct i_g edges" , "{ 1 -> 2, 4 -> 3, 5 -> 5, 2 -> 5, 1 -> 5, 1 -> 3, 1 -> 1 }", i_g.edges.out)
			Result := i_g.edge_count ~ 7 and i_g.vertex_count ~ 6
			check Result end

			assert_equal ("correct i_g.adjacent(1)", "< 1, 2, 3, 5 >", i_g.adjacent (1).out)
			Result := i_g.adjacent (1).count ~ 4
			check Result end
			assert_equal ("correct i_g.adjacent(5)", "< 5 >", i_g.adjacent (5).out)
			Result := i_g.adjacent (5).count ~ 1
		end

	t10: BOOLEAN -- adjacent for String
		local
			s_g: COMPARABLE_GRAPH [STRING]
		do
			comment("t10: adjacent - String")
			s_g := << ["a", "b"], ["d", "c"], ["e", "e"], ["b", "e"], ["a", "e"], ["a", "c"], ["a", "a"] >>
			s_g.vertex_extend ("f")
			assert_equal("correct s_g vertices", "{ a, b, d, c, e, f }",s_g.vertices.out)
			assert_equal ("correct s_g edges" , "{ a -> b, d -> c, e -> e, b -> e, a -> e, a -> c, a -> a }", s_g.edges.out)
			Result := s_g.edge_count ~ 7 and s_g.vertex_count ~ 6
			check Result end

			assert_equal ("correct s_g.adjacent (a)", "< a, b, c, e >", s_g.adjacent ("a").out)
			Result := s_g.adjacent ("a").count ~ 4
			check Result end
			assert_equal ("correct s_g.adjacent (d)", "< c >", s_g.adjacent ("d").out)
			Result := s_g.adjacent ("d").count ~ 1
		end

	t11: BOOLEAN -- adjacent for vertex
		local
			v_g: COMPARABLE_GRAPH [VERTEX[INTEGER]]
			v1, v2, v3, v4, v5, v5b, v6, v7: VERTEX[INTEGER]
		do
			comment("t11: adjacent - Vertex")
			v1 := 1
			v2 := 2
			v3 := 3
			v4 := 4
			v5 := 5
			v5b := 5
			v6 := 6
			v7 := 7
			v_g := << [v1, v2], [v4, v3], [v5, v5], [v2, v5b], [v1, v5], [v1, v3], [v1, v1] >>
			v_g.vertex_extend (v6)
			assert_equal ("correct v_g vertices", "{ v:1, v:2, v:4, v:3, v:5, v:6 }",v_g.vertices.out)
			assert_equal ("correct v_g edges" , "{ v:1 -> v:2, v:4 -> v:3, v:5 -> v:5, v:2 -> v:5, v:1 -> v:5, v:1 -> v:3, v:1 -> v:1 }", v_g.edges.out)
			Result := v_g.vertex_count ~ 6 and v_g.edge_count ~ 7

			assert_equal ("correct v_g.adjacent (v1)", "< v:1, v:2, v:3, v:5 >", v_g.adjacent (v1).out)
			Result := v_g.adjacent (v1).count ~ 4
			check Result end

			assert_equal ("correct v_g.adjacent (v4)", "< v:3 >", v_g.adjacent (v4).out)
			Result := v_g.adjacent (v4).count ~ 1
			check Result end
		end


feature -- Advanced Query Testing

	t19: BOOLEAN
		local
			i_g: COMPARABLE_GRAPH [INTEGER]
			seq: SEQ[INTEGER]
		do
			comment("t19: Toplogical Sort - Integer")

			i_g := << [1, 2], [4, 6], [5, 3], [2, 4], [1, 3], [5, 6] >>
			assert_equal ("correct i_g vertices", "{ 1, 2, 4, 6, 5, 3 }",i_g.vertices.out)
			assert_equal ("correct i_g edges" , "{ 1 -> 2, 4 -> 6, 5 -> 3, 2 -> 4, 1 -> 3, 5 -> 6 }", i_g.edges.out)
			Result := i_g.edge_count ~ 6 and i_g.vertex_count ~ 6
			check Result end

			assert_equal ("correct i_g topological sort", "< 1, 5, 2, 3, 4, 6 >", i_g.topologically_sorted.out)
			i_g.edge_remove ([5, 6])
			assert_equal ("correct i_g topological sort", "< 1, 5, 2, 3, 4, 6 >", i_g.topologically_sorted.out)
			i_g.edge_extend ([5, 1])
			assert_equal ("correct i_g topological sort", "< 5, 1, 2, 3, 4, 6 >", i_g.topologically_sorted.out)
			i_g.vertex_remove (6)
			assert_equal ("correct i_g topological sort", "< 5, 1, 2, 3, 4 >", i_g.topologically_sorted.out)
			i_g.vertex_extend (-1)
			i_g.edge_extend ([5, -1])
			assert_equal ("correct i_g topological sort", "< 5, -1, 1, 2, 3, 4 >", i_g.topologically_sorted.out)
			i_g.vertex_remove (-1)
			i_g.vertex_extend (32)
			i_g.edge_extend ([5, 32])
			assert_equal ("correct i_g topological sort", "< 5, 1, 32, 2, 3, 4 >", i_g.topologically_sorted.out)

			-- Add in a single vertex with no edges
			i_g.vertex_extend (0)
			assert_equal ("correct i_g topological sort", "< 5, 0, 1, 32, 2, 3, 4 >", i_g.topologically_sorted.out) -- One possible top. Sorting
			-- Try removing a vertex (with multiple edges), then add it back in (changes order of topological sort)
			seq := i_g.topologically_sorted
			Result := i_g.is_topologically_sorted (seq)
			check Result end
			assert_equal ("correct outgoing edges from 5", "{ 5 -> 3, 5 -> 1, 5 -> 32 }", i_g.outgoing (5).out)
			Result := i_g.incoming (5).is_empty
			check Result end
			i_g.vertex_remove (5)
			i_g.vertex_extend (5)
			i_g.edge_extend ([5, 3])
			i_g.edge_extend ([5, 1])
			i_g.edge_extend ([5, 32])
			assert_equal ("correct outgoing edges from 5", "{ 5 -> 3, 5 -> 1, 5 -> 32 }", i_g.outgoing (5).out)
			Result := i_g.incoming (5).is_empty
			check Result end
			seq := i_g.topologically_sorted
			Result := i_g.is_topologically_sorted (seq)
			check Result end
			assert_equal ("correct i_g topological sort", "< 0, 5, 1, 32, 2, 3, 4 >", i_g.topologically_sorted.out) -- order has changed
			--------

			i_g := << [1, 2], [4, 6], [5, 3], [2, 4], [1, 3], [5, 6] >> -- Reset i_g
			seq := << 1, 5, 2, 3, 4, 6 >>
			Result := i_g.is_topologically_sorted (seq)
			check Result end
			seq := << 5, 1, 2, 3, 4, 6 >>
			Result := i_g.is_topologically_sorted (seq)
			check Result end
			seq := << 5, 1, 2, 3, 6, 4 >>
			Result := not i_g.is_topologically_sorted (seq)
			i_g.edge_extend ([5, 1])
			seq := << 5, 1, 2, 3, 4, 6 >>
			Result := i_g.is_topologically_sorted (seq)
			seq := << 1, 5, 2, 3, 4, 6 >>
			Result := not i_g.is_topologically_sorted (seq)
		end

	t20: BOOLEAN
		local
			s_g: COMPARABLE_GRAPH [STRING]
			seq: SEQ[STRING]
		do
			comment("t20: Toplogical Sort - String")

			s_g := << ["a", "b"], ["d", "f"], ["e", "c"], ["b", "d"], ["a", "c"], ["e", "f"] >>
			assert_equal("correct s_g vertices", "{ a, b, d, f, e, c }",s_g.vertices.out)
			assert_equal ("correct s_g edges" , "{ a -> b, d -> f, e -> c, b -> d, a -> c, e -> f }", s_g.edges.out)
			Result := s_g.edge_count ~ 6 and s_g.vertex_count ~ 6
			check Result end

			assert_equal ("correct s_g topological sort", "< a, e, b, c, d, f >", s_g.topologically_sorted.out)
			s_g.edge_remove (["e", "f"])
			assert_equal ("correct s_g topological sort", "< a, e, b, c, d, f >", s_g.topologically_sorted.out)
			s_g.edge_extend (["e", "a"])
			assert_equal ("correct s_g topological sort", "< e, a, b, c, d, f >", s_g.topologically_sorted.out)
			s_g.vertex_remove ("f")
			assert_equal ("correct s_g topological sort", "< e, a, b, c, d >", s_g.topologically_sorted.out)
			s_g.vertex_extend ("Z")
			s_g.edge_extend (["e", "Z"])
			assert_equal ("correct s_g topological sort", "< e, Z, a, b, c, d >", s_g.topologically_sorted.out)
			s_g.vertex_remove ("Z")
			s_g.vertex_extend ("z")
			s_g.edge_extend (["e", "z"])
			assert_equal ("correct s_g topological sort", "< e, a, z, b, c, d >", s_g.topologically_sorted.out)

			-- Add in a single vertex with no edges
			s_g.vertex_extend ("A")
			assert_equal ("correct s_g topological sort", "< e, A, a, z, b, c, d >", s_g.topologically_sorted.out)
			-- Try removing a vertex (with multiple edges), then add it back in (changes order of topological sort)
			seq := s_g.topologically_sorted
			Result := s_g.is_topologically_sorted (seq)
			check Result end
			assert_equal ("correct outgoing edges from e", "{ e -> c, e -> a, e -> z }", s_g.outgoing ("e").out)
			Result := s_g.incoming ("e").is_empty
			check Result end
			s_g.vertex_remove ("e")
			s_g.vertex_extend ("e")
			s_g.edge_extend (["e", "c"])
			s_g.edge_extend (["e", "a"])
			s_g.edge_extend (["e", "z"])
			assert_equal ("correct outgoing edges from e", "{ e -> c, e -> a, e -> z }", s_g.outgoing ("e").out)
			Result := s_g.incoming ("e").is_empty
			check Result end
			seq := s_g.topologically_sorted
			Result := s_g.is_topologically_sorted (seq)
			check Result end
			assert_equal ("correct s_g topological sort", "< A, e, a, z, b, c, d >", s_g.topologically_sorted.out) -- order has changed


			s_g := << ["a", "b"], ["d", "f"], ["e", "c"], ["b", "d"], ["a", "c"], ["e", "f"] >> -- Reset s_g
			seq := << "a", "e", "b", "c", "d", "f" >>
			Result := s_g.is_topologically_sorted (seq)
			check Result end
			seq := << "e", "a", "b", "c", "d", "f" >>
			Result := s_g.is_topologically_sorted (seq)
			check Result end
			seq := << "e", "a", "b", "c", "f", "d" >>
			Result := not s_g.is_topologically_sorted (seq)
			s_g.edge_extend (["e", "a"])
			seq := << "e", "a", "b", "c", "d", "f" >>
			Result := s_g.is_topologically_sorted (seq)
			seq := << "a", "e", "b", "c", "d", "f" >>
			Result := not s_g.is_topologically_sorted (seq)
		end

	t21: BOOLEAN
		local
			v_g: COMPARABLE_GRAPH [VERTEX[INTEGER]]
			seq: SEQ[VERTEX[INTEGER]]
			v0, v1, v2, v3, v4, v5, v6, vn1, v32: VERTEX[INTEGER]
		do
			comment("t21: Toplogical Sort - Vertex")
			v0 := 0
			v1 := 1
			v2 := 2
			v3 := 3
			v4 := 4
			v5 := 5
			v6 := 6
			vn1 := -1
			v32 := 32

			v_g := << [v1, v2], [v4, v6], [v5, v3], [v2, v4], [v1, v3], [v5, v6] >>
			assert_equal ("correct v_g vertices", "{ v:1, v:2, v:4, v:6, v:5, v:3 }", v_g.vertices.out)
			assert_equal ("correct v_g edges" , "{ v:1 -> v:2, v:4 -> v:6, v:5 -> v:3, v:2 -> v:4, v:1 -> v:3, v:5 -> v:6 }", v_g.edges.out)
			Result := v_g.edge_count ~ 6 and v_g.vertex_count ~ 6
			check Result end

			assert_equal ("correct v_g topological sort", "< v:1, v:5, v:2, v:3, v:4, v:6 >", v_g.topologically_sorted.out)
			v_g.edge_remove ([v5, v6])
			assert_equal ("correct v_g topological sort", "< v:1, v:5, v:2, v:3, v:4, v:6 >", v_g.topologically_sorted.out)
			v_g.edge_extend ([v5, v1])
			assert_equal ("correct v_g topological sort", "< v:5, v:1, v:2, v:3, v:4, v:6 >", v_g.topologically_sorted.out)
			v_g.vertex_remove (v6)
			assert_equal ("correct v_g topological sort", "< v:5, v:1, v:2, v:3, v:4 >", v_g.topologically_sorted.out)
			v_g.vertex_extend (vn1)
			v_g.edge_extend ([v5, vn1])
			assert_equal ("correct v_g topological sort", "< v:5, v:-1, v:1, v:2, v:3, v:4 >", v_g.topologically_sorted.out)
			v_g.vertex_remove (vn1)
			v_g.vertex_extend (v32)
			v_g.edge_extend ([v5, v32])
			assert_equal ("correct v_g topological sort", "< v:5, v:1, v:32, v:2, v:3, v:4 >", v_g.topologically_sorted.out)

			-- Add in a single vertex with no edges
			v_g.vertex_extend (v0)
			assert_equal ("correct v_g topological sort", "< v:5, v:0, v:1, v:32, v:2, v:3, v:4 >", v_g.topologically_sorted.out) -- One possible top. Sorting
			-- Try removing a vertex (with multiple edges), then add it back in (changes order of topological sort)
			seq := v_g.topologically_sorted
			Result := v_g.is_topologically_sorted (seq)
			check Result end
			assert_equal ("correct outgoing edges from v5", "{ v:5 -> v:3, v:5 -> v:1, v:5 -> v:32 }", v_g.outgoing (v5).out)
			Result := v_g.incoming (v5).is_empty
			check Result end
			v_g.vertex_remove (v5)
			v_g.vertex_extend (v5)
			v_g.edge_extend ([v5, v3])
			v_g.edge_extend ([v5, v1])
			v_g.edge_extend ([v5, v32])
			assert_equal ("correct outgoing edges from v5", "{ v:5 -> v:3, v:5 -> v:1, v:5 -> v:32 }", v_g.outgoing (v5).out)
			Result := v_g.incoming (v5).is_empty
			check Result end
			seq := v_g.topologically_sorted
			Result := v_g.is_topologically_sorted (seq)
			check Result end
			assert_equal ("correct i_g topological sort", "< v:0, v:5, v:1, v:32, v:2, v:3, v:4 >", v_g.topologically_sorted.out) -- order has changed
			--------

			v_g := << [v1, v2], [v4, v6], [v5, v3], [v2, v4], [v1, v3], [v5, v6] >> -- Reset i_g
			seq := << v1, v5, v2, v3, v4, v6 >>
			Result := v_g.is_topologically_sorted (seq)
			check Result end
			seq := << v5, v1, v2, v3, v4, v6 >>
			Result := v_g.is_topologically_sorted (seq)
			check Result end
			seq := << v5, v1, v2, v3, v6, v4 >>
			Result := not v_g.is_topologically_sorted (seq)
			v_g.edge_extend ([v5, v1])
			seq := << v5, v1, v2, v3, v4, v6 >>
			Result := v_g.is_topologically_sorted (seq)
			seq := << v1, v5, v2, v3, v4, v6 >>
			Result := not v_g.is_topologically_sorted (seq)
		end

	t22: BOOLEAN -- reachable & is_reachable INTEGER
		local
			i_g: COMPARABLE_GRAPH [INTEGER]
		do
			comment("t22: reachable & is_reachable - Integer")
			i_g := << [1, 2], [1, 3], [2, 1], [3, 4], [4, 4], [4, 5], [7, 6], [7, 2] >>
			Result := i_g.edge_count ~ 8 and i_g.vertex_count ~ 7
			check Result end

			assert_equal ("Reachable from 1", "< 1, 2, 3, 4, 5 >", i_g.reachable (1).out)
			assert_equal ("Reachable from 2", "< 2, 1, 3, 4, 5 >", i_g.reachable (2).out)
			assert_equal ("Reachable from 3", "< 3, 4, 5 >", i_g.reachable (3).out)
			assert_equal ("Reachable from 4", "< 4, 5 >", i_g.reachable (4).out)
			assert_equal ("Reachable from 5", "< 5 >", i_g.reachable (5).out)
			assert_equal ("Reachable from 7", "< 7, 2, 6, 1, 3, 4, 5 >", i_g.reachable (7).out)

			Result := not i_g.is_reachable (1, 7)
			check Result end

			Result := i_g.is_reachable (7, 1)
			check Result end

			Result := i_g.is_reachable (7, 5)
			check Result end
		end

	t23: BOOLEAN -- reachable & is_reachable STRING
		local
			s_g: COMPARABLE_GRAPH [STRING]
		do
			comment("t23: reachable & is_reachable - String")
			s_g := << ["a", "b"], ["a", "c"], ["b", "a"], ["c", "d"], ["d", "d"], ["d", "e"], ["g", "f"], ["g", "b"] >>
			Result := s_g.edge_count ~ 8 and s_g.vertex_count ~ 7
			check Result end

			assert_equal ("Reachable from a", "< a, b, c, d, e >", s_g.reachable ("a").out)
			assert_equal ("Reachable from 2", "< b, a, c, d, e >", s_g.reachable ("b").out)
			assert_equal ("Reachable from 3", "< c, d, e >", s_g.reachable ("c").out)
			assert_equal ("Reachable from 4", "< d, e >", s_g.reachable ("d").out)
			assert_equal ("Reachable from 5", "< e >", s_g.reachable ("e").out)
			assert_equal ("Reachable from 7", "< g, b, f, a, c, d, e >", s_g.reachable ("g").out)

			Result := not s_g.is_reachable ("a", "g")
			check Result end

			Result := s_g.is_reachable ("g", "a")
			check Result end

			Result := s_g.is_reachable ("g", "e")
			check Result end
		end

	t24: BOOLEAN -- reachable & is_reachable VERTEX
		local
			v_g: COMPARABLE_GRAPH [VERTEX[INTEGER]]
			v1, v2, v3, v4, v5, v6, v7: VERTEX[INTEGER]
		do
			comment("t24: reachable & is_reachable - Vertex")
			v1 := 1
			v2 := 2
			v3 := 3
			v4 := 4
			v5 := 5
			v6 := 6
			v7 := 7
			v_g := << [v1, v2], [v1, v3], [v2, v1], [v3, v4], [v4, v4], [v4, v5], [v7, v6], [v7, v2] >>
			Result := v_g.edge_count ~ 8 and v_g.vertex_count ~ 7
			check Result end

			assert_equal ("Reachable from v1", "< v:1, v:2, v:3, v:4, v:5 >", v_g.reachable (v1).out)
			assert_equal ("Reachable from v2", "< v:2, v:1, v:3, v:4, v:5 >", v_g.reachable (v2).out)
			assert_equal ("Reachable from v3", "< v:3, v:4, v:5 >", v_g.reachable (v3).out)
			assert_equal ("Reachable from v4", "< v:4, v:5 >", v_g.reachable (v4).out)
			assert_equal ("Reachable from v5", "< v:5 >", v_g.reachable (v5).out)
			assert_equal ("Reachable from v7", "< v:7, v:2, v:6, v:1, v:3, v:4, v:5 >", v_g.reachable (v7).out)

			Result := not v_g.is_reachable (v1, v7)
			check Result end

			Result := v_g.is_reachable (v7, v1)
			check Result end

			Result := v_g.is_reachable (v7, v5)
			check Result end
		end


	t25: BOOLEAN -- paths, shortest_path, shortest_path_via_dijkstra - INTEGER
		local
			i_g: COMPARABLE_GRAPH [INTEGER]
			seq: SEQ[INTEGER]
		do
			comment("t25: paths, shortest_path - Integer")
			i_g := << [1, 3], [2, 1], [3, 4], [4, 4], [4, 5], [7, 6], [7, 2], [2, 5] >>
			Result := i_g.edge_count ~ 8 and i_g.vertex_count ~ 7
			check Result end

			assert_equal ("paths from 1 -> 5", "{ < 1, 3, 4, 5 > }", i_g.paths (1, 5).out)
			check attached i_g.shortest_path(1, 5) as sp then
				Result := sp.out ~ "< 1, 3, 4, 5 >"
			end
			check Result end

			assert_equal ("paths from 2 -> 5", "{ < 2, 5 >, < 2, 1, 3, 4, 5 > }", i_g.paths (2, 5).out)

			i_g.edge_extend ([2, 3])
			assert_equal ("paths from 2 -> 5", "{ < 2, 5 >, < 2, 3, 4, 5 >, < 2, 1, 3, 4, 5 > }", i_g.paths (2, 5).out)

			assert_equal ("paths from 7 -> 5", "{ < 7, 2, 5 >, < 7, 2, 3, 4, 5 >, < 7, 2, 1, 3, 4, 5 > }", i_g.paths (7, 5).out)

			Result := i_g.paths (6, 7).is_empty
			check Result end

			i_g.edge_extend ([4, 2])
			assert_equal ("paths from 4 -> 4",  "{ < 4 > }", i_g.paths (4, 4).out)
			assert_equal ("paths from 4 -> 5", "{ < 4, 5 >, < 4, 2, 5 > }", i_g.paths (4, 5).out) -- avoided cycle

			i_g.edge_extend ([6, 5])
			check attached i_g.shortest_path (7, 5) as sp then
				Result := sp.out ~ "< 7, 2, 5 >"
			end
			check Result end

			i_g := << [1, 3], [2, 1], [3, 4], [4, 5], [7, 6], [7, 2], [2, 5] >>
			check attached i_g.shortest_path(2, 5) as sp then
				assert_equal("sp_bfs 2 -> 5", "< 2, 5 >", sp.out)
			end
			i_g.edge_remove ([2, 5])
			check attached i_g.shortest_path(2, 5) as sp then
				assert_equal("sp_bfs 2 -> 5", "< 2, 1, 3, 4, 5 >", sp.out)
			end

			i_g.edge_extend ([2, 5])
			i_g.edge_extend ([6, 5])

			assert_equal("i_g adjacent(7)", "< 2, 6 >", i_g.adjacent (7).out)

			check attached i_g.shortest_path(7, 5) as sp then
				assert_equal("sp_bfs 7 -> 5", "< 7, 2, 5 >", sp.out)
			end
			--

			i_g.edge_remove ([2, 5])
			check attached i_g.shortest_path(7, 5) as sp then
				assert_equal("sp_bfs 7 -> 5", "< 7, 6, 5 >", sp.out)
			end

			create i_g.make_empty
			check not attached i_g.shortest_path (1, 2) end -- Test against empty graph
		end

	t26: BOOLEAN -- paths, shortest_path, shortest_path_via_dijkstra - STRING
		local
			s_g: COMPARABLE_GRAPH [STRING]
			seq: SEQ[STRING]
		do
			comment("t26: paths, shortest_path - String")
			s_g := << ["a", "c"], ["b", "a"], ["c", "d"], ["d", "d"], ["d", "e"], ["g", "f"], ["g", "b"], ["b", "e"] >>
			Result := s_g.edge_count ~ 8 and s_g.vertex_count ~ 7
			check Result end

			assert_equal ("paths from a -> e", "{ < a, c, d, e > }", s_g.paths ("a", "e").out)
			check attached s_g.shortest_path("a", "e") as sp then
				Result := sp.out ~ "< a, c, d, e >"
			end
			check Result end

			assert_equal ("paths from b -> e", "{ < b, e >, < b, a, c, d, e > }", s_g.paths ("b", "e").out)

			s_g.edge_extend (["b", "c"])
			assert_equal ("paths from b -> e", "{ < b, e >, < b, c, d, e >, < b, a, c, d, e > }", s_g.paths ("b", "e").out)

			assert_equal ("paths from g -> e", "{ < g, b, e >, < g, b, c, d, e >, < g, b, a, c, d, e > }", s_g.paths ("g", "e").out)

			Result := s_g.paths ("f", "g").is_empty
			check Result end

			s_g.edge_extend (["d", "b"])
			assert_equal ("paths from d -> d",  "{ < d > }", s_g.paths ("d", "d").out)
			assert_equal ("paths from d -> e", "{ < d, e >, < d, b, e > }", s_g.paths ("d", "e").out) -- avoided cycle

			s_g.edge_extend (["f", "e"])
			check attached s_g.shortest_path ("g", "e") as sp then
				Result := sp.out ~ "< g, b, e >"
			end
			check Result end

			s_g := << ["a", "c"], ["b", "a"], ["c", "d"], ["d", "e"], ["g", "f"], ["g", "b"], ["b", "e"] >>
			check attached s_g.shortest_path("b", "e") as sp then
				assert_equal("sp_bfs b -> e", "< b, e >", sp.out)
			end
			s_g.edge_remove (["b", "e"])
			check attached s_g.shortest_path("b", "e") as sp then
				assert_equal("sp_bfs b -> e", "< b, a, c, d, e >", sp.out)
			end

			s_g.edge_extend (["b", "e"])
			s_g.edge_extend (["f", "e"])

			assert_equal("i_g adjacent(g)", "< b, f >", s_g.adjacent ("g").out)

			check attached s_g.shortest_path("g", "e") as sp then
				assert_equal("sp_bfs g -> e", "< g, b, e >", sp.out)
			end
			--

			s_g.edge_remove (["b", "e"])
			check attached s_g.shortest_path("g", "e") as sp then
				assert_equal("sp_bfs g -> e", "< g, f, e >", sp.out)
			end

			create s_g.make_empty
			check not attached s_g.shortest_path ("a", "b") end -- Test against empty graph
		end

	t27: BOOLEAN -- paths, shortest_path, shortest_path_via_dijkstra - Vertex
		local
			v_g: COMPARABLE_GRAPH [VERTEX[INTEGER]]
			seq: SEQ[VERTEX[INTEGER]]
			v1, v2, v3, v4, v5, v6, v7: VERTEX[INTEGER]
		do
			comment("t27: paths, shortest_path - Vertex")
			v1 := 1
			v2 := 2
			v3 := 3
			v4 := 4
			v5 := 5
			v6 := 6
			v7 := 7
			v_g := << [v1, v3], [v2, v1], [v3, v4], [v4, v4], [v4, v5], [v7, v6], [v7, v2], [v2, v5] >>
			Result := v_g.edge_count ~ 8 and v_g.vertex_count ~ 7
			check Result end

			assert_equal ("paths from v1 -> v5", "{ < v:1, v:3, v:4, v:5 > }", v_g.paths (v1, v5).out)
			check attached v_g.shortest_path(v1, v5) as sp then
				Result := sp.out ~ "< v:1, v:3, v:4, v:5 >"
			end
			check Result end

			assert_equal ("paths from v2 -> v5", "{ < v:2, v:5 >, < v:2, v:1, v:3, v:4, v:5 > }", v_g.paths (v2, v5).out)

			v_g.edge_extend ([v2, v3])
			assert_equal ("paths from v2 -> v5", "{ < v:2, v:5 >, < v:2, v:3, v:4, v:5 >, < v:2, v:1, v:3, v:4, v:5 > }", v_g.paths (v2, v5).out)

			assert_equal ("paths from v7 -> v5", "{ < v:7, v:2, v:5 >, < v:7, v:2, v:3, v:4, v:5 >, < v:7, v:2, v:1, v:3, v:4, v:5 > }", v_g.paths (v7, v5).out)

			Result := v_g.paths (v6, v7).is_empty
			check Result end

			v_g.edge_extend ([v4, v2])
			assert_equal ("paths from v4 -> v4",  "{ < v:4 > }", v_g.paths (v4, v4).out)
			assert_equal ("paths from v4 -> v5", "{ < v:4, v:5 >, < v:4, v:2, v:5 > }", v_g.paths (v4, v5).out) -- avoided cycle

			v_g.edge_extend ([v6, v5])
			check attached v_g.shortest_path (v7, v5) as sp then
				Result := sp.out ~ "< v:7, v:2, v:5 >"
			end
			check Result end

			v_g := << [v1, v3], [v2, v1], [v3, v4], [v4, v5], [v7, v6], [v7, v2], [v2, v5] >>
			check attached v_g.shortest_path(v2, v5) as sp then
				assert_equal("sp_bfs v2 -> v5", "< v:2, v:5 >", sp.out)
			end
			v_g.edge_remove ([v2, v5])
			check attached v_g.shortest_path(v2, v5) as sp then
				assert_equal("sp_bfs v2 -> v5", "< v:2, v:1, v:3, v:4, v:5 >", sp.out)
			end

			v_g.edge_extend ([v2, v5])
			v_g.edge_extend ([v6, v5])

			assert_equal("v_g adjacent(7)", "< v:2, v:6 >", v_g.adjacent (v7).out)

			check attached v_g.shortest_path(v7, v5) as sp then
				assert_equal("sp_bfs v7 -> v5", "< v:7, v:2, v:5 >", sp.out)
			end
			--

			v_g.edge_remove ([v2, v5])
			check attached v_g.shortest_path(v7, v5) as sp then
				assert_equal("sp_bfs v7 -> v5", "< v:7, v:6, v:5 >", sp.out)
			end

			create v_g.make_empty
			check not attached v_g.shortest_path (v1, v2) end -- Test against empty graph
		end

	t28: BOOLEAN -- SP Via Dijkstra - INTEGER
		local
			i_g: COMPARABLE_GRAPH[INTEGER]
		do
			comment ("t28: shortest_path_via_dijkstra - Integer")
			--shortest_path_via_dijkstra
			i_g := << [1, 3], [2, 1], [3, 4], [4, 4], [4, 5], [7, 6], [7, 2], [2, 5], [6, 5] >> -- New i_g with self-loop
			Result := i_g.edge_count ~ 9 and i_g.vertex_count ~ 7
			check Result end

			assert_equal ("paths from 1 -> 5", "{ < 1, 3, 4, 5 > }", i_g.paths (1, 5).out)
			check attached i_g.shortest_path_via_dijkstra(1, 5) as sp then
				Result := sp.out ~ "< 1, 3, 4, 5 >"
			end
			check Result end
			check attached i_g.shortest_path(1, 5) as sp then
				Result := sp.out ~ "< 1, 3, 4, 5 >"
			end
			check Result end

			assert_equal ("paths from 7 -> 5", "{ < 7, 2, 5 >, < 7, 6, 5 >, < 7, 2, 1, 3, 4, 5 > }", i_g.paths (7, 5).out)
			check attached i_g.shortest_path(7, 5) as sp then
				assert_equal("sp_bfs 7 -> 5", "< 7, 2, 5 >", sp.out)
			end
			check attached i_g.shortest_path_via_dijkstra(7, 5) as sp then
				assert_equal("sp_bfs_d 7 -> 5", "< 7, 2, 5 >", sp.out)
			end

			create i_g.make_empty
			check not attached i_g.shortest_path_via_dijkstra (1, 2) end -- Test against empty graph
		end

	t29: BOOLEAN -- SP Via Dijkstra - STRING
		local
			s_g: COMPARABLE_GRAPH[STRING]
		do
			comment ("t29: shortest_path_via_dijkstra - String")
			--shortest_path_via_dijkstra
			s_g := << ["a", "c"], ["b", "a"], ["c", "d"], ["d", "d"], ["d", "e"], ["g", "f"], ["g", "b"], ["b", "e"], ["f", "e"] >> -- New s_g with self-loop
			Result := s_g.edge_count ~ 9 and s_g.vertex_count ~ 7
			check Result end

			assert_equal ("paths from a -> e", "{ < a, c, d, e > }", s_g.paths ("a", "e").out)
			check attached s_g.shortest_path_via_dijkstra("a", "e") as sp then
				Result := sp.out ~ "< a, c, d, e >"
			end
			check Result end
			check attached s_g.shortest_path("a", "e") as sp then
				Result := sp.out ~ "< a, c, d, e >"
			end
			check Result end

			assert_equal ("paths from g -> e", "{ < g, b, e >, < g, f, e >, < g, b, a, c, d, e > }", s_g.paths ("g", "e").out)
			check attached s_g.shortest_path("g", "e") as sp then
				assert_equal("sp_bfs g -> e", "< g, b, e >", sp.out)
			end
			check attached s_g.shortest_path_via_dijkstra("g", "e") as sp then
				assert_equal("sp_bfs_d g -> e", "< g, b, e >", sp.out)
			end

			create s_g.make_empty
			check not attached s_g.shortest_path_via_dijkstra ("a", "b") end -- Test against empty graph
		end

	t30: BOOLEAN -- SP Via Dijkstra - VERTEX
		local
			v_g: COMPARABLE_GRAPH [VERTEX[INTEGER]]
			v1, v2, v3, v4, v5, v6, v7: VERTEX[INTEGER]
		do
			comment ("t30: shortest_path_via_dijkstra - Vertex")
			v1 := 1
			v2 := 2
			v3 := 3
			v4 := 4
			v5 := 5
			v6 := 6
			v7 := 7
			--shortest_path_via_dijkstra
			v_g := << [v1, v3], [v2, v1], [v3, v4], [v4, v4], [v4, v5], [v7, v6], [v7, v2], [v2, v5], [v6, v5] >> -- New v_g with self-loop

			Result := v_g.edge_count ~ 9 and v_g.vertex_count ~ 7
			check Result end

			assert_equal ("paths from v1 -> v5", "{ < v:1, v:3, v:4, v:5 > }", v_g.paths (v1, v5).out)
			check attached v_g.shortest_path_via_dijkstra(v1, v5) as sp then
				Result := sp.out ~ "< v:1, v:3, v:4, v:5 >"
			end
			check Result end
			check attached v_g.shortest_path(v1, v5) as sp then
				Result := sp.out ~ "< v:1, v:3, v:4, v:5 >"
			end
			check Result end

			assert_equal ("paths from v7 -> v5", "{ < v:7, v:2, v:5 >, < v:7, v:6, v:5 >, < v:7, v:2, v:1, v:3, v:4, v:5 > }", v_g.paths (v7, v5).out)
			check attached v_g.shortest_path(v7, v5) as sp then
				assert_equal("sp_bfs v7 -> v5", "< v:7, v:2, v:5 >", sp.out)
			end
			check attached v_g.shortest_path_via_dijkstra(v7, v5) as sp then
				assert_equal("sp_bfs_d v7 -> v5", "< v:7, v:2, v:5 >", sp.out)
			end

			create v_g.make_empty
			check not attached v_g.shortest_path_via_dijkstra (v1, v2) end -- Test against empty graph
		end

	t31: BOOLEAN -- is_valid_path - INTEGER
		local
			i_g: COMPARABLE_GRAPH[INTEGER]
			seq: SEQ[INTEGER]
		do
			comment ("t31: is_valid_path - Integer")
			i_g := << [1, 2], [2, 3], [4, 2], [4, 1], [2, 2] >>
			Result := i_g.edge_count ~ 5 and i_g.vertex_count ~ 4
			check Result end

			seq := << 2, 3, 4, 1 >>
			Result := not i_g.is_valid_path (seq)
			check Result end

			i_g.edge_extend ([3, 4])
			Result := i_g.is_valid_path (seq)
			check Result end

			i_g.vertex_extend (5)
			i_g.edge_extend ([2, 5])
			i_g.edge_extend ([5, 4])
			seq := << 2, 5, 4, 1 >>
			Result := i_g.is_valid_path (seq)
			check Result end

			create i_g.make_empty
			seq := << 1 >>
			Result := not i_g.is_valid_path (seq)
		end

	t32: BOOLEAN -- is_valid_path - String
		local
			s_g: COMPARABLE_GRAPH[STRING]
			seq: SEQ[STRING]
		do
			comment ("t32: is_valid_path - String")
			s_g := << ["a", "b"], ["b", "c"], ["d", "b"], ["d", "a"], ["b", "b"] >>
			Result := s_g.edge_count ~ 5 and s_g.vertex_count ~ 4
			check Result end

			seq := << "b", "c", "d", "a" >>
			Result := not s_g.is_valid_path (seq)
			check Result end

			s_g.edge_extend (["c", "d"])
			Result := s_g.is_valid_path (seq)
			check Result end

			s_g.vertex_extend ("e")
			s_g.edge_extend (["b", "e"])
			s_g.edge_extend (["e", "d"])
			seq := << "b", "e", "d", "a" >>
			Result := s_g.is_valid_path (seq)
			check Result end

			create s_g.make_empty
			seq := << "a" >>
			Result := not s_g.is_valid_path (seq)
		end

	t33: BOOLEAN -- is_valid_path - Vertex
		local
			v_g: COMPARABLE_GRAPH[VERTEX[INTEGER]]
			seq: SEQ[VERTEX[INTEGER]]
			v1, v2, v3, v4, v5: VERTEX[INTEGER]
		do
			comment ("t33: is_valid_path - Vertex")
			v1 := 1
			v2 := 2
			v3 := 3
			v4 := 4
			v5 := 5

			v_g := << [v1, v2], [v2, v3], [v4, v2], [v4, v1], [v2, v2] >>
			Result := v_g.edge_count ~ 5 and v_g.vertex_count ~ 4
			check Result end

			seq := << v2, v3, v4, v1 >>
			Result := not v_g.is_valid_path (seq)
			check Result end

			v_g.edge_extend ([v3, v4])
			Result := v_g.is_valid_path (seq)
			check Result end

			v_g.vertex_extend (v5)
			v_g.edge_extend ([v2, v5])
			v_g.edge_extend ([v5, v4])
			seq := << v2, v5, v4, v1 >>
			Result := v_g.is_valid_path (seq)
			check Result end

			create v_g.make_empty
			seq := << v1 >>
			Result := not v_g.is_valid_path (seq)
		end

	t34: BOOLEAN -- is_subgraph - Integer
		local
			i_g1, i_g2, i_g3: COMPARABLE_GRAPH[INTEGER]
			seq: SEQ[INTEGER]
		do
			comment ("t34: is_subgraph - Integer")
			i_g1 := << [1, 2], [1, 4], [2, 3], [3, 2], [3, 4], [4, 5] >>
			i_g2 := i_g1.vertex_removed (1)
			i_g3 := i_g2.vertex_removed (2)

			Result := i_g2.is_subgraph (i_g1)
			check Result end

			Result := i_g3.is_subgraph (i_g1)
			check Result end

			Result := i_g3.is_subgraph (i_g2)
			check Result end

			i_g3.vertex_extend (7)
			Result := not i_g3.is_subgraph (i_g2)
			check Result end

			i_g3.vertex_remove (7)
			i_g3.vertex_remove (3)
			i_g3.vertex_remove (4)
			Result := i_g3.is_subgraph (i_g1)
			check Result end
			Result := i_g3.is_subgraph (i_g2)
			check Result end
			i_g3.vertex_remove (5)
			Result := i_g3.is_subgraph (i_g1)
			check Result end

			create i_g1.make_empty
			create i_g2.make_empty
			Result := i_g1.is_subgraph (i_g2) -- Test Empty graphs
			check Result end
		end

	t35: BOOLEAN -- is_subgraph - String
		local
			s_g1, s_g2, s_g3: COMPARABLE_GRAPH[STRING]
			seq: SEQ[STRING]
		do
			comment ("t35: is_subgraph - String")
			s_g1 := << ["a", "b"], ["a", "d"], ["b", "c"], ["c", "b"], ["c", "d"], ["d", "e"] >>
			s_g2 := s_g1.vertex_removed ("a")
			s_g3 := s_g2.vertex_removed ("b")

			Result := s_g2.is_subgraph (s_g1)
			check Result end

			Result := s_g3.is_subgraph (s_g1)
			check Result end

			Result := s_g3.is_subgraph (s_g2)
			check Result end

			s_g3.vertex_extend ("g")
			Result := not s_g3.is_subgraph (s_g2)
			check Result end

			s_g3.vertex_remove ("g")
			s_g3.vertex_remove ("c")
			s_g3.vertex_remove ("d")
			Result := s_g3.is_subgraph (s_g1)
			check Result end
			Result := s_g3.is_subgraph (s_g2)
			check Result end
			s_g3.vertex_remove ("e")
			Result := s_g3.is_subgraph (s_g1)
			check Result end

			create s_g1.make_empty
			create s_g2.make_empty
			Result := s_g1.is_subgraph (s_g2) -- Test Empty graphs
			check Result end
		end

	t36: BOOLEAN -- is_subgraph - Vertex
		local
			v_g1, v_g2, v_g3: COMPARABLE_GRAPH[VERTEX[INTEGER]]
			seq: SEQ[VERTEX[INTEGER]]
			v1, v2, v3, v4, v5, v6, v7: VERTEX[INTEGER]
		do
			comment ("t36: is_subgraph - Vertex")
			v1 := 1
			v2 := 2
			v3 := 3
			v4 := 4
			v5 := 5
			v6 := 6
			v7 := 7

			v_g1 := << [v1, v2], [v1, v4], [v2, v3], [v3, v2], [v3, v4], [v4, v5] >>
			v_g2 := v_g1.vertex_removed (v1)
			v_g3 := v_g2.vertex_removed (v2)

			Result := v_g2.is_subgraph (v_g1)
			check Result end

			Result := v_g3.is_subgraph (v_g1)
			check Result end

			Result := v_g3.is_subgraph (v_g2)
			check Result end

			v_g3.vertex_extend (v7)
			Result := not v_g3.is_subgraph (v_g2)
			check Result end

			v_g3.vertex_remove (v7)
			v_g3.vertex_remove (v3)
			v_g3.vertex_remove (v4)
			Result := v_g3.is_subgraph (v_g1)
			check Result end
			Result := v_g3.is_subgraph (v_g2)
			check Result end
			v_g3.vertex_remove (v5)
			Result := v_g3.is_subgraph (v_g1)
			check Result end

			create v_g1.make_empty
			create v_g2.make_empty
			Result := v_g1.is_subgraph (v_g2) -- Test Empty graphs
			check Result end
		end

	t37: BOOLEAN -- cycle - Integer
		local
			i_g: COMPARABLE_GRAPH[INTEGER]
			seq: SEQ[INTEGER]
		do
			comment ("t37: cycle - Integer")
			i_g := << [1, -1], [-1, 2], [-1, 4], [2, 4], [4, 5], [5, 7], [7, -1], [5, 1] >>

			seq := i_g.cycle (1)
			check attached seq as s then
				assert_equal ("i_g.cycle(1)", "< 1, -1, 2, 4, 5, 1 >", s.out)
			end


			seq := i_g.cycle (-1)

			check attached seq as s then
				assert_equal("i_g.cycle(-1)", "< -1, 2, 4, 5, 1, -1 >", s.out)
				Result := seq.out ~ "< -1, 2, 4, 5, 1, -1 >"
			end
			check Result end

			i_g.edge_remove ([5, 1])
			seq := i_g.cycle (-1)
			check attached seq as s then
				assert_equal("i_g.cycle(-1)", "< -1, 2, 4, 5, 7, -1 >", s.out)
				Result := seq.out ~ "< -1, 2, 4, 5, 7, -1 >"
			end
			check Result end


			i_g.vertex_remove (2)

			seq := i_g.cycle (-1)
			check attached seq as s then
				assert_equal("i_g.cycle(-1)", "< -1, 4, 5, 7, -1 >", s.out)
				Result := seq.out ~ "< -1, 4, 5, 7, -1 >"
			end
			check Result end


			i_g.edge_remove ([4, 5])
			seq := i_g.cycle (-1)
			check not attached seq end

			i_g.edge_extend ([5, 4])
			seq := i_g.cycle (-1)
			check not attached seq end

			i_g.edge_extend ([5, 5])
			seq := i_g.cycle (5)
			check attached seq as s then
				assert_equal ("i_g.cycle(5)", "< 5, 5 >", s.out)
				Result := seq.out ~ "< 5, 5 >"
			end
			check Result end

			create i_g.make_empty
			create seq.make_empty
			seq := i_g.cycle (1)
			check not attached seq end
		end

	t38: BOOLEAN -- cycle STRING
		local
			s_g: COMPARABLE_GRAPH[STRING]
			seq: SEQ[STRING]
		do
			comment ("t38: cycle - String")
			s_g := << ["a", "Z"], ["Z", "b"], ["Z", "d"], ["b", "d"], ["d", "e"], ["e", "g"], ["g", "Z"], ["e", "a"] >>

			seq := s_g.cycle ("a")
			check attached seq as s then
				assert_equal ("s_g.cycle(a)", "< a, Z, b, d, e, a >", s.out)
			end


			seq := s_g.cycle ("Z")

			check attached seq as s then
				assert_equal("s_g.cycle(Z)", "< Z, b, d, e, a, Z >", s.out)
				Result := seq.out ~ "< Z, b, d, e, a, Z >"
			end
			check Result end

			s_g.edge_remove (["e", "a"])
			seq := s_g.cycle ("Z")
			check attached seq as s then
				assert_equal("s_g.cycle(Z)", "< Z, b, d, e, g, Z >", s.out)
				Result := seq.out ~ "< Z, b, d, e, g, Z >"
			end
			check Result end


			s_g.vertex_remove ("b")

			seq := s_g.cycle ("Z")
			check attached seq as s then
				assert_equal("s_g.cycle(Z)", "< Z, d, e, g, Z >", s.out)
				Result := seq.out ~ "< Z, d, e, g, Z >"
			end
			check Result end


			s_g.edge_remove (["d", "e"])
			seq := s_g.cycle ("Z")
			check not attached seq end

			s_g.edge_extend (["e", "d"])
			seq := s_g.cycle ("Z")
			check not attached seq end

			s_g.edge_extend (["e", "e"])
			seq := s_g.cycle ("e")
			check attached seq as s then
				assert_equal ("s_g.cycle(e)", "< e, e >", s.out)
				Result := seq.out ~ "< e, e >"
			end
			check Result end

			create s_g.make_empty
			create seq.make_empty
			seq := s_g.cycle ("e")
			check not attached seq end
		end

	t39: BOOLEAN -- cycle VERTEX
		local
			v_g: COMPARABLE_GRAPH[VERTEX[INTEGER]]
			seq: SEQ[VERTEX[INTEGER]]
			vn1, v1, v2, v3, v4, v5, v6, v7: VERTEX[INTEGER]
		do
			comment ("t39: cycle - Vertex")
			vn1 := -1
			v1 := 1
			v2 := 2
			v3 := 3
			v4 := 4
			v5 := 5
			v6 := 6
			v7 := 7
			v_g := << [v1, vn1], [vn1, v2], [vn1, v4], [v2, v4], [v4, v5], [v5, v7], [v7, vn1], [v5, v1] >>

			seq := v_g.cycle (v1)
			check attached seq as s then
				assert_equal ("v_g.cycle(v1)", "< v:1, v:-1, v:2, v:4, v:5, v:1 >", s.out)
			end


			seq := v_g.cycle (vn1)

			check attached seq as s then
				assert_equal("v_g.cycle(vn1)", "< v:-1, v:2, v:4, v:5, v:1, v:-1 >", s.out)
				Result := seq.out ~ "< v:-1, v:2, v:4, v:5, v:1, v:-1 >"
			end
			check Result end

			v_g.edge_remove ([v5, v1])
			seq := v_g.cycle (vn1)
			check attached seq as s then
				assert_equal("v_g.cycle(vn1)", "< v:-1, v:2, v:4, v:5, v:7, v:-1 >", s.out)
				Result := seq.out ~ "< v:-1, v:2, v:4, v:5, v:7, v:-1 >"
			end
			check Result end


			v_g.vertex_remove (v2)

			seq := v_g.cycle (vn1)
			check attached seq as s then
				assert_equal("v_g.cycle(vn1)", "< v:-1, v:4, v:5, v:7, v:-1 >", s.out)
				Result := seq.out ~ "< v:-1, v:4, v:5, v:7, v:-1 >"
			end
			check Result end


			v_g.edge_remove ([v4, v5])
			seq := v_g.cycle (vn1)
			check not attached seq end

			v_g.edge_extend ([v5, v4])
			seq := v_g.cycle (vn1)
			check not attached seq end

			v_g.edge_extend ([v5, v5])
			seq := v_g.cycle (v5)
			check attached seq as s then
				assert_equal ("v_g.cycle(v5)", "< v:5, v:5 >", s.out)
				Result := seq.out ~ "< v:5, v:5 >"
			end
			check Result end

			create v_g.make_empty
			create seq.make_empty
			seq := v_g.cycle (v1)
			check not attached seq end
		end

	t40: BOOLEAN -- is_equal INTEGER
		local
			i_g1, i_g2: COMPARABLE_GRAPH[INTEGER]
		do
			comment ("t40: is_equal - Integer")
			i_g1 := << [1, 2], [1, 3], [2, 2], [2, 3], [3, 1] >>
			i_g2 := << [1, 2], [1, 3], [2, 2], [2, 3], [3, 1] >>
			Result := i_g1.is_equal (i_g2)
			check Result end

			i_g2 := << [2, 2], [1, 3], [2, 3], [3, 1], [1, 2] >>
			Result := i_g1.is_equal (i_g2)
			check Result end

			i_g2.vertex_extend (5)
			Result := not i_g1.is_equal (i_g2)
			check Result end

			create i_g1.make_empty
			create i_g2.make_empty
			Result := i_g1.is_equal (i_g2)
			check Result end

			i_g1.vertex_extend (1)
			i_g1.vertex_extend (2)
			i_g2 := << [1, 2] >>
			Result := not i_g1.is_equal (i_g2)
			check Result end
			i_g2.edge_remove ([1, 2])
			Result := i_g1.is_equal (i_g2)
		end

	t41: BOOLEAN -- is_equal STRING
		local
			s_g1, s_g2: COMPARABLE_GRAPH[STRING]
		do
			comment ("t41: is_equal - String")
			s_g1 := << ["a", "b"], ["a", "c"], ["b", "b"], ["b", "c"], ["c", "a"] >>
			s_g2 := << ["a", "b"], ["a", "c"], ["b", "b"], ["b", "c"], ["c", "a"] >>
			Result := s_g1.is_equal (s_g2)
			check Result end

			s_g2 := << ["b", "b"], ["a", "c"], ["b", "c"], ["c", "a"], ["a", "b"] >>
			Result := s_g1.is_equal (s_g2)
			check Result end

			s_g2.vertex_extend ("e")
			Result := not s_g1.is_equal (s_g2)
			check Result end

			create s_g1.make_empty
			create s_g2.make_empty
			Result := s_g1.is_equal (s_g2)
			check Result end

			s_g1.vertex_extend ("a")
			s_g1.vertex_extend ("b")
			s_g2 := << ["a", "b"] >>
			Result := not s_g1.is_equal (s_g2)
			check Result end
			s_g2.edge_remove (["a", "b"])
			Result := s_g1.is_equal (s_g2)
		end

	t42: BOOLEAN -- is_equal VERTEX
		local
			v_g1, v_g2: COMPARABLE_GRAPH[VERTEX[INTEGER]]
			v1, v2, v3, v4, v5: VERTEX [INTEGER]
		do
			comment ("t42: is_equal - Vertex")
			v1 := 1
			v2 := 2
			v3 := 3
			v4 := 4
			v5 := 5
			v_g1 := << [v1, v2], [v1, v3], [v2, v2], [v2, v3], [v3, v1] >>
			v_g2 := << [v1, v2], [v1, v3], [v2, v2], [v2, v3], [v3, v1] >>
			Result := v_g1.is_equal (v_g2)
			check Result end

			v_g2 := << [v2, v2], [v1, v3], [v2, v3], [v3, v1], [v1, v2] >>
			Result := v_g1.is_equal (v_g2)
			check Result end

			v_g2.vertex_extend (v5)
			Result := not v_g1.is_equal (v_g2)
			check Result end

			create v_g1.make_empty
			create v_g2.make_empty
			Result := v_g1.is_equal (v_g2)
			check Result end

			v_g1.vertex_extend (v1)
			v_g1.vertex_extend (v2)
			v_g2 := << [v1, v2] >>
			Result := not v_g1.is_equal (v_g2)
			check Result end
			v_g2.edge_remove ([v1, v2])
			Result := v_g1.is_equal (v_g2)
		end

	t43: BOOLEAN -- is_acyclic - INTEGER
		local
			i_g: COMPARABLE_GRAPH[INTEGER]
		do
			comment ("t31: is_acyclic - Integer")
			i_g := << [1, 2], [2, 3], [3, 4], [4, 2], [4, 5], [5, 5], [1, 5] >>

			Result := not i_g.is_acyclic
			check Result end


			i_g.edge_remove ([3, 4])
			Result := not i_g.is_acyclic
			check Result end

			i_g.edge_remove ([5, 5])
			Result := i_g.is_acyclic
			check Result end

			create i_g.make_empty
			Result := i_g.is_acyclic
			check Result end
		end

	t44: BOOLEAN -- is_acyclic - STRING
		local
			s_g: COMPARABLE_GRAPH[STRING]
		do
			comment ("t44: is_acyclic - String")
			s_g := << ["a", "b"], ["b", "c"], ["c", "d"], ["d", "b"], ["d", "e"], ["e", "e"], ["a", "e"] >>

			Result := not s_g.is_acyclic
			check Result end


			s_g.edge_remove (["c", "d"])
			Result := not s_g.is_acyclic
			check Result end

			s_g.edge_remove (["e", "e"])
			Result := s_g.is_acyclic
			check Result end

			create s_g.make_empty
			Result := s_g.is_acyclic
			check Result end
		end

	t45: BOOLEAN -- is_acyclic - VERTEX
		local
			v_g: COMPARABLE_GRAPH[VERTEX[INTEGER]]
			v1, v2, v3, v4, v5: VERTEX[INTEGER]
		do
			comment ("t45: is_acyclic - Vertex")
			v1 := 1
			v2 := 2
			v3 := 3
			v4 := 4
			v5 := 5
			v_g := << [v1, v2], [v2, v3], [v3, v4], [v4, v2], [v4, v5], [v5, v5], [v1, v5] >>

			Result := not v_g.is_acyclic
			check Result end


			v_g.edge_remove ([v3, v4])
			Result := not v_g.is_acyclic
			check Result end

			v_g.edge_remove ([v5, v5])
			Result := v_g.is_acyclic
			check Result end

			create v_g.make_empty
			Result := v_g.is_acyclic
			check Result end
		end



feature -- Violation Cases

	t100 -- Illegal Edge Extension
		local
			i_g: COMPARABLE_GRAPH [INTEGER]
			s_g: COMPARABLE_GRAPH [STRING]
			v_g: COMPARABLE_GRAPH [VERTEX[INTEGER]]
			v1, v2, v3, v4, v5, v6: VERTEX[INTEGER]
			r: BOOLEAN
		do
			comment("t100: Violation Edge Extension with new V - Integer, String, Vertex Cases")
			-- Create from Tuple Array

			i_g := << [1, 2], [4, 3], [5, 5]>>
			assert_equal ("correct i_g vertices", "{ 1, 2, 4, 3, 5 }",i_g.vertices.out)
			assert_equal ("correct i_g edges" , "{ 1 -> 2, 4 -> 3, 5 -> 5 }", i_g.edges.out)
			i_g.edge_extend ([1, 2]) -- Existing edge
			assert_equal ("correct i_g edges" , "{ 1 -> 2, 4 -> 3, 5 -> 5 }", i_g.edges.out)
			r := i_g.edge_count ~ 3
			check r end
			i_g.edge_extend ([2, 5]) -- Existing vertices, new edge
			assert_equal ("correct i_g edges" , "{ 1 -> 2, 4 -> 3, 5 -> 5, 2 -> 5 }", i_g.edges.out)
			r := i_g.edge_count ~ 4
			check r end
			i_g.edge_extend ([6, 1]) -- One new vertex, new edge
		end

	t101
		local
			i_g: COMPARABLE_GRAPH [INTEGER]
			seq: SEQ[INTEGER]
			r: BOOLEAN
		do
			comment("t101: Self-Loop Graph - Topological Sort Violation")
			-- Create from Tuple Array

			i_g := << [1, 2], [4, 3], [5, 5]>>
			assert_equal ("correct i_g vertices", "{ 1, 2, 4, 3, 5 }",i_g.vertices.out)
			i_g.edge_extend ([2, 5]) -- Existing vertices, new edge
			assert_equal ("correct i_g edges" , "{ 1 -> 2, 4 -> 3, 5 -> 5, 2 -> 5 }", i_g.edges.out)
			r := i_g.edge_count ~ 4
			check r end

			seq := i_g.topologically_sorted
		end

	t102
		local
			i_g: COMPARABLE_GRAPH [INTEGER]
			seq: SEQ[INTEGER]
			r: BOOLEAN
		do
			comment("t102: Cyclic Graph - Topological Sort Violation")
			-- Create from Tuple Array

			i_g := << [1, 2], [4, 3], [2, 5], [5, 1] >>
			assert_equal ("correct i_g vertices", "{ 1, 2, 4, 3, 5 }",i_g.vertices.out)
			assert_equal ("correct i_g edges" , "{ 1 -> 2, 4 -> 3, 2 -> 5, 5 -> 1 }", i_g.edges.out)
			r := i_g.edge_count ~ 4
			check r end

			seq := i_g.topologically_sorted
		end

	t103
		local
			i_g: COMPARABLE_GRAPH[INTEGER]
			seq: SEQ[INTEGER]
			r: BOOLEAN
		do
			comment ("t103: is_valid_path - Violation occurs with empty sequence")
			create i_g.make_empty
			create seq.make_empty
			r := i_g.is_valid_path (seq)
		end



--			add_violation_case_with_tag ("has_vertex", agent t106) -- reachable
--			add_violation_case (agent t107) -- is_reachable
--			add_violation_case_with_tag ("at_least_one_vertex", agent t108) -- is_valid_path
	t104
		local
			i_g: COMPARABLE_GRAPH[INTEGER]
			r: BOOLEAN
		do
			comment ("t104: in_degree_count - has_vertex violation case")
			create i_g.make_empty
			r := i_g.in_degree_count (1) ~ 4
		end

	t105
		local
			i_g: COMPARABLE_GRAPH[INTEGER]
			seq: SEQ[INTEGER]
			r: BOOLEAN
		do
			comment ("t105: out_degree_count - has_vertex violation case")
			create i_g.make_empty
			create seq.make_empty
			r := i_g.out_degree_count (1) ~ 2
		end

	t106
		local
			i_g: COMPARABLE_GRAPH[INTEGER]
			seq: SEQ[INTEGER]
			r: BOOLEAN
		do
			comment ("t106: reachable - has_vertex violation case")
			i_g := << [1, 3], [3, 5] >>
			create seq.make_empty
			r := i_g.reachable (2) ~ seq
		end

	t107
		local
			i_g: COMPARABLE_GRAPH[INTEGER]
			seq: SEQ[INTEGER]
			r: BOOLEAN
		do
			comment ("t107: is_valid_path - Violation occurs with empty sequence")
			create i_g.make_empty
			create seq.make_empty
			r := i_g.is_valid_path (seq)
		end

	t108
		local
			i_g: COMPARABLE_GRAPH[INTEGER]
			seq: SEQ[INTEGER]
			r: BOOLEAN
		do
			comment ("t108: is_valid_path - Violation occurs with empty sequence")
			create i_g.make_empty
			create seq.make_empty
			r := i_g.is_valid_path (seq)
		end

end
