print "Give me a number: "

number = gets.chomp.to_i

# if will execute the block `puts "The number is big"` if the expression
# in it evalutes to true, which is if `number` is bigger than 10 in this case
# otherwise it will execute the block `puts "The number is small"`
if number > 10
  puts "The number is big"
elsif number > 5
  puts "The number is medium"
else
  puts "The number is small"
end
