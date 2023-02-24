class Dock
  attr_reader :name,
              :max_rental_time,
              :rental_log

  def initialize(name, max_rental_time)
    @name = name
    @max_rental_time = 3
    @rental_log = {}
  end

  def rent(boat, renter)
    @rental_log[boat] = renter
  end

  def charge(boat)
    max = (boat.price_per_hour * @max_rental_time)
    charged = Hash.new(0)
    charged[:card_number] = @rental_log[boat].credit_card_number
    charged[:amount] = boat.price_per_hour * boat.hours_rented
    if charged[:amount] >= max
      charged[:amount] = max
    end
    charged
  end
end