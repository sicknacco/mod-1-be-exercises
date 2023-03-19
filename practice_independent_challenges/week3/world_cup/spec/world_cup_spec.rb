require 'rspec'
require './lib/player'
require './lib/team'
require './lib/world_cup'

RSpec.describe WorldCup do
  before(:each) do
    @world_cup = WorldCup.new(2018, [])
    @france = Team.new("France")
    @croatia = Team.new("Croatia")
    @mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    @pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
    @modric = Player.new({name: "Luka Modric", position: "midfielder"})
    @vida = Player.new({name: "Domagoj Vida", position: "defender"})
  end

  it 'exists and has attributes' do
    expect(@world_cup).to be_a(WorldCup)
    expect(@world_cup.year).to eq(2018)
    expect(@world_cup.teams).to eq([])
  end
  
  it 'can add teams to world cup' do
    @world_cup.add_team(@france)
    
    expect(@world_cup.teams).to eq([@france])
    
    @world_cup.add_team(@croatia)
    
    expect(@world_cup.year).to eq(2018)
    expect(@world_cup.teams).to eq([@france, @croatia])
  end

  it 'can add players to teams' do
    @france.add_player(@mbappe)
    @france.add_player(@pogba)
    @croatia.add_player(@modric)
    @croatia.add_player(@vida)

    expect(@france.players).to eq([@mbappe, @pogba])
    expect(@croatia.players).to eq([@modric, @vida])
  end

  it 'can list active players by position' do
    @world_cup.add_team(@france)
    @world_cup.add_team(@croatia)
    @france.add_player(@mbappe)
    @france.add_player(@pogba)
    @croatia.add_player(@modric)
    @croatia.add_player(@vida)

    expect(active_players_by_position("midfielder")).to eq([@pogba, @modric])
  end
end