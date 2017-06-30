class Player

  attr_reader :lives
  attr_reader :health_points

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
    puts "You took #{damage} damage."
    new_health_points = @health_points - damage
    if new_health_points < 1
      puts "You lost a life!"
      @lives - 1
      restart()
    end
  end

  def restart



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
puts "lives: #{player1.lives}"
player1.do_battle(11)
puts "lives: #{player1.lives}"
