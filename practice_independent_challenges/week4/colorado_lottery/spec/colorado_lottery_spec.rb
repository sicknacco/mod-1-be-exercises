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
end