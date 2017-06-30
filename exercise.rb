class BankAccount

    def initialize(balance, interest_rate = 0)
      @balance = balance
      @interest_rate = interest_rate
    end

    def deposit(amount)
      new_amount = amount + @balance
      puts "Your balance after depositing $#{amount} is $#{new_amount}"
    end

end


my_account = BankAccount.new(1000)

my_account.deposit(150)
