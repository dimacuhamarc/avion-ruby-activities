#Polymorphism by duck typing
class Vehicle
  attr_reader :name, :price, :color, :quality
  def initialize(name, price, color, quality)
    @name = name
    @price = price
    @color = color
    @quality = quality
  end

  def type(vehicle)
    vehicle.type
  end
  
end
class Car
  attr_reader :name, :price, :color, :quality, :type
  def initialize(name, price, color, quality, type)
    @name = name
    @price = price
    @color = color
    @quality = quality
    @type = "Car"
  end
end

class Motorcycle
  attr_reader :name, :price, :color, :quality, :type
  def initialize(name, price, color, quality, type)
    @name = name
    @price = price
    @color = color
    @quality = quality
    @type = "Motorcycle"
  end
end

def reselling_price(vehicle)
  if vehicle.class == Car
    return vehicle.price * 0.8
  elsif vehicle.class == Motorcycle
    return vehicle.price * 0.5
  end
end

def vehicle_info(vehicle)
  puts "Name: #{vehicle.name}"
  puts "Price: #{vehicle.price}"
  puts "Color: #{vehicle.color}"
  puts "Quality: #{vehicle.quality}"
  puts "Type: #{vehicle.type}"
end

car = Car.new("Toyota", 890000, "Red", "Brand New", "Car")
motorcycle = Motorcycle.new("Honda", 50000, "Black", "Second Hand", "Motorcycle")

puts "Vehicle Info"
puts "------------"
vehicle_info(car)
puts "Reselling price for #{car.name} is #{reselling_price(car)}"
puts "------------"
vehicle_info(motorcycle)
puts "Reselling price for #{motorcycle.name} is #{reselling_price(motorcycle)}"
puts "------------"