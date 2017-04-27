

class Player
  DEFAULT_HP = 60
  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

  private
  attr_writer :hp

end
