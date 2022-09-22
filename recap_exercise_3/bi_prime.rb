def bi_prime?(num)

    factors = []

    (2...num).each do |i|
        if num % i == 0
            factors << [i, num/i]
        end
    end

    factors.any? {|pair| prime(pair[0]) && prime(pair[1])}

end

def prime(num)

    return false if num < 2
    
    (2...num).each {|i|return false if num % i == 0}

    true

end

# Examples
p bi_prime?(14)   # => true
p bi_prime?(22)   # => true
p bi_prime?(25)   # => true
p bi_prime?(94)   # => true
p bi_prime?(24)   # => false
p bi_prime?(64)   # => false