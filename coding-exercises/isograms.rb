# ISOGRAMS

# An isogram is a word that has no repeating letters, consecutive or non-consecutive. Implement a function that determines
# whether a string that contains only letters is an isogram. Assume the empty string is an isogram. Ignore letter case.

# Tip: Output must be boolean

# Note: Avoid using of .uniq method


## iteration 1
# def is_isogram(string)
#   string.downcase
#   string = string.split("")
#   string.each do |letter|
#     string.count(letter) > 1 ? (return false) : next
#   end
#   return true
# end

## iteration 2
# def is_isogram(string)
#   string = string.downcase.split("")
#   temp = []
#   string.each do |letter|
#     temp.include?(letter) ? (return false) : temp.push(letter)
#   end
#   return true
# end

## iteration 3
def is_isogram(string)
  string = string.downcase.split("")
  temp = []
  string.each do |letter|
    temp.each do |temp_item|
      temp_item == letter ? (return false) : next
    end
    temp.push(letter)
  end
  true
end

p is_isogram("maarc")
p is_isogram("Dermatoglyphics")
p is_isogram('Dermatoglyphics')
p is_isogram("isogram")
p is_isogram("documentary")

p is_isogram("aba")
p is_isogram("moOse")
p is_isogram("isIsogram")
