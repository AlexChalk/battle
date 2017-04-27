
class Game
  attr_reader :attacker, :receiver, :player1, :player2, :message

  def initialize(player_1, player_2)
    @player1 = player_1
    @player2 = player_2
    @attacker = player_1
    @receiver = player_2
  end

  def attack
    receiver.receive_damage
    switch_player
    self.message = "Your attack was successful!"
  end

  private
  attr_writer :attacker, :receiver, :message

  def switch_player
    self.attacker, self.receiver = receiver, attacker
  end

end
