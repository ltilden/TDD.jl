using Test
@test connected_neighbors(graph, node) == [node, graph(node)]