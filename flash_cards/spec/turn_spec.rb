require 'rspec'
require './lib/turn'
require './lib/card'

RSpec.describe Turn do
  it 'exists' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    
    expect(turn).to be_instance_of(Turn)
  end

  it 'guess' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    
    expect(turn.guess).to eq("Juneau")
  end

  it 'correct?' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    guess = card.answer
  #require 'pry'; binding.pry
    expect(turn.correct?).to eq(true)
  end

  it 'feedback' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    guess = card.answer
    feedback = turn.correct?

    expect(turn.feedback).to eq('Correct!')
  end

end
