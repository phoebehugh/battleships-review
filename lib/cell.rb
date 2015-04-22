class Cell

  attr_accessor :content

  def initialize
    @hit = false
  end

  def hit
    @hit = true
  end

  def hit?
    @hit
  end

end