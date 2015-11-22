my_array = [[1,2,3], [4,5,6],[1,2,3], [4,5,6]]

# Solution 1
my_array.flatten.each do |num|
  num *= num
  puts num
end

# Solution 2
my_array.each do |sub_array|
  sub_array.each do |num|
    puts num * num
  end
end

# Solution 3
new_array = my_array.flatten

for i in 0..(new_array.length - 1)
  y = new_array[i] ** 2
  puts y
end
