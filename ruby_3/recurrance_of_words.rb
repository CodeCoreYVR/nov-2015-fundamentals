print "give me a sentence: "

sentence = gets.chomp

# words will be an array of all the words entered by te user
words = sentence.split

# We instantiate an empty hash with a 0 as a default value because we want
# the default frequency of a word to be 0 so we can easily increment it.
frequencies = Hash.new(0)

words.each do |word|
  # the frequency of any word will start at 0 becaus the default value of the
  # frequences hash is 0 then it will be incremented every time.
  frequencies[word] += 1
  # frequencies[word.to_sym] += 1
end

print frequencies
