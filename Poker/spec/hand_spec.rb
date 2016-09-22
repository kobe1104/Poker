require 'rspec'
require 'hand'

describe "Hand" do
  subject(:hand) {Hand.new}

  describe "#check_flush" do
    let(:pattern) {{Spade: 5}}
    it "returns pattern if hand is a flush" do
      expect(hand.check_flush(pattern)).to eq([:Spade])
    end
  end

  describe "#check_n_of_a_kind" do
    context "when four of a kind" do
      let(:cards) {{A:4, Q:1}}
      it "returns :four_kind" do
        expect(check_n_of_a_kind(cards)).to eq(:four_kind)
      end
    end

    context "when three of a kind" do
      let(:cards) {{A:3, Q:1, J:1}}
      it "returns :three_kind" do
        expect(check_n_of_a_kind(cards)).to eq(:three_kind)
      end
    end
  end



end
