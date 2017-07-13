=begin
The equation takes a bit to work through, but just realize that we're adding
12 overall, and since we're working in mod 12 that has the effect of bringing
0 to 12, 1 through 12 stay where they are, and 13 through 23 go to 1 through
11. Kind of confusing, I know, so here's a chart:

starting  add 11  mod 12  add 1
   00       11      11     12   <- This would be midnight, so 12 chimes

   01       12      00     01   <- This set stays where it is (1am - 12pm)
   02       13      01     02
   03       14      02     03
   04       15      03     04
   05       16      04     05
   06       17      05     06
   07       18      06     07
   08       19      07     08
   09       20      08     09
   10       21      09     10
   11       22      10     11
   12       23      11     12

   13       24      00     01   <- This set takes 1-11pm to their respective
   14       25      01     02      chimes
   15       26      02     03
   16       27      03     04
   17       28      04     05
   18       29      05     06
   19       30      06     07
   20       31      07     08
   21       32      08     09
   22       33      09     10
   23       34      10     11

The chimes themselves we do through a simple .times |do|
=end

def gfClock(&block)
  chimes = (Time.new.hour + 11) % 12 + 1

  chimes.times do
    block.call
  end
end
