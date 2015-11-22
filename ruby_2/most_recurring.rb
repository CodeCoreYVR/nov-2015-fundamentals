print "Give me a sentence: "
sentence = gets.chomp

# downcase so we take into account capital letters as well
# gsub(" ", "") to ignore spaces
letters = sentence.downcase.gsub(" ","").split("")

# this will make the default value of the Hash 0 which makes it convenient
# to increment the number without having to initialize it to anything
frequecies = Hash.new(0)

letters.each do |letter|
  frequecies[letter] += 1
end

# print frequecies

puts frequecies.key(frequecies.values.max)
