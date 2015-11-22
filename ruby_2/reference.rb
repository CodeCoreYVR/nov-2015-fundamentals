# names = ["mike", "tony", "ben", "john", "kevin"]
names = %w(mike tony ben john kevin)

names.each do |name|
  name.capitalize!
end

puts names
