require 'byebug'

class String
    def first_anagram?(other_str)

        
    end

    def find_permutations
        final_permutations = []
        copied_string = self.dup
        return [copied_string] if copied_string.length == 1
        
        # (copied_string.length - 1).times do
            # debugger
        first = copied_string[0]
        rest = copied_string[1..-1].find_permutations

        final_permutations += first.mix_in(rest)
            # copied_string.split("").rotate.join("")
    end

    def mix_in(rest) ["ad", "da"]
        mixed = []
        # debugger
        rest.each do |substr|
            (0..substr.length).each do |i|
                dup = substr.dup
                mixed << dup.insert(i, self)
            end
        end
        mixed
    end

end

  