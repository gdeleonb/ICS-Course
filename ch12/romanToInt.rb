def romanToInt(rom)
  # Hashes are great things really
  trans = {'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50,
    'C' => 100, 'D' => 500, 'M' => 1000}

  # Reason for going over it in reverse will be clear shortly
  rom = rom.reverse
  int = 0
  prev = 0

  # So, split("") gets us an array of characters, .each gives us the loop
  rom.split("").each do |roman|
    # We grab the integer value
    num = trans[roman.upcase]
    # Check to make sure it was a valid one
    if !num
      puts "That is not a valid roman numeral"
      return
    end

    # Now, if the num we got is smaller than the prev, then since we're
    # reading it backwards, that means it's one of the combos, and we
    # subtract it instead of adding. Cleanest way is to just turn it negative
    if num < prev
      num *= -1
    else
      # If it's not a combo, then num is our new prev
      prev = num
    end
    # Add it onto our total
    int += num
  end

  # The return is technically unneeded since Ruby returns the last thing that
  # was evaluated anyway, but it's a bit more clear with it
  return int
end

# Rest is just input grabbing and output sending
puts "Hello, please give a roman numeral between I and MMM:"
input = gets.chomp
puts input + " in integer form is: " + romanToInt(input).to_s
