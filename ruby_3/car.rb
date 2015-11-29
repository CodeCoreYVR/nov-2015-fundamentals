class Car

  def initialize(model, type, capacity)
    # @model, @type, @capacity = model, type, capacity
    @model    = model
    @type     = type
    @capacity = capacity
  end

  def drive
    ignite_engine
    "Vroom vrooooom"
  end

  def stop
    "screeeeetch"
  end

  def park
    "engine stopped!!"
  end

  def self.max_speed
    200
  end

  private

  def pump_gas
    puts "Pumping gas.."
  end

  def ignite_engine
    puts "Igniting Engine.."
  end

end
