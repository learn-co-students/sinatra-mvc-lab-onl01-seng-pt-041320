class PigLatinizer
    attr_accessor :text
   
    def initialize(text = 0)
      @text = text
    end

    def piglatin
        if @text.include?(" ")
            split_phrase(@text)
        else
            latinize(@text)
        end
    end

    def piglatinize(text)
        if text.include?(" ")
            split_phrase(text)
        else
            latinize(text)
        end
    end


    def latinize(word)
        letters = word.split("")
        first_letter = letters[0]
        second_letter = letters[1]
        third_letter = letters[2]
  
        if first_letter.match(/[aieouAIEOU]/)
            letters << "w"
            letters << "a"
            letters << "y"
        elsif first_letter.match(/[^aieouAIEOU]/) && second_letter.match(/[aieou]/)
        # elsif first_letter == /[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/ && second_letter == /[aeiou]/
        # elsif word.scan(/^[^aeiouAEIOU]+[aeiou]/) == true
            letters.shift 
            letters << first_letter
            letters << "a"
            letters << "y"
        elsif first_letter.match(/[^aieouAIEOU]/) && second_letter.match(/[^aieou]/) && third_letter.match(/[aieou]/)
  
            letters.shift 
            letters.shift 
            letters << first_letter
            letters << second_letter
            letters << "a"
            letters << "y"

        elsif first_letter.match(/[^aieouAIEOU]/) && second_letter.match(/[^aieou]/) && third_letter.match(/[^aieou]/) 
            letters.shift
            letters.shift
            letters.shift 
            letters << first_letter
            letters << second_letter
            letters << third_letter
            letters << "a"
            letters << "y"
    
        end
        letters.join
    end

    def split_phrase(text)
        words = text.split(" ")
        latinized = words.collect do |word|
            latinize(word)
        end
        latinized.join(" ")
    end

end
