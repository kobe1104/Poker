class Card
  attr_reader :pattern, :number

  PATTERN = [:Clover, :Spade, :Heart, :Diamond]
  NUMBER = {A: 1,"2": 2,"3": 3,"4": 4,"5": 5,"6": 6,"7": 7,"8": 8,
            "9": 9,"10": 10, J: 11, Q: 12, K: 13}

  def self.patterns
    PATTERN
  end

  def self.numbers
    NUMBER
  end

  def initialize(pattern, number)
    @pattern = pattern
    @number = number
  end

end
