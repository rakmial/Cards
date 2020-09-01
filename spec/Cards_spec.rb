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
  it('initializes with 52 cards, provides .count method to return number of cards remaining') do
    expect(Deck.new.count).to(eq(52))
  end
  # [2..10] + ["J","Q","K","A"] for each suit ["H","S","C","D"]
end
