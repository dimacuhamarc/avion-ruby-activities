#Polymorphism by Inheritance

class Property
  def initialize(width, length, price)
    @width = width
    @length = length
    @price = price
  end

  def for_sale 
    return "For sale: #{@price}"
  end
end

class Land < Property
  def initialize(width, length, price)
    super(width, length, price)
  end

  def for_sale
    return "For sale: #{@price} (Land) | Price per area: #{price_per_area}"
  end

  private

  def area
    return @width * @length
  end

  def price_per_area
    return @price / area
  end
end

class House < Property
  def initialize(color, sqm, price)
    @color = color
    @sqm = sqm
    @price = super(nil,nil,price)
  end

  def for_sale
    return "For sale: #{@price} (House) #{@color} | Price per area: #{price_per_sqm}"
  end

  private

  def price_per_sqm
    return @price / @sqm *2
  end
end

land1 = Land.new(55, 70, 4750000)
puts land1.for_sale

house1 = House.new("Red", 250, 5510000)
puts house1.for_sale
