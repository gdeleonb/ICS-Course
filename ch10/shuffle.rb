# As with the others, we start with our wrapper function
def shuffle(array)
  rShuffle(array, [])
end


def rShuffle(unshuffled, shuffled)
  if unshuffled.length <= 0 # Base case
    return shuffled
  end

  rIndex = rand(unshuffled.length) # Grab a random index
  shuffled.push unshuffled[rIndex] # Add the value at it to the shuffled array
  unshuffled.delete_at(rIndex) # Delete it from the unshuffled one

  rShuffle(unshuffled, shuffled) # Call the function again
end

# The rest is input collection
words = []
input = nil

puts 'Please enter the desired words (one per line), and press enter when finished:'

while input != ''
	input = gets.chomp
	words.push(input)
end
words.pop

shuffled = shuffle(words)
puts 'Here are your sorted words:'
puts shuffled
