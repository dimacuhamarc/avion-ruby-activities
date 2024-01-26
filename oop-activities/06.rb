#Create an object that implements Abstraction

class House
  def initialize(color, sqm, price_per_sqm)
    @color = color
    @sqm = sqm
    @price_per_sqm = price_per_sqm
  end

  def house_info
    puts "Color: #{@color}"
    puts "Area: #{@sqm}"
    puts "Price per area: #{@price_per_sqm}"
    puts "Total price: #{total_price}"
  end

  private

  def total_price
    return @sqm * @price_per_sqm
  end
end

house1 = House.new("Red", 255, 5510)
house1.house_info