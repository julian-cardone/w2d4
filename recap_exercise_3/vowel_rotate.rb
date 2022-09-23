def vowel_rotate(str)

    vowels = "aeiou"

    voword = []

    str.each_char {|char| voword << (char) if vowels.include?(char)}

    (voword.length - 1).times do 
        voword.rotate!
    end

    string = '' 

    (0...str.length).each do |i|
        if vowels.include?(str[i])
            string += voword[0]
            voword.rotate!
        else
            string += str[i]
        end
    end

    string

end

p vowel_rotate('computer')      # => "cempotur"
p vowel_rotate('oranges')       # => "erongas"
p vowel_rotate('headphones')    # => "heedphanos" 
p vowel_rotate('bootcamp')      # => "baotcomp"
p vowel_rotate('awesome')       # => "ewasemo"