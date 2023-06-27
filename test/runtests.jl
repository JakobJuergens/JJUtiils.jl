using JJUtils
using Test

@testset "JJUtils.jl" begin
    # Write your tests here.

    # Test chunking utilities
    @test chunkPrepN(1,1) == [1]
    @test chunkPrepN(100, 4) == [25, 25, 25, 25]
    @test chunkPrepN(100, 3) == [34, 33, 33]
    @test chunkPrep(["a"], 1) == [["a"]]
    @test chunkPrep(["a","b","c","d"], 2) == [["a","b"], ["c","d"]]
    @test chunkPrep(["a","b","c","d","e"], 2) == [["a","b","c"], ["d","e"]]
end
