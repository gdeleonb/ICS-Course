# This one is very similar to the standard deafGrandma, so I'll only document
# the changes we made to get it to work with the three 'BYE's

# Main thing is the creation of this variable which keeps track of how many
# times we've said 'BYE' in a row (that part is important)
counter = 0
puts 'COME GIVE GRANNY A KISS!'

while true
  response = gets.chomp
	if response == 'BYE'
    # Here we increment our variable whenever we get a 'BYE'
    counter = counter + 1
    # Then we check if that's the third. If it is, we 'break'
    if counter == 3
      puts 'OK SONNY, TALK AGAIN SOON'
      break
    # If it's not the third one, then she pretends she didn't hear us and we
    # loop again
		else
      puts 'WHAT WAS THAT?!'
    end
	elsif response != response.upcase
    puts 'HUH?! SPEAK UP SONNY!'
    # Small change here. If we're in here then we didn't say 'BYE', so our
    # counter must reset
    counter = 0
	else
		puts 'NO, NOT SINCE ' + (1930 + rand(21)).to_s + '!'
    # As in the previous, we reset
    counter = 0
	end
end
