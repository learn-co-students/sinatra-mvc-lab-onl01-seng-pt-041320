class PigLatinizer

    def to_pig_latin(word)
        #non_pig_latin_words = ["me", "to", "too", "a", "an", "in", "and", "on"]
        vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

        #binding.pry

        #if non_pig_latin_words.include?(word)
            #word
        if vowels.include? word[0]
            word << "way"
        else
            consonants = ""
            while !vowels.include?(word[0])
                consonants << word[0]
                word = word.split("")[1..-1].join
            end
            word + consonants + 'ay'
        end
    end

    def piglatinize(string)
        #binding.pry
        string.split.collect {|word| to_pig_latin(word)}.join(" ")
    end
        
end