require 'byebug'

def vigenere_cipher(word, key)

    alphabet = ('a'..'z').to_a

    string = ''

    (0...word.length).each do |i|
        string += alphabet[(alphabet.index(word[i]) + key[0]) % 26]
        key.rotate!
    end

    string

end

# Examples
p vigenere_cipher("toerrishuman", [1])        # => "upfssjtivnbo"
p vigenere_cipher("toerrishuman", [1, 2])     # => "uqftsktjvobp"
p vigenere_cipher("toerrishuman", [1, 2, 3])  # => "uqhstltjxncq"
p vigenere_cipher("zebra", [3, 0])            # => "ceerd"
p vigenere_cipher("yawn", [5, 1])             # => "dbbo"