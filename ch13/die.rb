=begin
Relatively simple implementation. Checks for invalids and prints out error
message. Otherwise we just set @showing to the input.
=end

class Die
  def initialize
    roll
  end

  def roll
    @showing = 1 + rand(6)
  end

  def showing
    @showing
  end

  def cheat(num)
    if num < 1 || num > 6
      puts "The laws of physics don't (yet) bend to your will..."
    else
      @showing = num
    end
  end
end

die = Die.new
puts die.showing
die.roll
puts die.showing
die.cheat(7)
puts die.showing
die.cheat(6)
puts die.showing
