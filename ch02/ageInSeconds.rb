=begin
This one is a little odd, but not that bad overall. We start by calculating
the number of days since our birth. That's 365 times our age, plus the number
of leap days we've lived through, plus the number of days since our birthday.
Then, we just multiply by 24 to get that in hours, 60 for minutes, and another
60 for seconds.
=end

puts 'I am ' + ((365 * 20 + 5 + 88) * 24 * 60 * 60).to_s + ' seconds old.'
