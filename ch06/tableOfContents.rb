=begin
This once can be really annoying until you realize how the '.center',
'.ljust', and '.rjust' work. Once you have that though, it's a simple matter
of making sure they add up to the same number and messing around with the
spaces a bit.
=end

puts 'Table of Contents'.center(50)
puts
puts 'Chapter 1: Getting Started'.ljust(30) + 'page  1'.rjust(20)
puts 'Chapter 2: Numbers'.ljust(30) + 'page  9'.rjust(20)
puts 'Chapter 3: Letters'.ljust(30) + 'page 13'.rjust(20)
