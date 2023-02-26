require 'rspec'
require './lib/photograph'
require './lib/artist'

RSpec.describe Photograph do
  before(:each) do
    @photograph = Photograph.new(attributes)
  end

  it 'exists' do
    expect(@photograph).to be_a Photograph
  end
end