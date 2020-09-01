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

end