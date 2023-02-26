class Activity
  attr_reader :name,
              :participants,
              :total_cost

  def initialize(name)
    @name = name
    @participants = {}
    @total_cost = 0
  end

  def add_participant(person, amt_paid)
    @total_cost += amt_paid
    @participants[person] = amt_paid
  end

  def split
    @total_cost / @participants.count
  end

  def owed
    owed = {}
    @participants.each do |person, amt_paid|
      owed[person] = (split - amt_paid)
    end
    owed
  end
end