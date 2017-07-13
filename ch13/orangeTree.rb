class OrangeTree
  # Our tree is planted and we initialize our instance variables
  def initialize
    puts "You've planted the most beautiful orange tree sapling"
    @height = 2 + rand(4)
    @age = 1
    @oranges = 0
  end

  def oneYearPasses
    # Gets older
    @age += 1
    # Dies at 10
    if @age < 10
      # Semi-random growth seemed like fun
      growth = 2 + rand(2)
      @height += growth
      # The weird thing in the #{} is a ternary operator, google if curious!
      puts "A year passes, and your tree grows #{growth == 4 ? "a staggering #{growth}" : "#{growth}"} feet to reach #{@height} feet in height"
      if @age == 4
        # Number of oranges should depend on age, peaking in the middle
        @oranges = 3 + rand(5)
        puts "Look! Your tree sprouted #{@oranges} oranges! It's really growing up isn't it?"
      elsif @age > 4 && @age < 8
        @oranges = 8 + rand(10)
        puts "Your tree sprouted #{@oranges} oranges. It truly has grown up to be a wonderful tree."
      elsif @age >= 8
        @oranges = 2 + rand(3)
        puts "Your tree sprouted #{@oranges} oranges. Looks like it's starting to age..."
      end
    else
      # We exit on death
      puts "A year passes, and while it led a good life, its time has come. Your tree withers and dies."
      exit
    end
  end

  # Returns height
  def height
    puts "Your tree is #{@height} feet tall!"
  end

  # Returns age
  def age
    puts "Your tree is #{@age} years old!"
  end

  # Returns number of oranges
  def orangeCount
    puts "Your tree has #{@oranges} oragnes hanging from its branches."
  end

  # Picks an orange if there's one to be picked. Message otherwise changes
  # depending on if it's sprouted oranges yet or not
  def pickOrange
    if @oranges == 0
      if @age < 4
        puts "Your tree has yet to sprout any fruit"
      else
        puts "There are no more oranges on your tree, you ate them all..."
      end
    else
      puts "You grab an orange from your tree. It's delicious and leaves you craving more..."
      @oranges -= 1
    end
  end
end

tree = OrangeTree.new
tree.pickOrange
tree.oneYearPasses
tree.height
tree.oneYearPasses
tree.age
tree.oneYearPasses
tree.pickOrange
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.age
tree.oneYearPasses
