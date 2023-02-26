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

  it 'starts with no participants and no cost' do
    expect(@activity.participants).to eq({})
    expect(@activity.total_cost).to eq(0)
  end

  it 'can add participants' do
    @activity.add_participant("Maria", 20)

    expect(@activity.participants).to eq({"Maria" => 20})
    expect(@activity.total_cost).to eq(20)
  end
end