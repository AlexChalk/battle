require 'game'

describe Game do

  let(:player_1) { double :player_1, :receive_damage => true }
  let(:player_2) { double :player_2, :receive_damage => true }
  subject(:game) { described_class.new(player_1, player_2)}

  describe '#initialize' do
    it "requires two arguments that are saved to player instances" do
      game = Game.new(player_1, player_2)
      expect(game).to have_attributes(player1: player_1, player2: player_2, attacker: player_1, receiver: player_2)
    end
  end

  describe '#attack' do
    it "sends the #receive_damage message to the player" do
      expect(player_2).to receive(:receive_damage)
      game.attack
    end

    it "toggles whose turn it is" do
      game.attack
      expect(game.attacker).to eq player_2
    end
  end

end
