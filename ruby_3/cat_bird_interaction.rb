require "./bird.rb"
require "./cat.rb"

bird = Bird.new("Tweetie", "Small")
cat  = Cat.new("Silvester", "MEdium")

cat.catch bird
cat.eat

cat.eat
