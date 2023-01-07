dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

#output substrings("below", dictionary)
# => { "below" => 1, "low" => 1 }

def substrings(word, dictionary)
    s_index = 0
    e_index = 1
    my_hash = Hash.new(0)

    while (e_index <= word.length)
        currentSubstring = word[s_index, e_index]

        if (dictionary.index(currentSubstring))
           match = dictionary[dictionary.index(currentSubstring)]
           my_hash[match] += 1
        end

        e_index += 1
    end

    s_index += 1

    while (s_index < e_index - 1)
        currentSubstring = word[s_index, e_index]
        if (dictionary.index(currentSubstring))
            match = dictionary[dictionary.index(currentSubstring)]
            my_hash[match] += 1
        end
        s_index += 1
    end

    p my_hash
end

substrings("below", dictionary)