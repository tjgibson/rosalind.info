function rev_comp(dna_seq)
    comps = Dict("T" => "A", "A" => "T", "G" => "C", "C" => "G")
    rev_comp = replace(dna_seq, r"A|C|G|T" => s -> comps[s]) |> reverse
    return rev_comp
end

test_dna = "AAAACCCGGT"

rev_comp(test_dna)

