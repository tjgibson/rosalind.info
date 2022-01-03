function transcribe_dna(dna_seq; strand="coding")
    if strand == "coding"
        rna_seq = replace(dna_seq, 'T' => 'U')
    end

    if strand == "template"
        rna_seq = replace(dna_seq, 'G' => 'C','C' => 'G','T' => 'A','A' => 'U')
    end
    return rna_seq
end

test_seq = "GATGGAACTTGACTACGTAAATT"
transcribe_dna(test_seq)