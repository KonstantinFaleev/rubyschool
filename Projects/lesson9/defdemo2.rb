def get_password
  print 'Type password'
  gets.chomp * 3
end

pass = get_password
puts "Был введен пароль: #{pass}"