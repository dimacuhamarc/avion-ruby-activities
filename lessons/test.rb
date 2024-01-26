

# puts 'enter an input:'
# while true
#   user_input = gets.chomp.upcase
#   if user_input == 'STOP'
#     break
#   end
# end

# Number 4
arr = [ 6, 3, 1, 8, 4, 2, 10, 65, 102 ]
new_arr = []
arr.each do |n|
  if n % 2 == 0
    new_arr.push(n)
  end
end

p new_arr