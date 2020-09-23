note
	description: "Test GRPAH commands"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_GRAPH
inherit
	ES_TEST
create
	make

feature {NONE} -- Initialization

	make
			-- initialize tests
		do
			add_boolean_case (agent t1)
		end

feature -- tests
	t1: BOOLEAN
		local
			a: ARRAY [TUPLE[STRING,STRING]]
			g1, g2, g3: GRAPH[STRING]
		do
			comment ("t1: check extend and remove vertices and edges")
			a := <<["1","2"],["1", "3"],["3","4"],["4","4"],["1","2"]>>
			-- note that [1,2] is repeated but will only be created once
			create g1.make_from_tuple_array (a)
			Result := g1.vertex_count = 4 and g1.edge_count = 4
			check Result end
			Result := g1.edges ~ <<["1","2"],["1", "3"],["3","4"],["4","4"]>>
			check Result end
			assert_equal ("test g.vertices", "{ 1, 2, 3, 4 }", g1.vertices.out)
			-- no change actions
			g2 := g1.deep_twin
			g1.vertex_extend ("1")  -- should not change g1
			assert_equal("a: graphs g1 and g2 value equal", g1, g2)
			g1.edge_extend (["1","2"]) -- should not change g1
			assert_equal("b: graphs g1 and g2 value equal", g1, g2)
			--extend vertices and edges
			g1.vertex_extend ("5")
			assert ("c: original has 4 nodes", g1 /~ g2, g1.out)
			g1.vertex_extend ("6")
			assert ("d: add 5 and 6", g1.vertex_count = 6, g1.vertices)
			Result := g1.vertex_count = 6 and g1.edge_count = 4
			check Result end
			g1.edge_extend (["4", "5"])
			g3 := (g1 + "5" + "6") |\/| ["4", "5"]
			Result := g1 ~ g3
			check Result end
			-- remove edge ["4", "5"] and vertices 5 and 6
			g1.edge_remove (["4", "5"])
			assert_equal ("e:remove edge", "{ 1, 2, 3, 4, 5, 6 }", g1.vertices.out)
			assert_equal ("f:remove edge", "{ 1 -> 2, 1 -> 3, 3 -> 4, 4 -> 4 }", g1.edges.out)
			g1.vertex_remove ("4")
			assert_equal ("g:remove edge", "{ 1, 2, 3, 5, 6 }", g1.vertices.out)
			assert_equal ("h:remove edge", "{ 1 -> 2, 1 -> 3 }", g1.edges.out)
			g1.vertex_remove ("6")
			assert_equal ("i:remove edge", "{ 1, 2, 3, 5 }", g1.vertices.out)
			assert_equal ("j:remove edge", "{ 1 -> 2, 1 -> 3 }", g1.edges.out)
			g1.vertex_remove ("5")
			assert_equal ("k:remove edge", "{ 1, 2, 3 }", g1.vertices.out)
			assert_equal ("l:remove edge", "{ 1 -> 2, 1 -> 3 }", g1.edges.out)
			Result := g1 /~ g2 and g2 /= g3 and g3 /~ g1
		end

end
