
# def disemvowel(str)
#   vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
#   str = str.split("").select { |letter| !vowels.include?(letter) }
#   str = str.join("")
# end

def disemvowel(str)
  # vowels = "aeiouAEIOU".split("")
  vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
  str = str.split("")
  new_str = []

  str.each do |letter|
    is_vowel = false
    vowels.each do |vowel|
      letter == vowel ? is_vowel = true : next
    end
    new_str.push(letter) unless is_vowel
  end
  new_str = new_str.join("")
end

p disemvowel("this website is for Losers LOL!")