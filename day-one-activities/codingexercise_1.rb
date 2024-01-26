# Coding Exercise : A Square of Squares

# puts 'Enter a number: '
# user_input_number = gets.to_i

# is_squared = false
# i = 0

# if user_input_number < 0
#   is_squared = false
# end

# while i * 1 <= user_input_number
#   if i * i == user_input_number
#     is_squared = true
#     break
#   end
#   i += 1
# end

# puts is_squared

def square_of_squares(num)

  is_squared = false
  i = 0
  num = num.to_i
  return is_squared if num < 0 # if negative value is passed
  
  while i <= num
    if i * i == num
      return is_squared = true
      break
    end
    i += 1
  end
  is_squared
end

# puts 'Enter a number: '
# user_input_number = gets.to_i
# puts square_of_squares(user_input_number)


puts square_of_squares(-25)
# => false
puts square_of_squares(0)
# => true
puts square_of_squares(3)
# => false
puts square_of_squares(4)
# => true
puts square_of_squares(25)
# => true
puts square_of_squares(26)
# => false