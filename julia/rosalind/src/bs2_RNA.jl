function transcribe_dna(dna_seq)
    rna_seq = replace(dna_seq, 'T' => 'U')
    return rna_seq
end

test_seq = "GATGGAACTTGACTACGTAAATT"
transcribe_dna(test_seq)