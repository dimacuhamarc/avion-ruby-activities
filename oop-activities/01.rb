

def find_smallest_int(arr)
  smallest_int = arr[0]
  arr.each do |x|
    smallest_int = (smallest_int > x) ? x : smallest_int

    # if (smallest_int > x) ? smallest_int = x : smallest_int; end
    
    # if smallest_int > x
    #   smallest_int = x
    # end
  end
  return smallest_int
end

arr = [34, 15, 88, 2]
puts find_smallest_int(arr)

arr = [25, 8, -8, 1]
puts find_smallest_int(arr)