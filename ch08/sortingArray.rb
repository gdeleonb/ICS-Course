=begin
We start off by creating our array of words, and using a 'puts' to request
the input. Then we have our loop, and use the previous input as our check to
end the loop. In it we just get a new input, and add it to the list. Doing it
this way will mean that we have an empty string in our array though, so we
just take it out before sorting
=end

words = []
input = nil

puts 'Please enter the desired words (one per line), and press enter when finished:'

while input != ''
	input = gets.chomp
	words.push input
end

words.pop

puts words.sort
