function count_nucleotides(dna_seq; nt = "ACGT")
    counts = Dict()
    for n in nt
        counts[n] = count(i->(i==n), dna_seq)
    end
    return counts['A'], counts['C'], counts['G'], counts['T']
end


test_dna = "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC"
@time count_nucleotides(test_dna)
