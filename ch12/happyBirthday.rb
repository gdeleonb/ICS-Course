# Similar idea for these as for billionSeconds.rb
months = {1 => 31, 3 => 31, 5 => 31, 7 => 31, 8 => 31, 10 => 31, 12 => 31, 4 => 30, 6 => 30, 9 => 30, 11 => 30, 2 => 28}

puts "Hello there! What year were you born in?"
year = gets.chomp.to_i

puts "How about month? Please use the number!"
month = gets.chomp.to_i
while month > 12 || month < 1
  puts "Please enter a valid month value."
  month = gets.chomp.to_i
end

puts "Day?"
day = gets.chomp.to_i
while day < 1 || day > months[month]
  if month == 2 && (year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)) && day == 29
    break
  end
  puts "Please enter a valid day value."
  day = gets.chomp.to_i
end

puts "For the rest of these, just put '0' if you don't know."
puts "What hour where you born at? Please use the 24 hour clock!"
hour = gets.chomp.to_i
while hour > 24 || hour < 0
  puts "Please enter a valid hour value."
  hour = gets.chomp.to_i
end

puts "Minute?"
minute = gets.chomp.to_i
while minute > 59 || minute < 0
  puts "Please enter a valid minute value."
  minute = gets.chomp.to_i
end

puts "Second?"
second = gets.chomp.to_i
while second > 59 || second < 0
  puts "Please enter a valid second value."
  second = gets.chomp.to_i
end

# We calculate the birthday and current time
bd = Time.new(year, month, day, hour, minute, second)
now = Time.now

# Subtracting two Time instances returns the difference in seconds. So we can
# get the years by dividing into minutes, hours, days, and years.
age = (((now - bd) / 60 / 60 / 24 / 365)

# Finally, we print out a "SPANK!" for each year of age.
while age > 0
  puts "SPANK!"
  age -= 1
end
