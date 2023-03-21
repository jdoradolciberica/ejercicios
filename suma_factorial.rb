

def suma_factorial(n)
    if n < 2
        return 1
    else
        return suma_factorial(n-1) +  (n + 1) * n / 2 
    end
end

puts suma_factorial(4)