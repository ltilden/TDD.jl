using Test
@test connected_neighbors(graph, node) == vcat(node, graph[node])

for i in connected_neighbors(graph, node)
    @test i in reachable_nodes(graph, node)
    for ii in connected_neighbors(graph, i)
        @test ii in reachable_nodes(graph, node)
    end
end

for i in all_connected_components(graph, node)
    lists = [sort(reachable_nodes(graph, ii)) for ii in i]
    for a = 2:length(lists)
        @test all(lists[1] .== lists[a])
    end
end