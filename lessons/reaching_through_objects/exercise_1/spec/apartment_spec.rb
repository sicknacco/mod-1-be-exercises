require 'rspec'
require './lib/room'
require './lib/apartment'

RSpec.describe Apartment do
  it 'exists' do
    apartment = Apartment.new

    expect(apartment).to be_a(Apartment)
  end

  it 'can tell if it is rented' do
    apartment = Apartment.new

    expect(apartment.is_rented?).to eq(false)
    
    apartment.rent
    
    expect(apartment.is_rented?).to eq(true)
  end

 it 'can have 4 rooms and list them' do
    apartment = Apartment.new
    bathroom = Room.new("bathroom")

    apartment.add_room(bathroom)
    apartment.add_room(Room.new("laundry"))
    apartment.add_room(Room.new("kitchen"))
    apartment.add_room(Room.new("bedroom"))

    # expect(apartment.rooms).to eq(["bathroom", "laundry", "kitchen", "bedroom"])
    apartment.rooms

    expect(apartment.list_rooms_by_name_alphabetically).to eq(["bathroom", "bedroom", "kitchen", "laundry"])
 end

end