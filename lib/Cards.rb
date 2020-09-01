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
    for suit in %w(H S D C) do
      for rank in ((2..10).to_a + %w(J Q K A)) do
        @card_array.append(Card.new(rank,suit))
      end
    end
    @count = @card_array.length
  end

  def draw
    @count = @card_array.length - 1
    @card_array.pop
  end
end