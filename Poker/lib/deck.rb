require_relative 'card'

class Deck
  attr_reader :deck

  def initialize
    @deck = []
  end

  def populate
    Card.patterns.each do |pat|
      Card.numbers.each do |k, v|
        @deck << Card.new(pat, k)
      end
    end
  end

  def deal_card(player, num)
    raise "Not enough card" if @deck.size < num
    player.hand << @deck.pop(num)
  end

  def shuffle
    @deck.shuffle!
  end

end
