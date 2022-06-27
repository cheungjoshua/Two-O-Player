class Player
  attr_accessor :life, :name

  def initialize(name)
    @name = name
    @life = 3
  end

  def reduceLife
    @life -= 1
  end
end
