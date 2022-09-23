class String

def select(&block)

    block ||= Proc.new{}

    string = ''

    (0...self.length).each do |i|
        string += self[i] if block.call(self[i])
    end

    string

end

end

# Examples
p "app academy".select { |ch| !"aeiou".include?(ch) }   # => "pp cdmy"
p "HELLOworld".select { |ch| ch == ch.upcase }          # => "HELLO"
p "HELLOworld".select                                   # => ""