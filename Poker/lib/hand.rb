require_relative 'player'
require_relative 'card'

class Hand

  def initialize
  end

  #define card logic here
  def check_hand(players_hand)
    #card : [:Spade, {A:1}]
    pattern = Hash.new(0); number = Hash.new(0)

    player.hand.each do |arr|
      pattern[arr[0]] += 1
      number[arr[1].values] += 1
    end

    # check_flush(pattern)
    # check_straight
    # check_n_of_a_kind

  end

  def check_n_of_a_kind(number)
    count_of_nums = number.values
    if count_of_nums.include? (4)
      return :four_kind
    elsif count_of_nums.include? (3) && count_of_nums.size == 2
      return :full_house
    elsif count_of_nums.include? (3) && count_of_nums.size == 3
      return :three_kind
    elsif count_of_nums.include? (2) && count_of_nums.size == 3
      return :two_pair
    elsif count_of_nums.include? (2) && count_of_nums.size == 4
      return :one_pair
    else
      return :high_card
    end

  end

  def check_straight(number)

  end


  def check_flush(pattern)
    #retuns [pattern] if true else []
    return pattern.keys if pattern.any? {|k, v| v == 5}
    []
  end
end

hand = Hand.new
