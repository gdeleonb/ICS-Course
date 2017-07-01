=begin
Before anything else, credit goes to @madhekare from the Summer '17 class for
the base idea. It was definitely an improvement over my previous
implementation, so I've updated this with some tweaks and her permission.

First off, we have a short check to make sure we have a valid input. Then we
initialize our two arrays of integers and roman numerals, our string, and
store our input in the variable 'remainder' (reason for name will become
clear).

The key part is line 38, so let's take a close look at that line:
 - `.zip` is one that 'zips' together two arrays, creating an array made up
    of arrays, with the nth array containing the nth entries for each array
 - `.each` acts like a for loop, for every item the array it is called on,
    it executes the 'do' block. Since there's two items in each element of
    our array (remember, it's an array of arrays that each contain 2 items!),
    we can access those two directly by giving the block two arguments
    instead of just one!

Inside this block, we calculate how many times this roman numeral should
appear in our final string, add them to it (if it's zero nothing will be
added!), and use modulo to find the remainder once we've represented this
part using roman numerals.

At the end of our function, we just call our string to return it.
=end

def romanize(input)
  if input <= 0 || input > 3000
    puts 'Please give a number between 1 and 3000.'
    return -1
  end

  ints = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
  romNums = ["M","CM","D","CD","C","XC","L","XL","X","IX","V","IV","I"]
  string = ''
  remainder = input

  ints.zip(romNums).each do |int, romNum|
    quotient = remainder / int
    string += romNum * quotient
    remainder = remainder % int
  end

  string
end

while true
  puts 'What number do you want translated? It must be between 1 and 3000!'
  number = gets.chomp
  if number == 'end'
    break
  else
    romNum = romanize(number.to_i)
    if romNum != -1
      puts number + ' in Modern Roman Numerals is: ' + romanize(number.to_i)
    end
  end
end
