class Person
  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def birthday
    @age += 1
  end

  def introduce
    puts "Hi, I'm #{first_name}"
  end
end

class Student < Person
  def introduce
    puts "Hello, I am a student"
  end
end

john = Student.new("John","Doe",18)
john.introduce

class Payment
  def type(payment)
    payment.type
  end
end

class FullyPaid
  def type
    puts "Fully Paid Payment"
  end
end

class Installment
  def type
    puts "Installment Payment"
  end
end

customer_payment = Payment.new
full = FullyPaid.new
customer_payment.type(full)

installment = Installment.new
customer_payment.type(installment)