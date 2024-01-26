#Polymorphism by duck typing

class Car
  attr_reader :name, :price, :color, :quality, :doors
  def initialize(name, price, color, quality, doors)
    @name = name
    @price = price
    @color = color
    @quality = quality
    @doors = doors
  end
end

class Motorcycle
  attr_reader :name, :price, :color, :quality
  def initialize(name, price, color, quality)
    @name = name
    @price = price
    @color = color
    @quality = quality
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
  if vehicle.class == Car
    puts "Doors: #{vehicle.doors}"
  end
end

car1 = Car.new("Toyota", 1000000, "Red", "Brand new", 4)
motorcycle1 = Motorcycle.new("Honda", 500000, "Blue", "Second Hand")

puts "Vehicle 1"
vehicle_info(car1)
puts "Reselling price: #{reselling_price(car1)}"
puts "\n"
puts "Vehicle 2"
vehicle_info(motorcycle1)
puts "Reselling price: #{reselling_price(motorcycle1)}"