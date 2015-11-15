# Solution #1
# secret_number = rand(100)
#
# print "Guess a numbre from 0 to 99: "
#
# number = gets.to_i
#
# guesses = 0
#
# while secret_number != number
#   puts "Guess Lower" if number > secret_number
#   puts "Guess Higher" if number < secret_number
#   print "Try again: "
#   number = gets.to_i
#   guesses += 1
#   break if number == secret_number
# end
#
# puts "You guessed correct!"
# puts "You guessed #{guesses} times"


number  = rand(100)
guesses = 0

begin
  print "Guess a number: "
  guess = gets.to_i
  if number > guess
    puts "Guess Higher"
  elsif number < guess
    puts "Guess Lower"
  else
    puts "Correct! You guessed #{guesses} times"
    break
  end
  guesses += 1
end while true
