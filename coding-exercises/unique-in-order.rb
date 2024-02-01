## Iteration 1
# def unique_in_order(string)
#   string = string.split("")
#   temp = []
#   string.each do |letter|
#     temp.last == letter ? next : temp.push(letter)
#   end
#   temp
# end

## Iteration 2
# def unique_in_order(input)
#   input = input.split("") if input.class == String
#   temp = []
#   input.each do |item|
#     temp[temp.length-1] == item ? next : temp.push(item)
#   end
#   temp
# end

## Iteration 3
# def unique_in_order(input)
#   input.class == String ? input = input.split("") : input
#   input.each_with_object([]) { |item, temp| temp.last == item ? next : temp.push(item) }
# end

## Iteration 4 Final
def unique_in_order(input)
  input.class == String ? input = input.split("") : input
  temp = []
  input.each do |item|
    temp[temp.length-1] == item ? next : temp.push(item)
  end
  return temp
end

p unique_in_order('AAAABBBCCDAABBB')
p unique_in_order('ABBCcAD')
p unique_in_order([1,2,2,3,3])