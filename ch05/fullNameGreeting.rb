# This one is relatively simple so long as you make sure to use 'gets.chomp'
# instead of just 'gets'. If you want to use apostrophes in strings, you'll want
# to either use double quotes to mark the string, or escape it using a
# backslash. I demonstrate both below.

puts "What's your first name?"
firstName = gets.chomp
puts "What's your middle name?"
middleName = gets.chomp
puts "What's your last name?"
lastName = gets.chomp

fullName = firstName + ' ' + middleName + ' ' + lastName

puts 'Hello, ' + fullName + '! It\'s very nice to meet you!'
