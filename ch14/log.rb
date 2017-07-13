=begin
The method itself isn't too bad once you wrap your head around the format for
these. Not too much to explain here, it's just a puts before, and a puts after.
=end

def log(description, &block)
  puts "Beginning #{description}..."
  returnValue = block.call
  puts "... #{description} finished, returning: #{returnValue}"
end

log 'outer block' do
  log 'middle block' do
    log 'inner block' do
      rand(2**64)
    end
    'blahblahblahblah'.upcase
  end
  'This statement is false' == false
end
