dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  hash = {}
  string_array = string.downcase.split
  
  string_array.each do |snippet|
    dictionary.each do |word|
      if snippet.include?(word)
        if hash.has_key?(word)
          hash[word] += 1
        else
          hash[word] = 1
        end
      end
    end
  end

  puts hash
end

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)