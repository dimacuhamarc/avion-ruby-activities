def gimme(input_array)
  max = input_array.max
  min = input_array.min

  input_array.each do |num|
    (num != max && num != min) ? (return input_array.index(num)) : next
  end
end

puts gimme([2, 3, 1]) # 0
puts gimme([5, 10, 14]) # 1
puts gimme([1, 4, 3]) # 2