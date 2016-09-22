require 'rspec'
require 'player'

describe "Player" do
  subject(:player1) {Player.new("Jin")}
  describe "#initialize" do
    it "sets player name, hand, chips and status" do
      expect([player1.name, player1.hand, player1.chips,
         player1.status]).to eq(["Jin", [], 500, :active])
    end
  end


end
