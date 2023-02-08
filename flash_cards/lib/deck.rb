class Deck
  attr_reader :cards
  def initialize(cards)
    @cards = cards
  end

  def count
    cards.count
  end

  def cards_in_category(topic)
    category_cards = []
    @cards.each do |card|
      if card.category == topic
        category_cards << card
      end
    end
    category_cards
  end
  

end