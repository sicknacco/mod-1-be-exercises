# ./lib/event_manager.rb
require "csv"
puts "EventManager initialized."

contents = File.read "event_attendees.csv"
puts contents