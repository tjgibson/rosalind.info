function hamming_distance(a,b)
    if length(a) != length(b)
        error("a and b must be the same length")
    end

    hd = 0
    for i in 1:length(a)
        if a[i] != b[i]
            hd += 1
        end
    end
    return hd
end

a = "GAGCCTACTAACGGGAT"
b = "CATCGTAATGACGGCCT"
hamming_distance(a,b)