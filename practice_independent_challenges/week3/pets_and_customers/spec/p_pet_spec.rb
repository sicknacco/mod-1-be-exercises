require 'rspec'
require './lib/p_pet'

RSpec.describe Pet do
  before(:each) do
    @samson = Pet.new({name: "Samson", type: :dog, age: 3})
  end

  it 'exists' do
    expect(@samson).to be_instance_of(Pet)
  end

  it 'pet has details' do
    expect(@samson.name).to eq("Samson")
    expect(@samson.type).to eq(:dog)
    expect(@samson.age).to eq(3)
  end

  it 'is not fed by default' do
    expect(@samson.fed?).to eq(false)
  end

  it 'can be fed' do
    @samson.feed
    expect(@samson.fed?).to eq(true)
  end
end