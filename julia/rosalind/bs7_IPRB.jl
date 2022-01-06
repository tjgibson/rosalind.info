function prob_dom(k,m,n)
    total = k + m + n 
    pr = 
    (k/total)*((k-1)/(total-1)) +
    (k/total)*(m/(total-1)) +
    (k/total)*(n/(total-1)) +

    (m/total)*(k/(total-1)) +
    (m/total)*((m-1)/(total-1))*(3/4) +
    (m/total)*(n/(total-1))*(2/4) +

    (n/total)*((k)/(total-1)) +
    (n/total)*(m/(total-1))*(2/4)

    return round(pr, digits = 5)
end

# test data
prob_dom(2,2,2)

# problem data
prob_dom(24, 18, 28)