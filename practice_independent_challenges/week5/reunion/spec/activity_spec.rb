require 'rspec'
require './lib/activity'

RSpec.describe do
  before(:each) do
    @activity = Activity.new("Brunch")
  end

  it 'exists' do
    expect(@activity).to be_a Activity
  end

  it 'activity has a name' do
    expect(@activity.name).to eq("Brunch")
  end

  it 'starts with no participants' do
    expect(@activity.participants).to eq({})
  end
end