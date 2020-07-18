class PigLatinizer
    def piglatinize(text)
        words_array = text.split(' ')
        words_array.map do |word|
            if /^[aeiou]/i.match(word)
                "#{word}way"
            else
                characters = word.split(/([aeiou].*)/)
                "#{characters[1]}#{characters[0]}ay"
            end
        end.join(' ')
    end
end