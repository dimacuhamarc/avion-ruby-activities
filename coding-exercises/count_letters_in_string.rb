
def letter_count(str)
  str.downcase.gsub(/[^a-z]/, '').split('').sort.each_with_object(Hash.new(0)) { |letter, hash| hash[letter.to_sym] += 1 }
end

puts letter_count('arithmetics')
puts letter_count('ginger bread man')
