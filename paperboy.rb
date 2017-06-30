class Paperboy

  attr_reader :earnings

  def initialize(name, experience, earnings)
    @name = name
    @experience = experience
    @earnings = earnings
    @quota = quota
  end

  def quota()
    quota = 50 + @experience/2
  end

  def deliver(start_address, end_address)
    total_houses = end_address - start_address

    new_experience = total_houses
    @experience =  @experience + new_experience


    new_earnings = total_houses * 0.25
    @earnings = @earnings + new_earnings

    if new_experience < @quota
      @earnings = @earnings - 2.0
    elsif new_earnings >= @quota
      over_quota = new_experience - @quota
      @earnings = @earnings + (over_quota * 0.25)
    end


  end




  def report()
    puts "I'm #{@name}, I've delivered #{@experience} papers and I've earned #{@earnings} so far!"
  end

end

paperboy1 = Paperboy.new("Billy", 0, 0)

paperboy1.deliver(50, 75)
paperboy1.report
