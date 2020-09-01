# English Specification

_Requirements_: First Independent Project
I don't have the rotating batch of projects that Epicodus uses to test their students, so decided to make up my own. I plan to program a class for playing cards and a deck to enable use for CLI card games like solitaire, blackjack, hearts, or any other that uses a typical 52 card deck.

The Epicodus project is a sort of 8 hour sprint - if I were in that situation, I would aim for an MVP that would take about half that time that could be functional and polished, then add functionality. I will proceed in that fashion here as well.

MVP - Describe a class for a typical playing card and a class for a deck. Ensure cards have fields for the user to identify their suit and rank. Deck must initialize with 52 cards (the correct ones). Deck provides .shuffle method to randomize card order and .draw to return the next card.

Additional potential features - 

Provide for comparison of rank between card objects (ie "A" > "K" > "Q" > "J" > 10, option for Ace-low). 
Add class Hand and class Table (contains Discard, essentially inherits from Deck but with readers?) with sensible functionalities.
Add modules that specify number of human / bot players and game types, Deck .deal opening hand for that game type to each player.

### _Tests & Functions_

* Class Card must have attr_reader for @suit and @rank.
* Class Deck must initialize with 52 cards and provides reader attr :count that returns number of cards remaining.
* Class Deck provides .draw which basically .pops the top card (return and remove).
* Class Deck initializes with one Card per combination of rank [ 2 - "A" ] and suit ["H", "S", "C", "D"]. 
* Class Deck provides .shuffle which randomizes card order in Deck.
* CLI manages basic interface with user.

_BONUS ROUND_
MVP is finished with a couple hours to spare, let's spec out some more features!

* Add Card.name, a Hash that builds a full written name (eg "Ace of Clubs") from the symbolic .value ("AC")
* Add Class Hand, which initializes an array @current_hand that hold cards from Deck.draw. 
* Class Hand has .get for current_hand which reads out your current_hand with full written name and hand position, like:
"
1: 10 of Spades
2: Jack of Hearts
"
* Add method .discard(current_hand[i+1]) to throw the chosen card into the ether.
* Add class Table as a library for statics, such as .compare(card_1,card_2) to determine which is higher.
  - Table can be extended later with modules to represent game surface locations and contain game rules.
* Add method Hand.sort