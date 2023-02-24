require './lib/dog'
require 'barkable'

max = Dog.new("Max")
puts max.woof

## Describe what each part of the code above did -
# `max` => Became an instance of the dog class
# `Dog` => Class
# `.woof` => Method called on an instance of a class

puts Dog.woof

## Is there any difference between the two methods above? (max.woof and Dog.woof)?

## Un-comment the line of code below, does it work? Why or why not?
# Dog.bark

