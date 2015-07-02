class Spaceship
  attr_reader :name
  attr_reader :speed

  def initialize(name)
    @name = name
    @cargo = []
    @speed = 0
    @vessels = Hash.new { [] }
  end

  def [](type)
    @vessels[type]
  end

  def []=(type, vehicles)
    @vessels[type] = vehicles
  end


end

ship1 = Spaceship.new("Serenity")