require 'game'

describe Game do

  let(:player_1) { double :player_1, :receive_damage => true, :hp => true }
  let(:player_2) { double :player_2, :receive_damage => true, :hp => true }
  subject(:game) { described_class.new(player_1, player_2)}

  describe '#initialize' do
    it "requires two arguments that are saved to player instances" do
      game = Game.new(player_1, player_2)
      expect(game).to have_attributes(player1: player_1, player2: player_2, attacker: player_1, receiver: player_2, new_game: true)
    end
  end

  describe '#attack' do
    it "sends the #receive_damage message to the player" do
      expect(player_2).to receive(:receive_damage)
      game.attack
    end

    it "sets new_game? to false" do
      game.attack
      expect(game.new_game?).to eq(false)
    end

  end

  describe '#switch_player' do
    it "toggles whose turn it is" do
      game.switch_player
      expect(game.attacker).to eq player_2
    end
  end

  describe '#lost?' do
    it "checks the receiver's hp" do
      expect(player_2).to receive(:hp)
      game.lost?
    end

    it "returns true if receiver's hp is 0" do
      allow(player_2).to receive(:hp).and_return(0)
      expect(game.lost?).to eq true
    end
  end

  describe '#self.game' do
    it "gets the value of the class instance variable game" do
      expect(Game.game).to eq nil
    end
  end

  describe '#self.game=' do
    it "sets the value for the class instance variable game" do
      Game.game= true
      expect(Game.game).to eq(true)
    end
  end 
end
