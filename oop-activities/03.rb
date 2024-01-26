class Profile
  # attr_reader :full_name, :age, :address, :work
  # attr_writer :full_name, :age, :work
  def initialize(full_name, age, address, work)
    @full_name = full_name
    @age = age
    @address = address
    @work = work
  end

  def full_name
    return @full_name
  end

  def full_name=(new_full_name)
    @full_name = new_full_name
  end

  def age
    return @age
  end

  def age=(new_age)
    @age = new_age
  end

  def address
    return @address
  end

  def work
    return @work
  end

  def work=(new_work)
    @work = new_work
  end
end

my_profile = Profile.new('Juan', 18, 'Bulacan', 'Instructor')

puts my_profile.full_name
my_profile.full_name = 'Juan Cruz'

my_profile.age = 25
my_profile.work = 'Software Engineer'

puts my_profile.full_name
puts my_profile.age
puts my_profile.work
puts my_profile.address
