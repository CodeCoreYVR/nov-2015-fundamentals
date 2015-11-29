# it will always load the classes even if they are loaded again
# load "./cookie.rb"

# if the class is already loaded, require will not load it again
require "./cookie.rb"

# the class Oreo inherits from the class Cookie.
# this means that Oreo will have all the methods (and attributes) that are
# inside the Cookie class
# Oreo is called the Child Class or Sub Class
# Cookie is called the Parent Class or Super Class
class Oreo < Cookie
  attr_accessor :filling_type
end
