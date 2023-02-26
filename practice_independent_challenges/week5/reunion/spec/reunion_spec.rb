require 'rspec'
require './lib/activity'
require './lib/reunion'

RSpec.describe Reunion do
  before(:each) do
    @reunion = Reunion.new("1406 BE")
    @activity_1 = Activity.new("Brunch")
    @activity_2 = Activity.new("Drinks")
  end

  it 'exists with a name and no activities' do
    expect(@reunion).to be_a Reunion
    expect(@reunion.name).to eq("1406 BE")
    expect(@reunion.activities).to eq([])
  end

  it 'can add an activitiy' do
    @reunion.add_activity(@activity_1)

    expect(@reunion.name).to eq("1406 BE")
    expect(@reunion.activities).to eq([@activity_1])
  end

  it 'can calculate total cost after brunch' do
    @activity_1.add_participant("Maria", 20)
    @activity_1.add_participant("Luther", 40)

    @reunion.add_activity(@activity_1)

    expect(@activity_1).to be_a Activity
    expect(@activity_1.participants).to eq({"Maria" => 20, "Luther" => 40})
    expect(@reunion.total_cost).to eq(60)
  end

  it 'can calculate running total cost after drinks' do
    @activity_1.add_participant("Maria", 20)
    @activity_1.add_participant("Luther", 40)
    @reunion.add_activity(@activity_1)
    expect(@reunion.total_cost).to eq(60)

    @activity_2.add_participant("Maria", 60)
    @activity_2.add_participant("Luther", 60)
    @activity_2.add_participant("Louis", 0)

    @reunion.add_activity(@activity_2)

    expect(@reunion.total_cost).to eq(180)
  end
end