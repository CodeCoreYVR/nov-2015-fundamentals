class CookieBag

  attr_accessor :capacity

  def initialize(capacity)
    @capacity = capacity
    @cookies  = []
  end

  def open
    if @bag_is_open
      puts "Bag is already open!"
    else
      puts "Opening bag!"
      @bag_is_open = true
    end
  end

  def close
    if @bag_is_open
      puts "Closing bag!"
      @bag_is_open = false
    else
      puts "Bag is already closed!"
    end
  end

  def add_cookie(cookie)
    if @capacity > number_of_cookies
      @cookies << cookie
    else
      puts "the bag is full!"
    end
  end

  def remove_cookie
    if number_of_cookies == 0
      puts "Bag is empty!"
    else
      @cookies.pop
    end
  end

  # this will return the sum of the calories of the cookies inside
  # the bag
  def total_calories
    result = 0
    @cookies.each do |cookie|
      result += cookie.calorie_count
    end
    result
  end

  def number_of_cookies
    @cookies.count
  end

end
