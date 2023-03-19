class Unicorn
  attr_reader :name,
              :color

  def initialize(name, color = 'silver')
    @name = name
    @color = color
  end

  def silver?
    color == 'silver'
  end

  def say(say_what)
    "**;* #{say_what} **;*"
  end
end