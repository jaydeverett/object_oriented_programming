class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end


  def eats_at()
    if @meal_time < 6
      puts "#{@meal_time} AM"
    else
      puts "#{@meal_time} PM"
    end
  end

  def meow()
    puts "Hi! I'm #{@name}. I eat #{@preferred_food} and I like to eat
    at #{@meal_time - 12} sharp!"
  end


end

cat1 = Cat.new("Sparkles", "tuna", 2)
cat2 = Cat.new("Arnold", "salmon", 22)

# cat2.eats_at
# cat1.eats_at

cat1.meow
cat2.meow
