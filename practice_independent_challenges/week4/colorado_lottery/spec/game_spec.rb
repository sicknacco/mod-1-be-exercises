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

  it 'game has a name' do
    expect(@mega_millions.name).to eq('Mega Millions')
    expect(@pick_4.name).to eq('Pick 4')
  end

  it 'game has a cost' do
    expect(@mega_millions.cost).to eq(5)
    expect(@pick_4.cost).to eq(2)
  end

  it 'can tell if it has a national drawing' do
    expect(@mega_millions.national_drawing?).to eq(true)
    expect(@pick_4.national_drawing?).to eq(false)
  end
end