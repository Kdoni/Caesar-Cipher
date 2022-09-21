def cipher (string,number=0)
    alphabet = *('a'..'z')
    counter = ""
    word_array=string.split("")
    for letter in word_array do
        alphabet.each_with_index do |word,index|
            if word.capitalize == letter
                p letter
                counter+=alphabet[index+number].capitalize
            elsif alphabet.include?(letter)==false
                counter+=letter
                break
            elsif letter ==word
                counter+=alphabet[index+number]
                break
            end
        end
    end
    counter
end

puts cipher("He7llo",5)