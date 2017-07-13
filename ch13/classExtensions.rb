=begin
Not much to say on this one, it's mainly copy past. Only real change is using
exit in toRoman to deal with invalid integers.
=end

class Array
  def shuffle
    rShuffle(self, [])
  end

  def rShuffle(unshuffled, shuffled)
    if unshuffled.length <= 0
      return shuffled
    end

    rIndex = rand(unshuffled.length)
    shuffled.push unshuffled[rIndex]
    unshuffled.delete_at(rIndex)

    rShuffle(unshuffled, shuffled)
  end
end

class Integer
  def factorial
    if self <= 1
      1
    else
      self * (self - 1).factorial
    end
  end

  def toRoman
    if self <= 0 || self > 3000
      puts 'Only works on numbers between 1 and 3000!'
      exit
    end

    ints = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
    romNums = ["M","CM","D","CD","C","XC","L","XL","X","IX","V","IV","I"]
    string = ''
    remainder = self

    ints.zip(romNums).each do |int, romNum|
      quotient = remainder / int
      string += romNum * quotient
      remainder = remainder % int
    end

    string
  end
end

puts 3.factorial
puts 1945.toRoman
