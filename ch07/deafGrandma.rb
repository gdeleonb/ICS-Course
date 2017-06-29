=begin
For this one we start with just a greeting to get us started, and then jump
into the loop. For better understanding, I'll be documenting inside of it as
I go through the different conditions we were asked to account for.
=end

puts 'COME GIVE GRANNY A KISS!'
=begin
We use 'true' as our condition because the stop condition depends on an input,
and getting that to work cleanly is annoying
=end
while true
  # First thing we do when we start our loop is get our response:
  response = gets.chomp
  # If we said 'BYE' in all caps, then she says bye and we 'break' the loop:
	if response == 'BYE'
    puts 'OK SONNY, TALK AGAIN SOON'
		break
  # The next one is if we didn't 'shout':
	elsif response != response.upcase
    puts 'HUH?! SPEAK UP SONNY!'
  # The 'else' is only accessed when we didn't say 'BYE' and didn't use
  # lowercase letters. This means that we shouted so she thinks she heard us,
  # but didn't:
	else
		puts 'NO, NOT SINCE ' + (1930 + rand(21)).to_s + '!'
	end
end

=begin
Worth noting that this is the easiest way to get a random year between
1930 and 1950. rand(max) returns a random integer that is greater than or
equal to 0, and smaller than the max argument we gave it. In this case we
start with 1930 (our lower end), and add onto it a random number between
0 and 20.
=end
