require('rspec')
require('Cards')

describe("Card") do
  it('initializes with suit from ["H", "S", "C", "D"] and rank from [2..10,"J","Q","K","A"], \
  provides reader for each and @value for both.') do
    expect(Card.new(2,"H").suit).to(eq("H"))
    expect(Card.new(2,"H").rank).to(eq(2))
    expect(Card.new(2,"H").value).to(eq("2H"))
  end
  it('initializes with a @name built from value and a Hash containing written words, provides reader :name') do
    expect(Card.new(2,"H").name).to(eq("Two of Hearts"))
  end
end

describe("Deck") do
  it('initializes with 52 cards, provides .count method to return number of cards remaining in deck') do
    expect(Deck.new.count).to(eq(52))
  end
  it('provides a .draw method, which returns the top Card and removes it from the top of the deck') do
    test_deck = Deck.new
    expect(test_deck.draw.class).to(eq(Card))
    expect(test_deck.count).to(eq(51))
  end
  it('initializes with one Card for each combination of suit and rank') do
    test_deck = Deck.new
    for suit in %w(H S D C).reverse do
      for rank in ((2..10).to_a.map(&:to_s) + %w(J Q K A)).reverse do
        expect(test_deck.draw.value).to(eq(rank+suit))
      end
    end
  end
  it('provides method .shuffle which randomizes the order of cards in deck') do
    test_random = []
    test_nonrandom = []
    test_deck_1 = Deck.new.shuffle
    test_deck_2 = Deck.new
    52.times {test_random.append(test_deck_1.draw)}
    52.times {test_nonrandom.append(test_deck_2.draw)}
    expect(test_random).not_to(eq(test_nonrandom))
  end
end

describe("Hand") do
  it('initializes with attr_reader :current_hand, an array to store cards .draw(n) from Deck') do
    expect(Hand.new.current_hand).to(eq([]))
  end
  it('provides its own .draw method, which calls Deck.draw and adds returned card to @current_hand') do
    test_hand = Hand.new.draw(Deck.new)
    expect(test_hand.current_hand[0].value).to(eq("AC")) #"AC" is first card of unshuffled new Deck
  end
  it('provides a .discard method which accepts card .value to determine which card to remove') do
    test_deck = Deck.new
    expect(Hand.new.draw(test_deck).draw(test_deck).discard("AC").current_hand[0].value).to(eq("KC"))
  end
end