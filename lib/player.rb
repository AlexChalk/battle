class Player
  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = 60
  end

  def attack
    self.hp -= 10
  end

  private
  attr_writer :hp

end
