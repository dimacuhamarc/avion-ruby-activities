#Create an object that implements Encapsulation
class Land_Property
  def initialize(width, length, price)
    @width = width
    @length = length
    @price = price
  end

  def area 
    return @width * @length
  end

  def price_per_area
    return @price / area
  end
end

land1 = Land_Property.new(10, 20, 1000000)
puts "Land 1"
puts "Area: #{land1.area}"
puts "Price per area: #{land1.price_per_area}"

land2 = Land_Property.new(20, 30, 2000000)
puts "Land 2"
puts "Area: #{land2.area}"
puts "Price per area: #{land2.price_per_area}"