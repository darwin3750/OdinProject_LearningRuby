dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, inputArray)
  outputArray = []
  for dictionaryWord in inputArray
    outputArray << dictionaryWord if string.downcase.include?(dictionaryWord.downcase) && outputArray.none?(dictionaryWord)
  end
  return outputArray
end

puts substrings("Below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)