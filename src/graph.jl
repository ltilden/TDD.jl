function connected_neighbors(graph, node)
    direct_connect =  vcat(node, graph[node])
    return direct_connect
end