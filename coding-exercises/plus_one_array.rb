
def plus_one_array(arr)
  return nil unless arr.is_a?(Array)
  return nil if arr.empty? || arr.any? { |num| num < 0 || num > 9 }
  
  (arr.join.to_i + 1).to_s.split('').map(&:to_i)
end

puts plus_one_array([2, 3, 9]).inspect
puts plus_one_array([4, 3, 2, 5]).inspect
puts plus_one_array('asdf').inspect
puts plus_one_array([2, 3, 10]).inspect
puts plus_one_array([]).inspect