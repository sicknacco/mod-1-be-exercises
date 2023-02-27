require 'rspec'
require './lib/photograph'
require './lib/artist'

RSpec.describe Artist do
  before(:each) do
    @attributes = {
      id: "2",
      name: "Ansel Adams",
      born: "1902",
      died: "1984",
      country: "United States"
    }
    @artist = Artist.new(@attributes)
  end

  it 'exists' do
    expect(@artist).to be_a Artist
  end
end