class Cookie

  def initialize(sugar_amount, flour_amount)
    # we defined instance variables in here because we need to access them
    # later in other methods. Those objects will persist until the object
    # is removed.
    @sugar_amount = sugar_amount
    @flour_amount = flour_amount
    puts "Creating a cookie with #{sugar_amount}g of sugar and #{flour_amount}g of flour"
  end

  # This is called a GETTER method
  def sugar_amount
    @sugar_amount
  end

  # This is called a SETTER method
  def sugar_amount=(new_value)
    @sugar_amount = new_value
  end

  def change_sugar_amount(new_value)
    @sugar_amount = new_value
  end

  attr_reader :flour_amount
  # is equivalent to:
  # def flour_amount
  #   @flour_amount
  # end

  attr_writer :flour_amount
  # is equivalent to:
  # def flour_amount=(new_value)
  #   @flour_amount = new_value
  # end

  attr_accessor :butter_amount
  # is equivalent to:
  # attr_reader :butter_amount
  # attr_writer :butter_amount

  def calorie_count
    @sugar_amount * 4 + @flour_amount * 3.5
  end

  # this is a public instance method
  def bake(duration = 10)
    prepare
    "baking baking for #{duration} minutes..."
  end

  def eat
    "Yummy!"
  end

  # this is a public class method. You call a class method directly
  # on the class without creating an object first as in:
  # Cookie.info
  def self.info
    "I'm a cookie class!"
  end

  # methods defined after this keyword will be treated as
  # private methods
  private

  # this is a private instance method
  def prepare
    puts "Preparing the cookie!"
  end

end
