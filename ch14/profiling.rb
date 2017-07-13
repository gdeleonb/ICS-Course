=begin
Simple adding of a value to be toggled on and off works. You an be cleverer
and make it a commandline argument, but that's a little out of scope so I
didn't do it for the solution.
=end

def profiling(description, &block)
  profile? = true

  if profile?
    startTime = Time.new
    block.call
    duration = Time.new - startTime
    puts "#{description}: #{duration} seconds"
  else
    block.call
  end
end
