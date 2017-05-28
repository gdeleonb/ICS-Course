# Depending on the decade, there's either two or three leap years in it. So we
# have minutes times hours times days, where days has a +2 or +3 for each
# option.

puts 'There are ' + (60 * 24 * (365 * 10 + 2)).to_s + ' or ' + (60 * 24 * (365 * 10 + 3)).to_s + ' minutes in a decade, depending on the number of leap years.'
