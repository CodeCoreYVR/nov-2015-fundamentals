names         = ["mike", "tony", "ben", "john", "kevin"]

# instiating an empty array to store the capitalized names in it.
names_capital = []

names.each do |name|
  name_cap = name.capitalize!
  names_capital << name_cap
  puts name_cap
end

print names_capital
