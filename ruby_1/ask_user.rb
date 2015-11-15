# Solution #1
# sentence = ""
# count    = true
#
# begin
#   puts "Enter a word: "
#   word = gets.chomp
#   break if word == "quit"
#   word.upcase! if count
#   #sentence = sentence + " " + word
#   sentence += " " + word
#   count    = !count
# end while true
#
# puts sentence

# Solution #2
number = 0
words  = ""

loop do
  print "Give me a word: "
  word = gets.chomp
  number += 1
  if word != "quit"
    word.upcase! if number.even?
    words += word
  else
    print words
    break
  end
end
