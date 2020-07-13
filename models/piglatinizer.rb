class PigLatinizer
    attr_accessor :words

    def initialize(words: nil)
        @words = words
        # binding.pry
    end

    def piglatinize(words)
        
        if !words.include?(" ")
            word = words.split("")
        else
            phrase = words.split(" ")
            original = []
            phrase.each { |word| original << piglatinize(word) }
            piggy_phrase = original.join(" ")
        end

        pig = []
        if word
            first_letter = word[0] 
            if first_letter.scan(/[aeiouAEIOU]/).count == 1 && first_letter ==
                pig_latin = words + "way"
            elsif
                until word[0].scan(/[aeiouAEIOU]/).count == 1 && word
                    pig << word[0]
                    word.slice!(0)
                    ending = pig.join + "ay"
                    pig_latin = word.join("") + ending
                end
            end
        end

        if piggy_phrase
            piggy_phrase
        else
            pig_latin
        end
    end

end
