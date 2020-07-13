class PigLatinizer

    def piglatinize(text)
        arr = text.split(' ')
        arr.map do |word|
            if /^[aeiou]/i.match(word)
                word + "way"
            else
                pig_chars = word.split(/([aeiou].*)/)
                "#{pig_chars[1]}#{pig_chars[0]}ay"
            end
        end.join(' ')
    end

end