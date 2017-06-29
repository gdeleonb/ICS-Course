=begin
For this one, we're dealing with the added difficulty of accounting for new
symbols for the 4s and 9s. To address it, you could do a series of if checks
for each one. However, a good understanding modulo lets you simplify it to
similar format as the oldRoman one, just with a few more lines for the new
symbols, and an extra modulo to account for them in the others.
=end

def romanize(num)
  ms  =  num                    / 1000

  cms =  num  %  1000           /  900
  ds  =  num  %  1000  %  900   /  500
  cds =  num  %   900  %  500   /  400
  cs  =  num  %   500  %  400   /  100

  xcs =  num  %   100           /   90
  ls  =  num  %   100  %   90   /   50
  xls =  num  %    90  %   50   /   40
  xs  =  num  %    50  %   40   /   10

  ixs =  num  %    10           /    9
  vs  =  num  %    10  %    9   /    5
  ivs =  num  %     9  %    5   /    4
  is  =  num  %     5  %    4   /    1

  return 'M'*ms + 'CM'*cms + 'D'*ds + 'CD'*cds + 'C'*cs + 'XC'*xcs + 'L'*ls + 'XL'*xls + 'X'*xs + 'IX'*ixs + 'V'*vs + 'IV'*ivs + 'I'*is
end

puts 'Please enter the number you wish translated into Modern Roman Numerals:'
num = gets.chomp.to_i
puts
puts num.to_s + ' in Modern Roman Numerals is: ' + romanize(num)
