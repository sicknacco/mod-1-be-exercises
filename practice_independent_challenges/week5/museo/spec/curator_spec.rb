require 'spec_helper'

RSpec.describe do
  before(:each) do
    @curator = Curator.new
  end

  it 'exists' do
    expect(@curator).to be_a Curator
  end

  it 'begins with empty photograph array' do
    expect(@curator.photographs).to eq([])
  end
end