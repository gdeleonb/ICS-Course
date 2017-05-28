# This one is simple enough, just do seconds times minutes times hours times
# days, where days is days in a year times number of years, plus leap days plus
# days since my birthday. If you really really wanted to, you could count from
# the time of day you were born, but to be honest that seems a little excessive.

puts 'I am ' + (60 * 60 * 24 * (365 * 20 + 5 + 88)).to_s + ' seconds old.'
