require 'spec_helper'

RSpec.describe Dock do
  before(:each) do
    @dock = Dock.new("The Rowing Dock", 3)
  end

  it 'exists' do
    expect(@dock).to be_a(Dock)
  end
end