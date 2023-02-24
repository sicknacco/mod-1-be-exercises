require 'spec_helper'

RSpec.describe Dock do
  before(:each) do
    @dock = Dock.new("The Rowing Dock", 3)
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
end