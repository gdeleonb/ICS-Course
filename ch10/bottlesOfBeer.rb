# Start by just copy pasting englishNumber(num) straight over. To avoid repeated
# scrolling, rest of the explanation is below that.

def englishNumber(num)
  if num < 0
    return 'Please enter a number that isn\'t negative.'
  elsif num == 0
    return 'zero'
  end

  numString = ''

  onesPlace = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tensPlace = ['ten' ,'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

  left = num

  write = left/1000000000000
  left = left - write*1000000000000

  if write > 0
    trillions = englishNumber(write)
    numString = numString + trillions + ' trillion'
    if left > 0
      numString = numString + ' '
    end
  end

  write = left/1000000000
  left = left - write*1000000000

  if write > 0
    trillions = englishNumber(write)
    numString = numString + trillions + ' billion'
    if left > 0
      numString = numString + ' '
    end
  end

  write = left/1000000
  left = left - write*1000000

  if write > 0
    millions = englishNumber(write)
    numString = numString + millions + ' million'
    if left > 0
      numString = numString + ' '
    end
  end

  write = left/1000
  left = left - write*1000

  if write > 0
    thousands = englishNumber(write)
    numString = numString + thousands + ' thousand'
    if left > 0
      numString = numString + ' '
    end
  end

  write = left/100
  left = left - write*100

  if write > 0
    hundreds = englishNumber(write)
    numString = numString + hundreds + ' hundred'
    if left > 0
      numString = numString + ' '
    end
  end

  write = left/10
  left = left - write*10

  if write > 0
    if ((write == 1) and (left > 0))
      numString = numString + teens[left-1]
      left = 0
    else
      numString = numString + tensPlace[write-1]
    end
    if left > 0
      numString = numString + '-'
    end
  end

  write = left
  left = 0

  if write > 0
    numString = numString + onesPlace[write-1]
  end
  numString
end

# This part is kind of unneeded, I added it in to make testing a bit easier.
beers = 0
while beers < 2
  puts 'How many beers are on the wall? You must have at least two!'
  beers = gets.chomp.to_i
end

# Now for the actual code. As before, two and below are special cases, so those
# I typed out manually. For everything above that, we use this loop:
while beers > 2
  # This puts is just to separate the request from the loop, and then each set
  # of lyrics from the next for easier reading.
  puts
  # Start by translating the number of beers into English using englishNumber.
  # Then we print out the first line and decrement our beer count.
  engBeers = englishNumber(beers)
	puts engBeers.capitalize + ' bottles of beer on the wall, ' + engBeers + ' bottles of beer!'
  beers -= 1

  # We translate our new number, and print out the second line.
  engBeers = englishNumber(beers)
	puts 'Take one down and pass it around, ' + engBeers + ' bottles of beer on the wall!'
end

# As said above, the last two sets are unique, so we write them out.
puts "Two bottles of beer on the wall, two bottles of beer!"
puts "Take one down, pass it around, one bottle of beer on the wall!"
puts
puts "One bottle of beer on the wall, one bottle of beer!"
puts "Take one down, pass it around, no more bottles of beer on the wall!"
