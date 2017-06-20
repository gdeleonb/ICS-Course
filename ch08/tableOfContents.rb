# We begin by making a 2D array where each inner array has a chapter name, and
# the corresponding page number. Then I set the width I want to use everywhere
# as a variable to avoid mistakes, start off my indexing variable
# 'currentChapter' at 1, and begin. The title could've been stored as a
# variable, but it seemed easier to just type it out since it won't be reused.
# For the chapters and pages, I used a .each loop which is essentially a for
# loop. I then create the two parts of the entry, do the justifications and
# string concatenation, and print out the entry. Finally, I increment the
# 'currentChapter' using the very handy '+=' notation, and let it loop. 

contents = [['Getting Started', '01'],
            ['Numbers', '09'],
            ['Letters', '13']]

width = 60
currentChapter = 1

puts 'Table of Contents'.center(width)
puts

contents.each do |i|
  chapter = 'Chapter ' + currentChapter.to_s + ': ' + i[0]
  page = 'page ' + i[1]

  entry = chapter.ljust(width/2) + page.rjust(width/2)
  puts entry

  currentChapter += 1
end
