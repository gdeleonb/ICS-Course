# We divide by 60 to get into minutes, 60 for hours, 24 for days, and 365.25
# for years since we don't know how many leap years would be in it.

puts 'Chris Pine was ' + (1160000000/(60*60*24*365.25)).to_s + ' years old when he wrote this book.'
