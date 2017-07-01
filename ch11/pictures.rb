=begin
This section is just getting the information we'll need to move the files.
That includes the extension, source address, destination address, and
batch name.
=end
puts "What file extension are these?"
ext = gets.chomp

puts "Please provide the absolute address of the pictures to be moved."
srcAddr = gets.chomp + '/*.{'+ext+','+ext.upcase+'}'
pic_names = Dir[srcAddr]

puts "Please provide the absolute address where you would like to move them to:"
dstAddr = gets.chomp
Dir.chdir(dstAddr)

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files:  "

=begin
This function is just a handy way to return the amount of zeros we have to
padd our index with so that they all have the same number of digits.
=end
def zeroPadding(total, current)
  "0"*(total.to_s.size - current.to_s.size)
end

=begin
I used the each_with_index instead of just each to avoid having to keep
track of the index with an extra variable. Doesn't make too much of a
difference though.
=end
pic_names.each_with_index do |name, index|
	print '.' # Progress bar
	new_name = "#{batch_name}" + zeroPadding(pic_names.length, pic_number) + "#{index}." + ext.downcase

  if File.exists?(new_name) # This is the key part, the check for overwriting
    puts
    puts "A file by the name of #{new_name} already exists. Do you want to overwrite?"
    reply = gets.chomp.downcase
    while reply != 'yes' || reply != 'no'
      # We want to make sure the answer is clear
      puts "Please reply 'yes' or 'no'."
      reply = gets.chomp.downcase
    end
    if reply == 'yes'
      # If it's a yes, we print out our progress bar again and move on
      puts "Overwriting file..."
      print '.'*pic_number
    elsif reply == 'no'
      # If it's a no, we communicate the abort and exit
      puts "Aborting moving process."
      exit
    end
  end
=begin
  Only way we get here is if the file didn't already exist or we chose to
  override, so we can just rename it at this point.

  A thing I'd like to point out is that this works properly because the name
  variable is the full path, and the new_name gets written into the
  directory we're in. So say we're cleaning up our Desktop of jpgs. Then
  our extension is 'jpg' source is '/Users/admin/Desktop', destination
  is '/Users/admin/Desktop/pictures', and batch_name is 'pic' with a total
  of say 34 pictures. This means that if our first file is called
  'cat.jpg', it would actually be renamed from
  '/Users/admin/Desktop/cat.jpg' to '/Users/admin/Desktop/pictures/pic01'.
=end
  File.rename name, new_name
end

puts
puts 'Done!'
