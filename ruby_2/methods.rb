def greeting
  puts "Hello World"
end

greeting

greeting()

def random_number
  rand(100)
end

puts random_number

random_number = rand(100)

puts random_number

def multiply(a, b)
  a * b
end

puts multiply(5,6)
puts multiply 5,6

# puts multiply 5 # this will throw an error

def sum(a, b)
  a + b
end

puts sum(1,6)
puts sum 1,8

def greeting(name)
  puts "Hello #{name.capitalize}!"
end

greeting("tam")

def sum(a=0, b=0)
  a + b
end

puts sum(3,4)
puts sum(3)
puts sum

def power_it(a, b)
  a ** b
end

puts power_it 2,3

def by_five?(x)
  # x % 5 == 0 ? true : false
  x % 5 == 0
end

puts by_five?(10)
puts by_five?(11)

def largest(*numbers)
  numbers.max
end

puts largest(4,5,6)
puts largest
puts largest 7,87,5,34,89
