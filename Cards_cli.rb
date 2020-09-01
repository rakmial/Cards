require('./lib/Cards')

game_over = false
puts "Welcome to Cards, a simulated deck of cards."
puts "You crack open a factory-fresh pack of cards."
puts "The plastic smell is overwhelming, and the card"
puts "edges are smooth and cool against your fingers."
deck = Deck.new

until game_over do
  puts "Choose one: count, draw, shuffle, quit"
  choice = gets.chomp

  if choice == "count"
    puts "There are " + deck.count.to_s + " cards left in the deck."
  elsif choice == "draw"
    puts "You draw a " + deck.draw.value + " and fork it to /dev/null"
  elsif choice == "shuffle"
    deck = deck.shuffle
    puts "You masterfully shuffle and bridge the cards, somehow"
    puts "making them perfectly random in one go."
  elsif choice == "quit"
    puts "Thanks for ... playing, I guess?"
    game_over = true
  else
    puts "Hmm, didn't recognize what you said there."
  end
end
