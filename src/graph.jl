function connected_neighbors(graph, node)
    direct_connect =  vcat(node, graph[node])
    return direct_connect
end

function reachable_nodes(graph, node)
    direct_connect = connected_neighbors(graph, node)
    indirect_connect = [connected_neighbors(graph, i) for i in direct_connect]
    reachable = unique(collect(Iterators.flatten(indirect_connect)))
    return reachable
end
