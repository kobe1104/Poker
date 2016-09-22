class Player
  attr_reader :name, :hand, :chips
  attr_accessor :status

  def initialize(name, hand = [], chips = 500, status = :active)
    @name = name
    @hand = hand
    @chips = chips
    @status = status
  end

  def discard(*cards) # indices of cards player wishes to discard
    raise "Too many cards" if cards.size > 3
    cards.each do |card|
      @hand.delete_at(card)
    end
  end

  #status is either folded or active
  # def action(move)
  #   case move
  #   when :fold
  #     status = :fold
  #   when :raise
  #     #calls
  #
  #   when :check
  #     #do nothing
  #   end

  # end
end
