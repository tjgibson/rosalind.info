# read in codon table
fn = "../../data/codon_table.txt"


f = open(fn, "r")
codon_table = Dict{String,String}()

for line in readlines(f)
    fields = split(line, " ")
    codon = fields[1]
    residue = fields[2]
    codon_table[codon] = residue
end

function translate(x, codon_table) 
    # get length of DNA sequence in nucleotides
    nt = length(x)
    # check that DNA sequence length is a multiple of 3
    if mod(nt, 3) != 0
        error("x is not divisible by 3")
    else
        # initialize empty amino acid sequence
        protein_sequence = ""
        
        # iterate over DNA sequence 3 nucleotides at a time
        for i in 1:3:(nt - 2)
            # extract codon
            codon = x[i:i+2]
            AA = codon_table[codon]

            # append corresponding amino acid to protein sequence
            if AA != "Stop"
                protein_sequence *= AA
            end
        end
        return protein_sequence
    end
end


test_DNA_string = "AUGGCCAUGGCGCCCAGAACUGAGAUCAAUAGUACCCGUAUUAACGGGUGA"

translate(test_DNA_string, codon_table)

@time translate(test_DNA_string, codon_table)
