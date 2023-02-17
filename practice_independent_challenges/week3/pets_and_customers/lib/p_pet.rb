class Pet
  attr_reader :name,
              :type,
              :age

  def initialize(details)
    @name = details[:name]
    @type = details[:type]
    @age = details[:age]
    @fed = false
  end
  
  def fed?
    @fed
  end
  
  def feed
    @fed = true
  end

  
end