
def reverse_alternate(string)
  string.split(' ').map.with_index do |word, index|
    index.odd? ? word.reverse : word
  end.join(' ')
end

puts reverse_alternate('hello world').inspect
puts reverse_alternate('hello world this is a test').inspect
puts reverse_alternate('Did it work?').inspect