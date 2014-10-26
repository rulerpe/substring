def substrings(words,dictionary)
    
    word_array = words.downcase.split(" ")
    feq = Hash.new(0)
    word_array.each do |word|
        
        dictionary.each do |dic_word|
           if word.include?dic_word 
            feq[dic_word] += 1
            end
        end
    end
    feq = feq.sort_by{|word,time| word}
    print "{"
    feq.each do |word,time|
       print "\"#{word}\"=>#{time}, "
    end
    print "}"
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)