class BankAccount

    def initialize(balance, interest_rate = 1.07)
      @balance = balance
      @interest_rate = interest_rate
    end

    def deposit(amount)
      new_amount = amount + @balance
      puts "Your new balance after depositing $#{amount} is $#{new_amount}."
    end

    def withdraw(amount)
      new_amount = @balance - amount
      puts "Your new balance after withdrawing $#{amount} is $#{new_amount}."
    end

    def gain_interest()
      amount_with_interest = @balance * @interest_rate
      puts "Your new balance after interest is $#{amount_with_interest}."
    end

end


my_account = BankAccount.new(1000)

my_account.deposit(150)

my_account.withdraw(150)

my_account.gain_interest
