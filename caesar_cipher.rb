def cipher (string,number=0)
    alphabet = *('a'..'z')
    counter = ""
    word_array=string.split("")
    for letter in word_array do
        alphabet.each_with_index do |word,index|
            back_to_fortnite = (index+number) % 26
            if alphabet.include?(letter.downcase)==false
                counter+=letter
                break
            elsif letter ==word
                counter+=alphabet[back_to_fortnite]
                break
            elsif letter.downcase==word
                counter+=alphabet[back_to_fortnite].capitalize
                break
            end
        end
    end
    counter
end

puts cipher("Hz7lYo!..",150)