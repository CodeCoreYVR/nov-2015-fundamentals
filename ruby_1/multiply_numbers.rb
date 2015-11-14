print "Give me a first number: "

first_number = gets.chomp

print "Give me a second number: "

second_number = gets.chomp

puts first_number.to_i * second_number.to_i

# Solution 2
result = first_number.to_i * second_number.to_i

puts "Here is your result: #{result}"

puts "Here is your result: " + result.to_s
