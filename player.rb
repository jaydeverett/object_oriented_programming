class Player

  attr_reader :lives

  def initialize(gold_coins, health_points, lives)
    @gold_coins = gold_coins
    @health_points = health_points
    @lives = lives

    #default values
    @lives = 5
    @gold_coins = 0
    @health_points = 10
  end

  def level_up() # <--- () unnecessary
  puts "Leveling up!"
    return @lives += 1
  end


  def collect_treasure()
    @gold_coins += 1
    if @gold_coins % 10 == 0
      level_up()
    end
  end

  def do_battle(damage)
  end



end


player1 = Player.new(@gold_coins, @health_points, @lives)
 player1.collect_treasure
 player1.collect_treasure
 player1.collect_treasure
 player1.collect_treasure
 player1.collect_treasure
 player1.collect_treasure
 player1.collect_treasure
 player1.collect_treasure
 player1.collect_treasure
 player1.collect_treasure
 player1.collect_treasure
puts player1.lives
