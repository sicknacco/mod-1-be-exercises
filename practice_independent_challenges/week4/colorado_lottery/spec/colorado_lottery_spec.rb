require 'rspec'
require "./lib/contestant"
require "./lib/game"
require "./lib/colorado_lottery"

RSpec.describe ColoradoLottery do
  before(:each) do
    @lottery = ColoradoLottery.new
  end

  it 'exists' do
    expect(@lottery).to be_an_instance_of(ColoradoLottery)
  end

  it 'game has empty starting attributes' do
    expect(@lottery.registered_contestants).to eq({})
    expect(@lottery.winners).to eq([])
    expect(@lottery.current_contestants).to eq({})
  end
end