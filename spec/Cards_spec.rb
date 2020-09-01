require('rspec')
require('Cards')

describe("Card") do
  it('initializes with suit from ["H", "S", "C", "D"] and rank from [2..10,"J","Q","K","A"], \
  provides reader for each and @value for both.') do
    expect(Card.new(2,"H").suit).to(eq("H"))
    expect(Card.new(2,"H").rank).to(eq(2))
    expect(Card.new(2,"H").value).to(eq("2H"))
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
end
