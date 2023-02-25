# ./lib/event_manager.rb
require "csv"
puts "EventManager initialized."

## Reads the file contents
# contents = File.read "event_attendees.csv"
# puts contents

## Read file line by line
# lines = File.readlines "event_attendees.csv"
# lines.each do |line|
#   puts line
# end

# # Read line by line with split arrays
# lines = File.readlines "event_attendees.csv"
# lines.each do |line|
#   columns = line.split(",")
#   p columns
# end

## Display the first name of all attendees
# lines = File.readlines "event_attendees.csv"
# lines.each do |line|
#   columns = line.split(",")
#   name = columns[2]
#   puts name
# end

##Skipping the Header Row
lines = File.readlines "event_attendees.csv"
lines.each do |line|
  next if line == " ,RegDate,first_Name,last_Name,Email_Address,HomePhone,Street,City,State,Zipcode\n"
  columns = line.split(",")
  name = columns[2]
  puts name
end

##Alternate Header Row skip. By index. This is better in case the header info chages.
lines = File.readlines "event_attendees.csv"
row_index = 0
lines.each do |line|
  row_index = row_index + 1
  next if row_index == 1
  columns = line.split(",")
  name = columns[2]
  puts name
end

lines = File.readlines "event_attendees.csv"
lines.each_with_index do |line,index|
  next if index == 0
  columns = line.split(",")
  name = columns[2]
  puts name
end