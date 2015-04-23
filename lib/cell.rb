class Cell

  attr_accessor :content

  def initialize
    @hit = false
  end

  def hit
    raise('Cell has already been hit!') if hit?
    content.hit
    @hit = true
  end

  def hit?
    @hit
  end

end
