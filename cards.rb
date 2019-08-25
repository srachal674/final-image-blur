class Card
  attr_accessor :rank, :suit
  
  def initialize(rank, suit)
    self.rank = rank
    self.suit = suit
  end

  def output_card
    puts "#{self.rank} of #{self.suit}"
  end
end

class Deck
  attr_accessor :rank, :suit

  #Generates the 4 suits of cards in each denomination
  def initialize
    self.rank = %i[2 3 4 5 6 7 8 9 10 Jack Queen King Ace ].sample
    self.suit = %i[ Hearts Diamond Clubs Spades ].sample
    @cards = []
    @cards << Card.new(self.rank, self.suit) 
  end


  #shuffles the deck of cards
  def shuffle
    @cards.shuffle!
  end

  #Deals the cards from the top of the virtual deck.
  def deal
    @cards.each do |card|
      card.output_card
    end
  end  
end

deck = Deck.new
deck.shuffle
deck.deal