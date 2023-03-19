require 'rspec'
require './lib/player'
require './lib/team'

RSpec.describe Team do
  before(:each) do
    @team = Team.new("France")
    @mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    @pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
  end

  it 'exists and has a country' do
    expect(@team).to be_a(Team)
    expect(@team.country).to eq("France")
  end

  it 'starts as not eliminated' do
    expect(@team.eliminated?).to eq(false)
  end
  
  it 'can eliminate a team' do
    expect(@team.eliminated?).to eq(false)

    @team.eliminated

    expect(@team.eliminated?).to eq(true)
  end

  it 'starts with no players' do
    expect(@team.players).to eq([])
  end

  it 'can add players and list them' do
    @team.add_player(@mbappe)
    @team.add_player(@pogba)
    
    expect(@team.players).to eq([@mbappe, @pogba])
  end
  
  it 'can list players by position' do
    @team.add_player(@mbappe)
    @team.add_player(@pogba)
    
    expect(@team.players_by_position("midfielder")).to eq([@pogba])
    expect(@team.players_by_position("defender")).to eq([])
    
  end
end