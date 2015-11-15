# 1..20 is a Ruby Range object, it goes from 1 to 20 (inclusive)
# 1...20 is a Ruby Range object, it goes from 1 to 19 (exclusive)
for number in 1..20
  puts number
end

# This equivilant to doing:
x = 1

while x <= 20
  puts x
  x += 1
end
