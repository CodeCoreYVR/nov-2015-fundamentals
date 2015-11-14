# define a string with double quotes or single quotes
name = "Tam"
# or
name = 'Tam'

# call a method on a string using the `.`
puts name.upcase

# to change the original variable (mutate it) use `!` (bang) at the end of the
# method name
name.upcase!

# use String interpolation to concatenate strings together
a = "Hello"
b = "World"
c = "#{a} #{b}"

# Note that String interpolation only works with double quotes`
