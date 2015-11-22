prov_cities = {"BC" => ["Vancouver", "Richmond", "Burnaby"],
               "AB" => ["Calgary", "Edmonton", "Red Deer"],
               "ON" => ["Toronto", "Ottawa", "Windsor"]
              }

# prov_cities.each do |province, cities|
#   print "#{province}: "
#   cities.each {|city| print "#{city}, " }
#   puts " "
# end

prov_cities.each do |province, cities|
  puts "#{province}: #{cities.join(", ")}"
end
