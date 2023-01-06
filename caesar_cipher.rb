def caesar_cipher(str, num)
    upper = ("A".."Z").to_a
    lower = ("a".."z").to_a

    arr_of_char = str.split("")
    new_arr = arr_of_char.map do |char|
        if (char.ord.between?(65, 90)) #upper case
            index = upper.find_index(char)

            num.times do
                if (index == upper.length)
                    index %= upper.length
                end
                index += 1
            end
        
            upper[index]
        elsif ((char.ord + num).between?(97, 122)) #lower case
            index = lower.find_index(char)

            num.times do
                if (index == lower.length)
                    index %= lower.length
                end
                index += 1
            end
        
            lower[index]
        else
            char
        end
    end

    new_arr.join
end

p caesar_cipher("What a string!", 5)