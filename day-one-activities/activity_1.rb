# Number 1
puts '######### Number 1 #########'
my_array = [1,2,3,4,5,6,7,8,9,10]
my_array.each { |n| puts "Number is: #{n}"}

# Number 2
puts '######### Number 2 #########'
h = {a:1,b:2,c:3,d:4}
h.merge!(e:5)
puts h
puts h[:b]

# Number 3
puts '######### Number 3 #########'
def merge_contact_data(contact_data, contacts)
  contact_data.each_with_index do |data, index|
    email, address, phone = data
    contact_name = contacts.keys[index]

    contacts[contact_name] = {
      email: email,
      address: address,
      phone: phone
    }
  end
end
contact_data = [
  ['john@email.com', '123 Main st.', '555-123-4567'],
  ['avion@email.com', '404 Not Found Dr.', '123-234-3456']
]

contacts = { "John Cruz": {}, "Avion School": {} }

merge_contact_data(contact_data, contacts)
puts contacts
# Number 4
puts 'what is your age?'
user_age = gets
puts "In 10 years you will be: \n" + (user_age.to_i + 10).to_s
puts "In 20 years you will be: \n" + (user_age.to_i + 20).to_s
puts "In 30 years you will be: \n" + (user_age.to_i + 30).to_s
puts "In 40 years you will be: \n" + (user_age.to_i + 40).to_s

# Number 5
puts '######### Number 5 #########'
arr = [1,3,5,7,9,11]
puts 'Enter a number: '
user_input_number = gets

puts arr.include?(user_input_number.to_i)
# Number 6
puts '######### Number 6 #########'
puts 'Enter a number: '
user_input_number2 = gets.to_i

if user_input_number2 >= 0 && user_input_number2 <= 50
  puts 'between 0 and 50'
elsif user_input_number2 >= 51 && user_input_number2 <= 100
  puts 'between 50 and 100'
elsif user_input_number2 > 100
  puts 'above 100'
end