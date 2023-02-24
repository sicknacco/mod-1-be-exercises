require 'rspec'
require "./lib/contestant"
require "./lib/game"

RSpec.describe Contestant do
  before(:each) do
    @alexander = Contestant.new({first_name: 'Alexander',
      last_name: 'Aigiades',
      age: 28,
      state_of_residence: 'CO',
      spending_money: 10})
  end

  it 'exists' do
    expect(@alexander).to be_a(Contestant)
  end
end