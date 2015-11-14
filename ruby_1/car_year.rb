puts "What is the year of your vehicle?"

year = gets.chomp.to_i

if year > 2016
  puts "The car is form the future"
elsif year > 2010
  puts "New Car"
elsif year > 2000
  puts "Old Car"
else
  puts "Very Old Car"
end
