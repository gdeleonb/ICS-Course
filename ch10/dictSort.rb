# Comments throughout

# As with the simpler sort, this is just our wrapper method
def dictSort(array)
  rDictSort(array, [])
end

# Recursive method as before
def rDictSort(unsorted, sorted)
  if unsorted.length == 0 # Base case for when done
    return sorted
  end
  # Recursive case. Sadly a bit more complicated than the last one since we
  # can't depend on the built in min method

  # We start by grabbing a value out from the array
  smallest = unsorted.pop
  # And creating a temporary array we'll be using to store values as we find
  # a smaller one
  temp = []

  # We'll be using a loop here to go through the array and find the dict min
  unsorted.each do |w|
    # Our check will use .downcase to make sure we get the true min
    if w.downcase < smallest.downcase
      # When we find one smaller than the current smallest, we add the old
      # one to temp
      temp.push(smallest)
      # And set smallest to be the new one
      smallest = w
    else
      # Otherwise, we just put the new word in temp
      temp.push(w)
    end
  end

  # At the end of the loop we'll have the smallest item in the unsorted array
  # Now that we have it, we add it to our sorted array
  sorted.push(smallest)
  # And call our recursive method on temp and sorted
  rDictSort(temp, sorted)
end

# Rest of this is just input collection
words = []
input = nil

puts 'Please enter the desired words (one per line), and press enter when finished:'

while input != ''
	input = gets.chomp
	words.push(input)
end
words.pop

sorted = dictSort(words)
puts 'Here are your sorted words:'
puts sorted
