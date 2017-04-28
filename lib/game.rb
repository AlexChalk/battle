
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

  def self.game=(game)
    @game = game
  end

  def attack
    receiver.receive_damage
    self.message = "#{Game.game.attacker.name} successfully attacked #{Game.game.receiver.name}"
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
