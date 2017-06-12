# A lot of people have trouble with this one. For loops, the easiest way to
# think about it is to identify what are the parts that you can have the loop
# take care of for you, and what are the outliers you'll have to hard code. For
# this one, most of the lyrics can be printed out within the loop, and only the
# last four lines have to be hardcoded.

beers = 99

while beers > 2
	puts beers.to_s + ' bottels of beer on the wall, ' + beers.to_s + ' bottles of beer!'
  beers = beers - 1
	puts 'Take one down and pass it around, ' + beers.to_s + ' bottles of beer on the wall!'
	puts
end

puts "2 bottles of beer on the wall, 2 bottles of beer!"
puts "Take one down, pass it around, 1 bottle of beer on the wall!"
puts
puts "1 bottle of beer on the wall, 1 bottle of beer!"
puts "Take one down, pass it around, no more bottles of beer on the wall!"
puts
puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Go to the store and buy some more, 99 bottles of beer on the wall."
