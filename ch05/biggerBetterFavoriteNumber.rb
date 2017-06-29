# We ask for the number, add one to it, and suggest it as a better one

puts 'Hey there! What\'s your favorite number?'
favNum = gets.chomp.to_i

betterNum = favNum + 1

puts 'Hmm... ' + favNum.to_s + ' is ok I guess, but don\'t you think ' + betterNum.to_s + ' would make for a bit of better favorite number?'
