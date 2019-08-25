class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    puts "( Card.initialize ) Creating new Card *** rank: #{rank}, suit: #{suit}"
    self.rank = rank
    self.suit = suit
  end

  def output_card
    puts "( output_card ) This card is: '#{self.rank} of #{self.suit}'"
  end

  #def self.random_card
   # Card.new(rand(rank, suit))
  #end
end

class Deck
  attr_accessor :rank, :suit

  # Generates the 4 suits of cards in each denomination
  def initialize(cards)
    cards = Card.new("rank", "suit")
    @cards = []
    @cards << Card.new(self.rank, self.suit)

  end

  #shuffles the deck of cards
  def shuffle
    unless @cards.empty?
      @cards.shuffle!
    end
  end


  #def self.top_card
    #Card.new(self.rank, self.suit)
  #end

  #Deals the cards from the top of the virtual deck.
  def deal
    @cards.each do |card|
      card.output
    end
  end
end

# Define the options for ranks and suits here, outside class definitions
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
suits = ["Hearts", "Diamond", "Clubs", "Spades"]

# Use our classes to initialize instances
nineOfHearts = Card.new(9, "hearts")
aceOfSpades = Card.new("Ace", "spades")

# Have the aceOfSpaces Card instance tell us what it thinks it is
aceOfSpades.output_card
puts "The 'rank' of the aceOfSpades Card instance is: '#{aceOfSpades.rank}''"