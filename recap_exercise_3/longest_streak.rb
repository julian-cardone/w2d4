def longest_streak(string)

    arr = []
    arr2 = []

    (0...string.length).each do |i|
        if string[i] == string[i+1]
            arr << string[i]
        else
            arr << string[i]
            arr2 << arr
            arr = []
        end
    end

    longest = arr2.sort_by(&:length)[-1]
    longest.join("")

end

# Examples
p longest_streak('a')           # => 'a'
p longest_streak('accccbbb')    # => 'cccc'
p longest_streak('aaaxyyyyyzz') # => 'yyyyy
p longest_streak('aaabbb')      # => 'bbb'
p longest_streak('abc')         # => 'c'