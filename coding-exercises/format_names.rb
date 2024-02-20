# # Coding Exercise: Format a string of names like 'Bart, Lisa &
# # Maggie'
# # .

# # FORMAT A STRING OF NAMES LIKE 'BART, LISA & MAGGIE'.

# # Given: an array containing hashes of names
# # Return: a string formatted as a list of names separated by commas except for the last two names, which should be separated
# # by an ampersand.

# Note: all the hashes are pre-validated and will only contain A-
# Z, a-z,

# '-' and '.'.

# 'Bart, Lisa & Maggie'

# # Example:  list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])

# def list(names)
#   case names.length
#   when 0
#     ''
#   when 1
#     names[0][:name]
#   when 2
#     "#{names[0][:name]} & #{names[1][:name]}"
#   else
#     formatted_names = names[0..-2].map { |hash| hash[:name] }.join(', ')
#     output = "#{formatted_names} & #{names[-1][:name]}"
#   end
#   p output
# end

def list(names)
  return '' if names.empty?
  names_str = names.map { |hash| hash[:name] }.join(', ')
  names_str.sub!(/,([^,]+)$/, ' &\1')
  p names_str
end

list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'}, {name: 'Homer'} ]) # 'Bart, Lisa & Maggie'