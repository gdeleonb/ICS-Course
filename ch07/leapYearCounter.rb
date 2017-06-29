=begin
Main thing to keep in mind for this one is the checks to see if a given year
was a leap year. As seen below, those are that the year be divisible by 400
(checked for using modulo), or that it be divisible by 4 AND not divisible
by 100. Beyond that the code isn't too bad. We just get our boundaries, and
loop through the years in between, printing out the ones that pass the checks
=end

puts 'Please enter the lower limit of the desired range:'
low_end = gets.chomp.to_i
puts 'Please enter the upper limit of the desired range:'
high_end = gets.chomp.to_i
puts 'The leap years between the year ' + low_end.to_s + ' and the year ' + high_end.to_s + ' are:'

year = low_end

while year <= high_end
  if year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)
		puts year
  end
	year += 1
end
