print "give me a sentence: "
sentence = gets.chomp

letters  = sentence.split("")

for i in 1..letters.length
  if i % 3 == 0
    print letters[i-1].upcase
  else
    print letters[i-1]
  end
end
