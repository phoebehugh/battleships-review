class Ship

  def initialize
    @floating = true
  end

  def floating?
    @floating
  end

  def sink!
    @floating = false
  end

end
