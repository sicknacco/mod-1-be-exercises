require 'rspec'
require './lib/player'

RSpec.describe Player do
  before(:each) do
    @player = Player.new({name: "Luka Modric", position: "midfielder"})
  end

  it 'exists and has attribures' do
    expect(@player).to be_a(Player)
    expect(@player.name).to eq("Luka Modric")
    expect(@player.position).to eq("midfielder")
  end
end