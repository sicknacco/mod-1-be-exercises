class Apartment
  attr_reader :rooms
  def initialize
    @rented = false
    @rooms = []
  end

  def is_rented?
    @rented
  end

  def rent
    @rented = true
  end

  def add_room(room_name)
    @rooms << room_name
  end

  def list_rooms_by_name_alphabetically
    @rooms.sort #not correct
  end
end