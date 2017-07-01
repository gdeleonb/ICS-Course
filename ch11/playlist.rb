# Copy pasted the shuffle from before
def shuffle(array)
  rShuffle(array, [])
end


def rShuffle(unshuffled, shuffled)
  if unshuffled.length <= 0
    return shuffled
  end

  rIndex = rand(unshuffled.length)
  shuffled.push(unshuffled[rIndex])
  unshuffled.delete_at(rIndex)

  rShuffle(unshuffled, shuffled)
end

# Remember, the path is specific to where you put the music, I made an input:
puts 'Please specifiy the path to where your music is stored:'
src = gets.chomp
puts 'Now please specifiy the file extension of the songs:'
ext = gets.chomp

# The /**/*.ext tells it to recursively find everything under the given
# directory that matches the specified extension.
songs = shuffle(Dir[src + '/**/*.' + ext])

# Now we just do a simple loop that writes a playlist
File.open 'playlist.m3u', 'w' do |f|
  songs.each do |mp3|
    f.write mp3+"\n"
  end
end

puts 'Done!'
