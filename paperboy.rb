class Paperboy

  attr_reader :earnings

  def initialize(name, experience, earnings)
    @name = name
    @experience = experience
    @earnings = earnings
    @quota = quota
  end

  def quota()
    return 50 + @experience/2
  end

  def deliver(start_address, end_address)
    total_houses = end_address - start_address

    new_experience = total_houses
    @experience =  @experience + new_experience


    total_houses * 0.25 = new_earnings
    @earnings = @earnings + new_earnings
    if new_earnings < @quota
      @earnings = @earnings - 2.0
    elsif new_earnings >= @quota
      
    end


  end




  def report()
    puts "I'm #{@name}, I've delivered #{@experience} papers and I've earned #{@earnings} so far!"
  end

end

paperboy1 = Paperboy.new("Billy", @experience, @earnings)

paperboy1.deliver(1, 10)
paperboy1.report
