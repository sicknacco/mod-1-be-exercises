require 'rspec'
require './lib/dish'

RSpec.describe Dish do
  before(:each) do
    @dish = Dish.new("Couscous Salad", :appetizer)
  end

  it 'exists and has attributes' do
    expect(@dish).to be_a (Dish)
    expect(@dish.name).to eq("Couscous Salad")
    expect(@dish.category).to eq(:appetizer)
  end
end