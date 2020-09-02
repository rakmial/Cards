require('./lib/Cards')

game_over = false
puts "Welcome to Cards, a simulated deck of cards."
puts "You crack open a factory-fresh pack of cards."
puts "The plastic smell is overwhelming, and the card"
puts "edges are smooth and cool against your fingers."
deck = Deck.new
hand = Hand.new

until game_over do
  puts "Choose one: count, shuffle, draw, hand, quit"
  choice = gets.chomp

  if choice == "count"
    puts "There are " + deck.count.to_s + " cards left in the deck."
  elsif choice == "draw"
    hand.draw(deck)
    puts "You draw a " + hand.current_hand[-1].name + " and put it in your hand."
  elsif choice == "shuffle"
    deck = deck.shuffle
    puts "You masterfully shuffle and bridge the cards, somehow"
    puts "making them perfectly random in one go."
  elsif choice == "hand"
    puts "You have"
    i = 0
    hand.current_hand.each do |card|
      i += 1
      puts i.to_s + ": " + card.name
    end
    puts "Do you want to discard any? Enter no or a number between 1 and " + i.to_s
    discarding = gets.chomp
    if discarding == "no"
      break
    hand = hand.discard(current_hand[discarding.to_i-1].value)
    end
  elsif choice == "quit"
    puts "Thanks for ... playing, I guess?"
    game_over = true
  else
    puts "Hmm, didn't recognize what you said there."
  end
end
