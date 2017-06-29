=begin
Depending on the decade, there's either two or three leap years in it. So we
have minutes times hours times days, where days has a +2 or +3 for each
option.
=end

puts 'The number of minutes in a decade depends on the number of leap years in said decade.'
puts 'If there are two leap years, then we have ' + ((365 * 10 + 2) * 60 * 24).to_s + ' minutes.'
puts 'If there are three leap years, then we have ' + ((365 * 10 + 3) * 60 * 24).to_s + ' minutes.'
puts 'For a random decade where we don\'t know how many there are, we can estimate it at ' + ((365.25 * 10) * 60 * 24).to_s + ' minutes.'
