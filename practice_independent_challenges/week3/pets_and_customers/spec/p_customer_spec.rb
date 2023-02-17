require 'rspec'
require './lib/p_customer'
require './lib/p_pet'

RSpec.describe do
  before(:each) do
    @joel = Customer.new("Joel", 2)
  end

  it 'exists' do
    expect(@joel).to be_instance_of(Customer)
  end

  it 'has details' do
    expect(@joel.name).to eq("Joel")
    expect(@joel.id).to eq(2)
  end

  it 'starts with no pets' do
    expect(@joel.pets).to eq([])
  end

  it 'can adopt pets' do
    @samson = Pet.new({name: "Samson", type: :dog, age: 3})
    @lucy = Pet.new({name: "Lucy", type: :cat, age: 12})

    @joel.adopt(@samson)
    @joel.adopt(@lucy)

    expect(@joel.pets).to eq([@samson, @lucy])
  end

  it 'has an empty beginning balance' do
    expect(@joel.outstanding_balance).to eq(0)
  end

  it 'can be charged' do
    @joel.charge(15)
    @joel.charge(7)

    expect(@joel.outstanding_balance).to eq(22)
  end
end