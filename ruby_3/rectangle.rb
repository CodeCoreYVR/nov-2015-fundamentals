class Rectangle
  # attr_accessor :width, :height
  attr_accessor :width
  attr_accessor :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

  def area
    width * height
  end

end
