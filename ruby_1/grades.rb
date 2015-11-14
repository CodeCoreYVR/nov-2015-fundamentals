print "What's your grade? "

# number = gets.chomp.to_i
number = gets.to_i

if number >= 70
  puts "A"
elsif number >= 60
  puts "B"
elsif number >= 50
  puts "C"
elsif number >= 40
  puts "D"
else
  puts "F"
end
