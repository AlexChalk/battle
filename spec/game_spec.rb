require 'game'

describe Game do

  let(:player_1) { double :player, :receive_damage => true }
  let(:player_2) { double :player, :receive_damage => true }
  subject(:game) { described_class.new(player_1, player_2)}

  describe '#initialize' do
    it "requires two arguments that are saved to player instances" do
      game = Game.new(player_1, player_2)
      expect(game).to have_attributes(player_1: player_1, player_2: player_2)
    end
  end

  describe '#attack' do
    it "sends the #receive_damage message to the player" do
      expect(player_2).to receive(:receive_damage)
      game.attack(game.player_2)
    end
  end

  describe '#switch_turns' do
    it "switchies the attack between the players" do
      expect(@player_1).to
    end
  end
end
