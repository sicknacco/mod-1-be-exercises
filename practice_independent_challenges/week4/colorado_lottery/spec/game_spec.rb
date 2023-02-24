require 'rspec'
require "./lib/contestant"
require "./lib/game"

RSpec.describe Game do
  before(:each) do
    @pick_4 = Game.new('Pick 4', 2)
    @mega_millions = Game.new('Mega Millions', 5, true)
  end

  it 'exists' do
    expect(@pick_4).to be_a(Game)
    expect(@mega_millions).to be_a(Game)
  end
end