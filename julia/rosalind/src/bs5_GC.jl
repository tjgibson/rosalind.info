# function to compute GC content from a DNA sequence
function compute_gc(dna_seq)
    gc = ( count(i->(i=='G'), dna_seq) + count(i->(i=='C'), dna_seq) ) / length(dna_seq) * 100
    return round(gc, digits = 6)
end

# test function
dna_seq = "AGCTATAG"
compute_gc(dna_seq)

# define fasta file
fasta_file = "../data/bs3_gc.fasta"


f = open(fasta_file, "r")
fasta_seqs = Dict{String,String}()

for line in readlines(f)
    if line[1] == '>'
        global seq_id = line[2:end]
        fasta_seqs[seq_id] = ""
    else
        fasta_seqs[seq_id] *= line
    end
end
close(f)

gc = 0
for (k,v) in fasta_seqs
    v_gc = compute_gc(v)
    println("$k: $v_gc")
    if v_gc > gc
        global highest = (k, v_gc)
        global gc = v_gc
    end
end

println(highest[1])
println(highest[2])