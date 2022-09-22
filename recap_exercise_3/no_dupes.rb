require 'byebug'

def no_dupes?(array)
    
    hash = Hash.new(0)

    array.each {|ele| hash[ele] += 1}

    arr = []

    hash.each {|k, v| arr << k if v == 1}

    arr

end

# Examples
p no_dupes?([1, 1, 2, 1, 3, 2, 4])         # => [3, 4]
p no_dupes?(['x', 'x', 'y', 'z', 'z'])     # => ['y']
p no_dupes?([true, true, true])            # => []