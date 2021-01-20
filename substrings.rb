dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, inputArray)
  outputArray = []
  for stringWord in string.split
    for dictionaryWord in inputArray
      outputArray << dictionaryWord if stringWord.include?(dictionaryWord) && outputArray.none?(dictionaryWord)
    end
  end
  outputArray
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)