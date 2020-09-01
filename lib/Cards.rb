require('rspec')
require('pry')

class Card
  attr_reader(:rank, :suit, :value)
  
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
    @value = rank.to_s + suit
  end
end

class Deck
  attr_reader(:count)
  
  def initialize
    @card_array = []
    52.times {@card_array.append(Card.new(2,"H"))}
    @count = @card_array.length
  end

  def draw
    @count = @card_array.length - 1
    @card_array.pop
  end
end