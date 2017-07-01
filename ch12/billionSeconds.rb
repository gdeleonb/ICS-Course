# Number of days per month vary, so a hash comes in handy to map them.
months = {1 => 31, 3 => 31, 5 => 31, 7 => 31, 8 => 31, 10 => 31, 12 => 31, 4 => 30, 6 => 30, 9 => 30, 11 => 30, 2 => 28}
# Mine is 1997, 3, 1, 13, 30

# Getting the year is pretty simple, only constraint is a year less than 1
puts "Hello there! What year were you born in?"
year = gets.chomp.to_i
while year < 1
  puts "Please enter a valid year value."
  year = gets.chomp.to_i
end

# Constrains for month are < 1 and > 12
puts "How about month? Please use the number!"
month = gets.chomp.to_i
while month < 1 || month > 12
  puts "Please enter a valid month value."
  month = gets.chomp.to_i
end

# Here's where it gets interesting. February sometimes has 29 days, so after
# our basic check we have to see if that particular year was a leap year.
puts "Day?"
day = gets.chomp.to_i
while day < 1 || day > months[month]
  if month == 2 && (year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)) && day == 29
    break
  end
  puts "Please enter a valid day value."
  day = gets.chomp.to_i
end

# These are here in case you actually know the hour, minute, and second
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

# Now we just create our Time instance for our birthday, and return it with
# the billion second mark
bd = Time.new(year, month, day, hour, minute, second)
puts
puts "Alright! You were born on #{bd}, and will be one BILLION seconds old on #{bd + 10**9}"
