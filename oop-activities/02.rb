###### Create your own object with attributes and methods
class Company
  # attr_accessor :company_name, :employee_count, :business_rating
  attr_reader :company_name, :country, :employee_count, :business_rating
  def initialize(company_name, country, employee_count, business_rating)
    @company_name = company_name
    @country = country
    @employee_count = employee_count
    @business_rating = business_rating
  end

  def company_name=(new_company_name)
    @company_name = company_name
  end

  def company_info
    puts "Company name: #{@company_name}"
    puts "Country: #{@country}"
    puts "Employee count: #{@employee_count}"
    puts "Business rating: #{@business_rating}"
    puts "Company growth percentage: #{company_growth_percentage/100.round(2)}"
  end

  def company_growth
    @employee_count += rand(40..100)
    @business_rating += rand(0.5..1);
    @business_rating = @business_rating.round(2)
  end

  def company_downfall
    @employee_count -= rand(40..100)
    @business_rating -= rand(0.5..1);
    @business_rating = @business_rating.round(2)
  end

  private

  def company_growth_percentage
    return @employee_count * 0.1
  end

  def upd_employee_count=(new_employee_count)
    @employee_count = employee_count
  end
end

company1 = Company.new("Google", "USA", 1000, 4.5)
puts "Year 1"
company1.company_info
company1.company_growth
puts "Year 2"
company1.company_info
company1.company_downfall
puts "Year 3"
company1.company_info