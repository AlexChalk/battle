
class Game
  attr_reader :attacker, :receiver, :player1, :player2, :message

  def initialize(player_1, player_2)
    @player1 = player_1
    @player2 = player_2
    @attacker = player_1
    @receiver = player_2
  end

  def self.game
    @game
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def attack
    receiver.receive_damage
  end

  def lost?
    receiver.hp == 0 ? true : false
  end

  def switch_player
    self.attacker, self.receiver = receiver, attacker
  end

  private
  attr_writer :attacker, :receiver, :message

end
