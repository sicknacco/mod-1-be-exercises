class Contestant
  attr_reader :full_name

  def initialize(contestant)
    @full_name = contestant[:first_name] + " " + contestant[:last_name]
  end
end