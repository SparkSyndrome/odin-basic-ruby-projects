dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dictionary)
  sub = []
  substrings = Hash.new(0)

  until sub.length == word.length
    word.each_char do |char|
      sub << char

      if dictionary.include?(sub.join(""))
        substrings[sub.join("")] += 1
        substrings
      end
    end
  end

  until sub.length == 0
    sub.shift

    if dictionary.include?(sub.join(""))
      substrings[sub.join("")] += 1
      substrings
    end
  end

  p substrings
end

substrings("below", dictionary)