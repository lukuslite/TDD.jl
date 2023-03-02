using Test

function Connected(graph::Vector{Vector{Int64}},node::Int64)
    connected_nodes = Vector{Int64}()
    push!(connected_nodes,node)
    for i in 1:length(graph[node])
        push!(connected_nodes,graph[node][i])
    end
    return connected_nodes
end

@test Connected([[2,3],[1],[1],[5],[4]],1) == [1,2,3]
@test Connected([[2,3],[1],[1],[5],[4]],3) == [3,1]
@test Connected([[2,3],[1],[1],[5],[4]],4) == [4,5]
@test Connected([[4,5,7],[3],[2,5],[6],[12]],1) == [1,4,5,7]
@test Connected([[4,5,7],[3],[2,5],[6],[12]],5) == [5,12]