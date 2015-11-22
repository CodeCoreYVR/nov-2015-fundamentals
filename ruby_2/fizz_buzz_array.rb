# my_array = [] # my_array = Array.new
#
# for number in 1..100
#   if number % 3 == 0 && number % 5 == 0
#     my_array << "FIZZBUZZ"
#   elsif number % 3 == 0
#     my_array << "FIZZ"
#   elsif number % 5 == 0
#     my_array << "BUZZ"
#   else
#     my_array << number
#   end
# end
#
# print my_array

print "What do you like to say if it's divisible by 3 (e.g. FIZZ): "
first_answer = gets.chomp

print "What do you like to say if it's divisible by 5 (e.g. BUZZ): "
second_answer = gets.chomp

my_array = [] # my_array = Array.new

for number in 1..100
  if number % 3 == 0 && number % 5 == 0
    my_array << "#{first_answer}#{second_answer}"
  elsif number % 3 == 0
    my_array << first_answer
  elsif number % 5 == 0
    my_array << second_answer
  else
    my_array << number
  end
end

print my_array
