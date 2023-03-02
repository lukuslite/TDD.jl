using Test

@test Connected(graph = [[2,3],[1],[1],[5],[4]],node = 1) == [1,2,3]
@test Connected(graph = [[2,3],[1],[1],[5],[4]],node = 3) == [3,1]
@test Connected(graph = [[2,3],[1],[1],[5],[4]],node = 4) == [4,5]
@test Connected(graph = [[4,5,7],[3],[2,5],[6],[12]],node = 1) == [1,4,5,7]
@test Connected(graph = [[4,5,7],[3],[2,5],[6],[12]],node = 5) == [5,12]