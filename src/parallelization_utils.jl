import Base.Iterators: partition

"""
chunkPrepN takes two integers N and n_chunks
and returns an array of length n_chunks containing
a partition of N into n_chunks many integers minimizing 
the variance.
"""
function chunkPrepN(N::Int64, n_chunks::Int64)
    chunks::Array{Int64} = [div(N, n_chunks) for _ in 1:n_chunks] .+ 
    [(i <= mod(N, n_chunks)) for i in 1:n_chunks]
    return(chunks)
end

"""
chunkPrep takes an array chunkable and an integer n_chunks
and splits chunkable into n_chunks many arrays of similar size
and returns an array containing these subarrays.
"""
function chunkPrep(chunkable::Array, n_chunks::Int64)
    chunk_size = cld(length(chunkable),n_chunks)
    chunks = collect(partition(chunkable, chunk_size))
    return(chunks)
end