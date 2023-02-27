require 'spec_helper'

RSpec.describe do
  before(:each) do
    @curator = Curator.new
  end

  it 'exists' do
    expect(@curator).to be_a Curator
  end

  xit 'begins with empty photograph array' do
    epect(@curator.photographs).to eq([])
  end
end