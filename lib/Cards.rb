require('rspec')
require('pry')

class Card
  attr_reader(:rank, :suit, :value, :name)
  
  
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
    @value = rank.to_s + suit
    @name = value_to_name(@value)
  end
  
  def value_to_name(card_value)
    rank_names = { "2" => "Two", "3" => "Three", "4" => "Four", "5" => "Five", "6" => "Six", \
                   "7" => "Seven", "8" => "Eight", "9" => "Nine", "1" => "Ten", "J" => "Jack", \
                   "Q" => "Queen", "K" => "King", "A" => "Ace" }
  
    suit_names = { "H" => "Hearts", "C" => "Clubs", "D" => "Diamonds", "S" => "Spades" }
    [rank_names[card_value[0]], "of", suit_names[card_value[-1]]].join(" ")
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

  def shuffle
    @card_array = @card_array.shuffle
    self
  end
end

class Hand
  attr_reader(:current_hand)

  def initialize
    @current_hand = []
  end

  def draw(deck_obj)
    @current_hand = @current_hand.append(deck_obj.draw)
    self
  end
end