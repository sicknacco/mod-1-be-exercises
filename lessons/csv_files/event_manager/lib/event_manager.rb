# ./lib/event_manager.rb
require "csv"
puts "EventManager initialized."

# # Reads the file contents
# contents = File.read "event_attendees.csv"
# puts contents

# # Read file line by line
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
# lines = File.readlines "event_attendees.csv"
# lines.each do |line|
#   next if line == " ,RegDate,first_Name,last_Name,Email_Address,HomePhone,Street,City,State,Zipcode\n"
#   columns = line.split(",")
#   name = columns[2]
#   puts name
# end

##Alternate Header Row skip. By index. This is better in case the header info chages.
# lines = File.readlines "event_attendees.csv"
# row_index = 0
# lines.each do |line|
#   row_index = row_index + 1
#   next if row_index == 1
#   columns = line.split(",")
#   name = columns[2]
#   puts name
# end

## Simpler version of the above. uses the each_with_index enumerable
# lines = File.readlines "event_attendees.csv"
# lines.each_with_index do |line,index|
#   next if index == 0
#   columns = line.split(",")
#   name = columns[2]
#   puts name
# end

### !!!!!!!!!!!
# #Switching over to use the CSV Library
# contents = CSV.open "event_attendees.csv", headers: true   ##same as using () ("event_attendees.csv", headers: true)
# contents.each do |row|
#   name = row[2]
#   puts name
# end

##Accessing Columns by their names - converts the header names to symbols. easier to access data
# contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
# contents.each do |row|
#   name = row[:first_name]
#   puts name
# end

##Displaying zip codes of all attendees
# contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
# contents.each do |row|
#   name = row[:first_name]
#   zipcode = row[:zipcode]
#   puts "#{name} #{zipcode}"
# end

##Cleaning up zip codes. Some are missing information
## Data was likely stored as an integer and not as text. Causing leading 0s to be removed.
## We'll pad the front with 0s.
## Use 00000 for missing zipcodes

# if the zip code is exactly five digits, assume that it is ok
# if the zip code is more than 5 digits, truncate it to the first 5 digits
# if the zip code is less than 5 digits, add zeros to the front until it becomes five digits

#String#length - returns the length of the string.
#String#rjust - to pad the string with zeros.
#String#slice - to create sub-strings either through the slice method or the array-like notation []

##Adds 0s to the zip codes
# contents = CSV.open 'event_attendees.csv', headers: true, header_converters: :symbol

# contents.each do |row|
#   name = row[:first_name]
#   zipcode = row[:zipcode]

#   if zipcode.length < 5
#     zipcode = zipcode.rjust 5, "0"
#   elsif zipcode.length > 5
#     zipcode = zipcode[0..4] ##This takes the first 5 elements
#   end

#   puts "#{name} #{zipcode}"
# end

##Handling missing zip codes
##There was nil instead of an empty string. to account for that do the following
# contents = CSV.open 'event_attendees.csv', headers: true, header_converters: :symbol

# contents.each do |row|
#   name = row[:first_name]
#   zipcode = row[:zipcode]

#   if zipcode.nil?
#     zipcode = "00000"
#   elsif zipcode.length < 5
#     zipcode = zipcode.rjust 5, "0"
#   elsif zipcode.length > 5
#     zipcode = zipcode[0..4]
#   end

#   puts "#{name} #{zipcode}"
# end

## Moving clean zip codes to their own method.
contents = CSV.open 'event_attendees.csv', headers: true, header_converters: :symbol

def clean_zipcode(zipcode)
  if zipcode.nil?
    "00000"
  elsif zipcode.length < 5
    zipcode.rjust(5,"0")
  elsif zipcode.length > 5
    zipcode[0..4]
  else
    zipcode
  end
end

contents.each do |row|
  name = row[:first_name]
  zipcode = clean_zipcode(row[:zipcode])

  puts "#{name} #{zipcode}"
end

##To clean up and refactor the clean_zipcode method.
## Use different class methods NillClass#to_s
## String#rjust and  String#slice
def clean_zipcode(zipcode)
  zipcode.to_s.rjust(5,"0")[0..4]
end
#this has bugs....