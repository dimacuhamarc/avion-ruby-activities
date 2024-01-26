class Player
  attr_reader :first_name, :last_name, :rating
  attr_writer :first_name, :last_name, :rating
	def initialize(first_name, last_name, rating=0)
		@first_name = first_name
		@last_name = last_name
		@rating = rating
	end

  def get_rating
    return @rating
  end

  def set_rating=(new_rating)
    @rating = new_rating
  end

  def dribble
    puts "#{@first_name} is dribbling..."
  end

  private

  def helper_method
    # for internal usage only
  end
end

kobe = Player.new('Kobe','Bryant',85)

puts kobe.class

text = 'hello'
puts text.class

puts kobe.rating = 75


