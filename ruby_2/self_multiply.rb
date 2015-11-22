#numbers = [1,2,3,4,5]
numbers  = (1..10).to_a

numbers.each do |x|
  y = x * x
  puts y
end
