require 'game'

describe Game do

  subject(:game) { described_class.new}
  let(:player_1) { double :player, :receive_damage => true }

    describe '#attack' do
      it "sends the #receive_damage message to the player" do
        expect(player_1).to receive(:receive_damage)
        game.attack(player_1)
      end
    end
end
