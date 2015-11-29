require "./animal.rb"

class Cat < Animal

  def catch(bird)
    @bird = bird
  end

  def eat
    if @bird
      puts "Yummy bird! #{@bird.name}"
      @bird = nil # eating the bird by removing the object
    else
      puts "I don't have a bird to eat!"
    end
  end

end
