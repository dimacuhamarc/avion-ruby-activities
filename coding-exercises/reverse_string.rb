
def reverse(string)
  string_arr = string.split('')
  reversed_string = []

  string_arr.each do |letter|
    reversed_string.unshift(letter)
  end

  return reversed_string.join('')
end

puts reverse("Hello") # olleH