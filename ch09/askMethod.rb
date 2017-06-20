# It's really just the method that I'll be checking over. As with most of our
# loops, I used a simple 'while true' here. The method begins by asking the
# question and getting the response. It returns 'true' or 'false' if the
# response is either 'yes' or 'no', and otherwise asks that you reply one of
# the two before looping again.

def ask(question)
	while true
		puts question
		reply = gets.chomp.downcase
		if reply == 'yes'
			return true
    elsif reply == 'no'
			return false
		else
      puts 'Please answer "yes" or "no".'
    end
	end
end

puts 'Hello, and thank you for taking our survey.'
puts
wets_bed = ask 'Do you wet the bed?'
puts
puts 'Thank you for taking our survey.'
puts 'From your response, we\'ve confirmed that you are:'

if wets_bed
  puts 'A very honest person!'
else
  puts 'Dishonest about your bed-wetting activities. What a shame.'
end
