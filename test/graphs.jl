using Test
@test connected_neighbors(graph, node) == vcat(node, graph[node])
for i in connected_neighbors(graph, node)
    @test i in reachable_nodes(graph, node)
    for ii in connected_neighbors(graph, i)
        @test ii in reachable_nodes(graph, node)
    end
end
