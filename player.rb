class Player

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
    return @lives += 1
  end


  def collect_treasure()
    return @gold_coins += 1
    if @gold_coins % 10 == 0
      level_up()
    end
  end

  def do_battle(damage)
  end



end


player1 = Player.new(@gold_coins, @health_points, @lives)
puts player1.collect_treasure
