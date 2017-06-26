# Comments for this one will be throughout the code

# We start with a simple wrapper method that calls the recursive function with
# the proper arguments
def sort(array)
  rSort(array, [])
end

# Here's where the heavy lifting is
def rSort(unsorted, sorted)
  # This is our base case. When there is nothing left to sort, we return the
  # sorted array
  if unsorted.length == 0
    return sorted
  end
  # This is the recursive case, what we do in all other cases:

  # We find the smallest value
  smallest = unsorted.min
  # Find its index
  sIndex = unsorted.find_index(smallest)
  # Delete it from the unsorted array
  unsorted.delete_at(sIndex)
  # And add it to the sorted
  sorted.push(smallest)
  # Finally, we call our recursive method with the modified arrays
  rSort(unsorted, sorted)
end

# Everything from here on down is just input collection
words = []
input = nil

puts 'Please enter the desired words (one per line), and press enter when finished:'

while input != ''
	input = gets.chomp
	words.push(input)
end
words.pop

sorted = sort(words)
puts 'Here are your sorted words:'
puts sorted
