my_array = [1, 2, 3]

new_array = my_array.each do |num|
              puts num * num
              num * num
            end

puts new_array

puts ">>>>>>>>>>>>>>>>>"

new_array = my_array.map do |num|
              puts num * num
              num * num
            end

puts new_array
