function gc(dna_seq)
    gc = ( count(i->(i=='G'), dna_seq) + count(i->(i=='C'), dna_seq) ) / length(dna_seq) * 100
    return gc
end

dna_seq = "AGCTATAG"
gc(dna_seq)