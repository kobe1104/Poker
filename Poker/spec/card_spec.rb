require 'rspec'
require 'card'

describe "Card" do
  subject(:card) {Card.new(:Heart,5)}
  describe "#initialize" do
    it "sets the pattern and number for a card" do
      expect([card.pattern, card.number]).to eq([:Heart, 5])
    end

    # expect(card.number).to eq(5)
  end
end
