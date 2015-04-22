class Ship

  attr_reader :size
  DEFAULT_SHIP_SIZE = 1
  p self

  def initialize(options)
    @size = options.fetch(:size, DEFAULT_SHIP_SIZE)
    @hits = 0
  end

  def hit
    @hits += 1
  end

  def sunk?
    @hits >= @size
  end

  def self.battleship
    new({size: 4})
  end

  def self.aircraft_carrier
    new({size: 5})
  end

  def self.submarine
    new({size: 3})
  end

  def self.cruiser
    new({size: 3})
  end

  def self.destroyer
    new({size: 2})
  end

  private
  attr_reader :hits

end
