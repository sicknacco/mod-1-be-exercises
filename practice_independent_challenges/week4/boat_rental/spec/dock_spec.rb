require 'spec_helper'

RSpec.describe Dock do
  before(:each) do
    @dock = Dock.new("The Rowing Dock", 3)
    @kayak_1 = Boat.new(:kayak, 20)
    @kayak_2 = Boat.new(:kayak, 20)
    @sup_1 = Boat.new(:standup_paddle_board, 15)
    @patrick = Renter.new("Patrick Star", "4242424242424242")
    @eugene = Renter.new("Eugene Crabs", "1313131313131313")
  end

  it 'exists' do
    expect(@dock).to be_a(Dock)
  end

  it 'dock has a name' do
    expect(@dock.name).to eq("The Rowing Dock")
  end

  it 'dock has max rental time' do
    expect(@dock.max_rental_time).to eq(3)
  end

  it 'can rent a boat and log' do
    @dock.rent(@kayak_1, @patrick)
    @dock.rent(@kayak_2, @patrick)
    @dock.rent(@sup_1, @eugene)

    expect(@dock.rental_log).to be_a(Hash)
    expect(@dock.rental_log.keys).to eq([@kayak_1, @kayak_2, @sup_1])
    expect(@dock.rental_log.values).to eq([@patrick, @patrick, @eugene])
  end

  it 'can charge for kayak by hour' do
    @dock.rent(@kayak_1, @patrick)
    @dock.rent(@kayak_2, @patrick)
    @dock.rent(@sup_1, @eugene)

    @kayak_1.add_hour
    @kayak_1.add_hour

    expected = {
      :card_number => "4242424242424242",
      :amount => 40
    }

    expect(@dock.charge(@kayak_1)).to eq(expected)
  end

  it 'can charge for paddle boards by hour' do
    @dock.rent(@kayak_1, @patrick)
    @dock.rent(@kayak_2, @patrick)
    @dock.rent(@sup_1, @eugene)

    @sup_1.add_hour
    @sup_1.add_hour
    @sup_1.add_hour
  end
end