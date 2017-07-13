=begin
For this one I used a global variable to keep track of our depth, incrementing
it when we went a level in, and decrementing when we went a level out. For the
indentation I just took advantage of string interpolations' ability to evaluate
what you give it before putting it in string format to calculate the
indentation for each puts.
=end

$depth = 0
def betterLog(description, &block)
  puts "#{'  ' * $depth}Beginning #{description}..."
  $depth += 1
  returnValue = block.call
  $depth -= 1
  puts "#{'  ' * $depth}... #{description} finished, returning: #{returnValue}"
end

betterLog 'outer block' do
  betterLog 'middle block' do
    betterLog 'inner block' do
      rand(2**64)
    end
    'blahblahblahblah'.upcase
  end
  'This statement is false' == false
end
