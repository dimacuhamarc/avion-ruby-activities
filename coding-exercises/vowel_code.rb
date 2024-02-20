
code = {
  'a' => 1,
  'e' => 2,
  'i' => 3,
  'o' => 4,
  'u' => 5
}

def encode(string, code)
  split_string = string.split('')
  split_string.each do |letter|
    code.has_key?(letter) ? split_string[split_string.index(letter)] = code[letter] : next
  end
  split_string.join('')
end

def decode (string, code)
  split_string = string.split('')
  split_string.each do |letter|
    code.has_value?(letter.to_i) ? split_string[split_string.index(letter)] = code.key(letter.to_i) : next
  end
  split_string.join('')
end

puts ""
puts "encoded =>"
puts encode("How are you today, Marc?", code)
puts ""
puts "decoded =>"
puts decode("H4w 1r2 y45 t4d1y, M1rc?", code) 
puts ""

