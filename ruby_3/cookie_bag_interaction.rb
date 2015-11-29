load "./cookie.rb"
load "./cookie_bag.rb"

cookie1 = Cookie.new(6, 7)
puts cookie1.calorie_count

cookie2 = Cookie.new(12, 13)
puts cookie2.calorie_count

cookie3 = Cookie.new(23, 54)
puts cookie3.calorie_count

cookie_bag = CookieBag.new(2)

puts cookie_bag.total_calories

cookie_bag.add_cookie(cookie1)
cookie_bag.add_cookie(cookie2)
cookie_bag.add_cookie(cookie3)

puts cookie_bag.total_calories
