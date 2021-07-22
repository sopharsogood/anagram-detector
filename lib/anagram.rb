# Your code goes here!
$Alphabet = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)

class Anagram
    def initialize(word)
        @word = word
    end

    def match(potential_matches_array)
        matches = []
        potential_matches_array.each do |potential_match|
            word_letters = @word.downcase.split("")
            potential_match_letters = potential_match.downcase.split("")
            matches << potential_match if word_letters.sort == potential_match_letters.sort
        end
        matches
    end
end