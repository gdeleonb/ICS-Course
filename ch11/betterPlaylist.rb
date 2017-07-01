=begin
My approach was to treat it like a deck of cards. I split it in two, shuffle
it in place, and call the function again on each half. When it gets down to a
single 'card', we send it back up. On all other levels, we get that call back,
and put it back together in a random order. We end by just calling the deck,
which in Ruby returns it.
=end

def mix(array)
  if array.length < 2
    return array
  end
  len = array.length
  bottom = array[0..len/2].shuffle!
  top = array[len/2..len].shuffle!

  bottom = mix(bottom)
  top = mix(top)

  cut = rand(2)
  deck = []
  if cut == 0
    deck.push(bottom).push(top)
  else
    deck.push(top).push(bottom)
  end

  deck
end

# Remember, the path is specific to where you put the music, I made an input:
puts 'Please specifiy the path to where your music is stored:'
src = gets.chomp
puts 'Now please specifiy the file extension of the songs:'
ext = gets.chomp

# The /**/*.ext tells it to recursively find everything under the given
# directory that matches the specified extension.
songs = mix(Dir[src + '/**/*.' + ext])

# Now we just do a simple loop that writes a playlist
File.open 'playlist.m3u', 'w' do |f|
  songs.each do |mp3|
    f.write mp3+"\n"
  end
end

puts 'Done!'
