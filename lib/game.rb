
class Game
  attr_reader :attacker, :receiver, :player1, :player2, :message, :new_game

  def initialize(player_1, player_2)
    @player1 = player_1
    @player2 = player_2
    @attacker = player_1
    @receiver = player_2
    @new_game = true
  end

  def attack
    self.new_game = false
    receiver.receive_damage
    self.message = "Your attack was successful!"
  end

  def new_game?
    new_game
  end

  def lost?
    receiver.hp == 0 ? true : false
  end

  def switch_player
    self.attacker, self.receiver = receiver, attacker
  end

  private
  attr_writer :attacker, :receiver, :message, :new_game

end
