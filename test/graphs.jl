using Test
@test connected_neighbors(graph, node) == vcat(node, graph[node])
@test connected_neighbors(graph, node) is in reachable_nodes(graph, node)
@test for i in connected_neighbors(graph, node)
    connected_neighbors(graph, connected_neighbors(graph, node)[i]) is in reachable_nodes(graph, node)
end