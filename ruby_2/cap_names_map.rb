names = ["mike", "tony", "ben", "john", "kevin"]

new_array = names.map do |name|
              name.capitalize.reverse
            end

puts new_array
