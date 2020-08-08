class PigLatinizer

def translate_word(word)

    #the caret at the front of the expression states we only want to match words that start with a vowel. The "i" says ignore the casing so it can be uppercase or lowercase
    if /^[aeiou]/i.match(word)
        "#{word}way"
    else
        #This looks to split the text at the first vowel. We then put the constant-through the first vowel at the end of the word hence[0] and put the second part ([1]) at the front.
        #and add "ay"
        #The period/dot(.) matches any single character
        # The asterik (*) tell whatever comes before it to match zero or more of it.
        # Meaning that if we didn't add the * it would only return the first vowel it finds but since we did add the * it gives us everything that comes after the first found vowel
        #EXAMPLE: SPARKLING.split(/([aeiou].*)/) => ['sp', 'arkling']
        parts = word.split(/([aeiou].*)/)
        "#{parts[1]}#{parts[0]}ay"
    end
end

    def piglatinize(word)
        words = word.split(" ")
        words.map { |word| translate_word(word)}.join(' ') 
    end

end