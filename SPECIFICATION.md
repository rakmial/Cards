# English Specification

_Requirements_: First Independent Project
I don't have the rotating batch of projects that Epicodus uses to test their students, so decided to make up my own. I plan to program a class for playing cards and a deck to enable use for CLI card games like solitaire, blackjack, hearts, or any other that uses a typical 52 card deck.

The Epicodus project is a sort of 8 hour sprint - if I were in that situation, I would aim for an MVP that would take about half that time that could be functional and polished, then add functionality. I will proceed in that fashion here as well.

MVP - Describe a class for a typical playing card and a class for a deck. Ensure cards have fields for the user to identify their suit and rank. Deck must initialize with 52 cards (the correct ones). Deck provides .shuffle method to randomize card order and .draw to return the next card.

Additional potential features - 

Provide for comparison of rank between card objects (ie "A" > "K" > "Q" > "J" > 10). 
Add class Hand and class Table (contains Discard, essentially inherits from Deck but with readers?) with sensible functionalities.
Add modules that specify number of human / bot players and game types, Deck .deal opening hand for that game type to each player.

### _Tests & Functions_

* Class Card must have attr_reader for @suit and @rank.
* Class Deck must initialize with 52 cards - ranks [ 2 - "A" ] for each suit ["H", "S", "C", "D"]. 
* Class Deck provides .draw which basically .pops the top card (return and remove).
* Class Deck provides .shuffle which randomizes card order in Deck.
* CLI manages basic interface with user.

### _Specs for Specs_
1. Plain English specs were committed in a text file or README before coding.
2. Specs include specific input and output values and a descriptive sentence.
3. Specs begin with the simplest possible behavior and progress to more complex cases, covering different input values.
4. All specs are translated correctly as test methods.
All tests are passing, and described functionality is present.