require 'rspec'
require 'deck'

describe "Deck" do
  subject(:new_deck) {Deck.new}

  describe "#initiaize" do
    it "creates an empty deck" do
      expect(new_deck.deck).to eq([])
    end
  end

  describe "#populate" do
    before(:each) {new_deck.populate}
    it "populate unique card set" do
      expect(new_deck.deck.uniq).to eq(new_deck.deck)
    end

    it "populates the deck with Card objects" do
      expect(new_deck.deck).to all(be_an(Card))
    end
  end

  describe "#shuffle" do
    let(:deck_before) {new_deck.deck}
    let(:deck_after) {new_deck.shuffle.deck}
    it "shuffle the deck" do
      expect(:deck_before).to_not eq(:deck_after)
    end
  end


end
