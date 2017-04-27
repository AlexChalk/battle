require 'game'

describe Game do

  subject(:game) { described_class.new}
  let(:player_1) { double :player, :receive_damage => true }

    describe '#attack' do
      it "takes points from the second player" do
        expect{ player.attack }.to change{ player.hp }.by(-10)
      end

      it "sends the receive damage to the player" do
        expect(player_1).to receive(:receive_damage)
        game.attack(player_1)
      end
    end
end
