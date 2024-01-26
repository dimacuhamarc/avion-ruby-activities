# Number 1
puts '######### Number 5 #########'
arr = [1,3,5,7,9,11]
puts 'Enter a number: '
user_input_number = gets

puts arr.include?(user_input_number.to_i)

# Number 2
puts '######### Number 6 #########'
puts 'Enter a number: '
user_input_number2 = gets.to_i

if user_input_number2 >= 0 && user_input_number2 <= 50
  puts 'between 0 and 50'
elsif user_input_number2 >= 51 && user_input_number2 <= 100
  puts 'between 50 and 100'
elsif user_input_number2 > 100
  puts 'above 100'
end

# Number 3

is_looped = true
puts 'enter an input:'

while is_looped
  user_input = gets.chomp.upcase
  if user_input == 'STOP'
    is_looped = false
  end
end

# Number 4
arr = [ 6, 3, 1, 8, 4, 2, 10, 65, 102 ]
new_arr = []
arr.each do |n|
  if n % 2 == 0
    new_arr.push(n)
  end
end

puts new_arr
