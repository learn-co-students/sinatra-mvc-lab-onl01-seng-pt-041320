class PigLatinizer

    def piglatinize(user_phrase)
        alephbet = ('a'..'z').to_a + ('A'..'Z').to_a
        vowels = %w[a e i o u] + %w[A E I O U]
        consonants = alephbet - vowels

        converted_words = []
        input = user_phrase.split(' ')
        input.each do |word|
            if word.length < 2
                converted_words << word + 'way'
            elsif vowels.include?(word[0])
                converted_words << word + 'way'
            elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
                converted_words << word[3..-1] + word[0..2] + 'ay'
            elsif consonants.include?(word[0]) && consonants.include?(word[1])
                converted_words << word[2..-1] + word[0..1] + 'ay'
            elsif consonants.include?(word[0])
                converted_words << word[1..-1] + word[0] + 'ay'
            else
                converted_words << word + '?'
            end
        end

        return converted_words.join(', ').gsub(/,/, '')
    end

end