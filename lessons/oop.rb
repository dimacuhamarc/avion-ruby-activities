# @@class variable -> mostly unused
# @instance variable

class Transaction
  @@total_transactions = 0
  attr_accessor :amount
  def initialize(amount)
    @amount = amount
    @@total_transactions += 1
  end

  def self.count
    @@total_transactions
  end
end

transaction_1 = Transaction.new(1000)
transaction_2 = Transaction.new(1000)
transaction_3 = Transaction.new(1000)
transaction_4 = Transaction.new(1000)

puts Transaction.count