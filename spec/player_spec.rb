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

    it "can't drop below 0" do
      20.times { player.receive_damage }
      expect(player.hp).to eq 0
    end
  end

  describe '#receive_damage' do
    it "takes at least 10 points from the player" do
      expect{ player.receive_damage }.to change{ player.hp }.by_at_most(-10)
    end
    it "takes at most 30 points from the player" do
      expect{ player.receive_damage }.to change{ player.hp }.by_at_least(-30)
    end
  end


  
end
