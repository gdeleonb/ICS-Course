birthdays = {}

File.readlines("birthdays.txt").each do |line|
  name, date, year = line.split(',')
  birthdays[name] = (date + year)[0..10]
end

puts "Hello there! Who's birthday have you forgotten now?"
name = gets.chomp
date = birthdays[name]

if date == nil
  puts "Sorry, I don't have that one..."
else
  puts "#{name}'s birthday falls on: #{date}!"
end
