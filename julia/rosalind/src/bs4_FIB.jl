function rabbits(n,k;Fnm2=1,Fnm1=1)
    Fᵢ = 1
    for i in 3:n
        Fᵢ = Fnm1 + (Fnm2 * k)
        Fnm2 = Fnm1 
        Fnm1 = Fᵢ
    end
    return Fᵢ
end

rabbits(5,3)