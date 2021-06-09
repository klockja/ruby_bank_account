class BankAccount
  @@accounts = 0

  def initialize
    @account_num = generate_account_num
    @checking_balance = 0
    @savings_balance = 0
    @interest_rate = 0.01
    @@accounts += 1
  end

  def accounts
    return @@accounts
  end

  #Checking Methods

  def checking_balance
    return @checking_balance
  end

  def checking_deposit(amount)
    @checking_balance += amount
  end

  def checking_withdraw(amount)
    @checking_balance -= amount
  end

  #Savings Methods

  def savings_balance
    return @savings_balance
  end

  def savings_deposit(amount)
    @savings_balance += amount
  end

  def savings_withdraw(amount)
    if(amount < @savings_balance)
      @checking_balance -= amount
    else
      puts "Error: Insufficient funds."
    end
  end

  def total
    return (@checking_balance + @savings_balance)
  end

  def account_information
    puts "Account #@account_num"
    puts "Checking Balance: " + checking_balance.to_s
    puts "Savings Balance: " + savings_balance.to_s
    puts "Total: " + (total).to_s
    puts "Interest Rate: " + @interest_rate.to_s
  end

  private
  def generate_account_num
    random_num = rand 1..9999999999
    return random_num
  end
end

puts acc = BankAccount.new
acc.savings_deposit(100)
puts acc.savings_balance
acc.savings_withdraw(120)
acc.checking_deposit(1824)
puts acc.checking_balance
acc.checking_withdraw(800)
puts acc.checking_balance
puts acc.total
puts acc.accounts
acc.account_information
