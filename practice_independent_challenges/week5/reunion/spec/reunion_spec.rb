require 'rspec'
require './lib/activity'
require './lib/reunion'

RSpec.describe Reunion do
  before(:each) do
    @reunion = Reunion.new("1406 BE") 
  end

  it 'exists with a name and no activities' do
    expect(@reunion).to be_a Reunion
    expect(@reunion.name).to eq("1406 BE")
    expect(@reunion.activities).to eq([])
  end
end