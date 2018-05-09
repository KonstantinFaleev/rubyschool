phonebook = {}

loop do

  print 'Enter name(Enter to stop)'
  name = gets.strip.capitalize

  if name == ''
    break
  end

  print 'Enter your number'
  phone_number = gets.strip

  phonebook[name] = phone_number

end

#puts phonebook
#puts phonebook['Mike']

phonebook.each do |key, value|
  puts "Name: #{key} Phone_number: #{value}"
end