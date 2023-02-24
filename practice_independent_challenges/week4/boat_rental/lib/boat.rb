class Boat
  attr_reader :type,
              :price_per_hour,
              :hours_rented

  def initialize(type, pph)
    @type = type
    @price_per_hour = pph
    @hours_rented = 0
  end

  def add_hour
    @hours_rented +=1
  end
end