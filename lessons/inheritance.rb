# Imagine HR Application

class Employee
  attr_accessor :first_name, :last_name, :age, :perfomance_rating
  def initialize(first_name, last_name, age, perfomance_rating=0)
    @first_name = first_name
    @last_name = last_name
    @age = age
    @perfomance_rating = perfomance_rating
  end

  def resign
    puts "Rendering 30 days..."
  end

end

module OvertimePayable
  def calculate_overtime(number_of_hours)
    base_salary * number_of_hours
  end
end


class CTO < Employee
  attr_accessor :equity
  def initialize(first_name, last_name, age, perfomance_rating=0, equity)
    super(first_name,last_name,age,perfomance_rating)
    @equity = equity
  end
end



john = CTO.new("John","Young",25,90,30)
puts john.equity


class SoftwareEngineer < Employee
  include OvertimePayable
  def write_code
    puts "Writing Code..."
  end
end

class Manager < Employee
  def evaluate_employee(employee, perfomance_rating)
    puts "Evaluating Employee..."
    employee.perfomance_rating = perfomance_rating
  end
end

abdul = Employee.new("Abdul", "Magundacan", 32)
abdul.resign

marc = SoftwareEngineer.new("Marc","Dimacuha",21)
marc.write_code

tony = Manager.new("Tony","Stark", 40)
tony.evaluate_employee(marc,20)

puts marc.perfomance_rating