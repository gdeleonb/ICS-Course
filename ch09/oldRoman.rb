# These two are definitely tricky. I start off by making sure that the given
# number can actually be translated, that is, that it is greater than 0. After
# that, I use modulo to get rid of anything previous roman numerals would've
# accounted for, and divide by the number represented by the given numeral to
# see how many of them I will need in my final answer. To get that final answer
# I just calculate how many of each I need, and add them in the proper order.
# This works because multiplying a string by x just returns a string with x of
# the original string in it, and because any letter we don't use will have a
# variable value of 0 (since integer divison always rounds down).
#
# And yeah, the divide by 1 is completely unnecessary, but I thought it was
# more readable with it included.

def roman_num(num)
  if num <= 0
    puts 'Number must be larger than 0.'
    return
  end

	ms = num          / 1000
	ds = (num % 1000) /  500
	cs = (num % 500)  /  100
	ls = (num % 100)  /   50
	xs = (num % 50)   /   10
	vs = (num % 10)   /    5
	is = (num % 5)    /    1
	return 'M'*ms + 'D'*ds + 'C'*cs + 'L'*ls + 'X'*xs + 'V'*vs + 'I'*is
end
puts 'Please enter the number you wish translated into Old-School Roman Numerals:'
num = gets.chomp.to_i
puts
puts num.to_s + ' in Old-School Roman Numerals is: ' + roman_num(num)
