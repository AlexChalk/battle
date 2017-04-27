require 'player'

describe Player do
  subject(:player) { described_class.new("James") }

  describe '#name' do
    it 'returns the player\'s name' do
      expect(player.name).to eq "James"
    end
  end

  describe '#hp' do
    it 'initializes at 60' do
      expect(player.hp).to eq 60
    end
  end


  describe '#attack' do
    it "takes points from the second player" do
      expect{ player.attack }.to change{ player.hp }.by(-10)
    end
  end

end
