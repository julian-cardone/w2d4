def multiply(a, b)

    return 0 if a == 0 || b == 0
    
    if (b >= 0 && a >= 0) || (b >= 0 && a <= 0)
        sum = a + multiply(a, b - 1)
    else 
        sum = (-a) + multiply(a, b + 1)
    end

end

# Examples
p multiply(3, 5)        # => 15
p multiply(5, 3)        # => 15
p multiply(2, 4)        # => 8
p multiply(0, 10)       # => 0
p multiply(-3, -6)      # => 18
p multiply(3, -6)       # => -18
p multiply(-3, 6)       # => -18