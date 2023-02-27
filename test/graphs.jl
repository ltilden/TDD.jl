using Test
@test connected_neighbors(graph, node) == vcat(node, graph[node])